###### Class com.ironsource.mediationsdk.BannerManager (com.ironsource.mediationsdk.BannerManager)
.class public Lcom/ironsource/mediationsdk/BannerManager;
.super Lcom/ironsource/mediationsdk/AbstractAdUnitManager;
.source "BannerManager.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/BannerApi;
.implements Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;
.implements Lcom/ironsource/mediationsdk/MediationInitializer$OnMediationInitializationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;
    }
.end annotation


# static fields
.field private static final LOAD_FAILED_COOLDOWN_IN_MILLIS:J = 0x3a98L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private isFirstLoad:Z

.field private isReloading:Z

.field private mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

.field private mDidCallLoad:Z

.field private mDidFinishToInitBanner:Z

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastLoadFailTimestamp:J

.field private mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

.field private mLoadInProgress:Z

.field private mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    .line 36
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    .line 37
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    .line 56
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IronSourceBannerHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->isFirstLoad:Z

    .line 60
    return-void
.end method

.method static synthetic access$002(Lcom/ironsource/mediationsdk/BannerManager;J)J
    .registers 4
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerManager;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLastLoadFailTimestamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/ironsource/mediationsdk/BannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/ironsource/mediationsdk/BannerManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/mediationsdk/BannerManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->resetLoadRound()V

    return-void
.end method

.method private declared-synchronized changeStateToInitiated()V
    .registers 5

    .prologue
    .line 335
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 336
    .local v0, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_2b

    .line 337
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v2, v3, :cond_2b

    .line 338
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v2, v3, :cond_7

    .line 339
    :cond_2b
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_31

    goto :goto_7

    .line 335
    .end local v0    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1

    .line 341
    :cond_34
    monitor-exit p0

    return-void
.end method

.method private innerDestroy()V
    .registers 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v0, :cond_9

    .line 367
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->clearSmash()V

    .line 369
    :cond_9
    return-void
.end method

.method private declared-synchronized loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/BannerSmash;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 8
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;
    .param p2, "bannerLayout"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    .line 377
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_2
    invoke-static {p1, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_33

    move-result-object v0

    .line 380
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz p2, :cond_1b

    :try_start_8
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 381
    const-string v3, "placement"

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_2e
    .catchall {:try_start_8 .. :try_end_1b} :catchall_33

    .line 386
    :cond_1b
    :goto_1b
    :try_start_1b
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v3, 0x192

    invoke-direct {v2, v3, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 387
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 389
    invoke-virtual {p1, p2}, Lcom/ironsource/mediationsdk/BannerSmash;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_33

    .line 390
    monitor-exit p0

    return-void

    .line 382
    .end local v2    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_2e
    move-exception v1

    .line 383
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2f
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_33

    goto :goto_1b

    .line 377
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_33
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized removeScheduledLoadFailedCallback()V
    .registers 3

    .prologue
    .line 320
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    if-eqz v0, :cond_10

    .line 321
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    .line 322
    :cond_10
    monitor-exit p0

    return-void

    .line 320
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resetLoadRound()V
    .registers 3

    .prologue
    .line 326
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    .line 328
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 330
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    if-eqz v0, :cond_15

    .line 331
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_17

    .line 332
    :cond_15
    monitor-exit p0

    return-void

    .line 326
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendMediationLevelLoadEvent(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .registers 8
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    .line 223
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 226
    .local v1, "data":Lorg/json/JSONObject;
    const/4 v0, 0x0

    .line 228
    .local v0, "bannerSizeData":I
    if-eqz p1, :cond_10

    .line 229
    :try_start_8
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 231
    :cond_10
    const-string v4, "bannerAdSize"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    const-string v4, "placement"

    invoke-virtual {v1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1a} :catch_29

    .line 237
    :goto_1a
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x192

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 238
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 239
    return-void

    .line 233
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_29
    move-exception v2

    .line 234
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method private declared-synchronized sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    .registers 13
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "shouldWait"    # Z

    .prologue
    const-wide/16 v8, 0x3a98

    .line 246
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->removeScheduledLoadFailedCallback()V

    .line 247
    new-instance v6, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    invoke-direct {v6, p0, p1}, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;-><init>(Lcom/ironsource/mediationsdk/BannerManager;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    iput-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 252
    .local v0, "currentTimestamp":J
    if-eqz p2, :cond_26

    const-wide/16 v2, 0x0

    .line 254
    .local v2, "timeFromPreviousLoadFailed":J
    :goto_15
    cmp-long v6, v2, v8

    if-ltz v6, :cond_2b

    .line 255
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_24

    .line 256
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_39

    .line 262
    :cond_24
    :goto_24
    monitor-exit p0

    return-void

    .line 252
    .end local v2    # "timeFromPreviousLoadFailed":J
    :cond_26
    :try_start_26
    iget-wide v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLastLoadFailTimestamp:J

    sub-long v2, v0, v6

    goto :goto_15

    .line 258
    .restart local v2    # "timeFromPreviousLoadFailed":J
    :cond_2b
    sub-long v4, v8, v2

    .line 259
    .local v4, "timeToNextLoadFailed":J
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    if-eqz v6, :cond_24

    .line 260
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadFailedRunnable:Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;

    invoke-virtual {v6, v7, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_38
    .catchall {:try_start_26 .. :try_end_38} :catchall_39

    goto :goto_24

    .line 246
    .end local v0    # "currentTimestamp":J
    .end local v2    # "timeFromPreviousLoadFailed":J
    .end local v4    # "timeToNextLoadFailed":J
    :catchall_39
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private startAdapter(Lcom/ironsource/mediationsdk/BannerSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 10
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":startAdapter("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 102
    :try_start_2c
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->getLoadedAdapterOrFetchByReflection(Lcom/ironsource/mediationsdk/AbstractSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v2

    .line 104
    .local v2, "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    if-nez v2, :cond_34

    move-object v2, v3

    .line 131
    .end local v2    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :goto_33
    return-object v2

    .line 107
    .restart local v2    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :cond_34
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/IronSourceObject;->addToBannerAdaptersList(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 110
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    invoke-virtual {v2, v4}, Lcom/ironsource/mediationsdk/AbstractAdapter;->setLogListener(Lcom/ironsource/mediationsdk/logger/LogListener;)V

    .line 112
    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/BannerSmash;->setAdapterForSmash(Lcom/ironsource/mediationsdk/AbstractAdapter;)V

    .line 114
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 116
    invoke-virtual {p0, p1}, Lcom/ironsource/mediationsdk/BannerManager;->setCustomParams(Lcom/ironsource/mediationsdk/AbstractSmash;)V

    .line 118
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager;->mAppKey:Ljava/lang/String;

    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Lcom/ironsource/mediationsdk/BannerSmash;->initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_54} :catch_55

    goto :goto_33

    .line 119
    .end local v2    # "providerAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    :catch_55
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 121
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":startAdapter("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 123
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Banner"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    .line 126
    .local v1, "error":Lcom/ironsource/mediationsdk/logger/IronSourceError;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    move-object v2, v3

    .line 128
    goto :goto_33
.end method

.method private startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    .registers 6

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 75
    .local v2, "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    const/4 v0, 0x0

    .line 78
    .local v0, "activeAdapters":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_53

    if-nez v2, :cond_53

    .line 79
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_4d

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_4d

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 80
    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_4d

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_54

    .line 81
    :cond_4d
    add-int/lit8 v0, v0, 0x1

    .line 83
    iget v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmartLoadAmount:I

    if-lt v0, v3, :cond_7f

    .line 93
    :cond_53
    return-object v2

    .line 85
    :cond_54
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_7f

    .line 86
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/BannerSmash;

    invoke-direct {p0, v3}, Lcom/ironsource/mediationsdk/BannerManager;->startAdapter(Lcom/ironsource/mediationsdk/BannerSmash;)Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v2

    .line 88
    if-nez v2, :cond_7f

    .line 89
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ironsource/mediationsdk/AbstractSmash;

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v3, v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 78
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method


# virtual methods
.method public createBanner(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "size"    # Lcom/ironsource/mediationsdk/EBannerSize;

    .prologue
    .line 136
    new-instance v0, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {v0, p1, p2, p0}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;-><init>(Landroid/app/Activity;Lcom/ironsource/mediationsdk/EBannerSize;Lcom/ironsource/mediationsdk/sdk/BannerManagerListener;)V

    return-object v0
.end method

.method public destroyBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    .registers 8
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .prologue
    const/4 v3, 0x0

    .line 345
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->isReloading:Z

    .line 346
    if-eqz p1, :cond_15

    .line 347
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 348
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "Banner is already destroyed and can\'t be used anymore. Please create a new one using IronSource.createBanner API"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 363
    :cond_15
    :goto_15
    return-void

    .line 354
    :cond_16
    invoke-static {v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 355
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x196

    invoke-direct {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 356
    .local v1, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 358
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    .line 359
    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    .line 361
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->destroyBanner()V

    goto :goto_15
.end method

.method public initBanners(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":initBanners(appKey: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 65
    iput-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mAppKey:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mUserId:Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    .line 69
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    .line 70
    return-void
.end method

.method public loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V
    .registers 14
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 142
    :try_start_1
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->innerDestroy()V

    .line 143
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->isReloading:Z

    .line 144
    if-nez p1, :cond_14

    .line 145
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v8, "Load Banner can\'t be called on null object"

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 220
    :cond_13
    :goto_13
    return-void

    .line 149
    :cond_14
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->isDestroyed()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 150
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v8, "Banner is already destroyed and can\'t be used anymore. Please create a new one using IronSource.createBanner API"

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_24} :catch_25

    goto :goto_13

    .line 216
    :catch_25
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 218
    new-instance v6, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v7, 0x25a

    const-string v8, "loadBanner exception"

    invoke-direct {v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v6, v10}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_13

    .line 156
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_36
    :try_start_36
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    if-eqz v6, :cond_45

    .line 157
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v8, "Load Banner is already in progress"

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    goto :goto_13

    .line 161
    :cond_45
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->resetLoadRound()V

    .line 163
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    .line 164
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    .line 165
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    .line 167
    invoke-static {}, Lcom/ironsource/mediationsdk/MediationInitializer;->getInstance()Lcom/ironsource/mediationsdk/MediationInitializer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/MediationInitializer;->getCurrentInitStatus()Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    move-result-object v1

    .line 169
    .local v1, "currentInitStatus":Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;
    const-string v3, "Load Banner can\'t be called before the Banner ad unit initialization completed successfully"

    .line 170
    .local v3, "loadFailMsg":Ljava/lang/String;
    sget-object v6, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_FAILED:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-eq v1, v6, :cond_62

    sget-object v6, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->NOT_INIT:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v6, :cond_6e

    .line 171
    :cond_62
    new-instance v6, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v7, 0x258

    invoke-direct {v6, v7, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_13

    .line 173
    :cond_6e
    sget-object v6, Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;->INIT_IN_PROGRESS:Lcom/ironsource/mediationsdk/MediationInitializer$EInitStatus;

    if-ne v1, v6, :cond_7e

    .line 174
    new-instance v6, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v7, 0x259

    invoke-direct {v6, v7, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_13

    .line 178
    :cond_7e
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_91

    .line 179
    const-string v6, "Banner"

    invoke-static {v6}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionLoadFailError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_13

    .line 183
    :cond_91
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->isFirstLoad:Z

    .line 185
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v6

    iput-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .line 186
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationLevelLoadEvent(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ironsource/mediationsdk/IronSourceObject;->getBannerCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v5

    .line 190
    .local v5, "status":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "cappedMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_dd

    .line 193
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v0, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 194
    const-string v6, "Banner"

    invoke-static {v6, v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto/16 :goto_13

    .line 198
    :cond_dd
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mCurrentPlacement:Lcom/ironsource/mediationsdk/model/BannerPlacement;

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setPlacementName(Ljava/lang/String;)V

    .line 200
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->changeStateToInitiated()V

    .line 201
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_ef
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 202
    .local v4, "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v7

    sget-object v8, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v7, v8, :cond_ef

    .line 204
    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v4, v6}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 205
    check-cast v4, Lcom/ironsource/mediationsdk/BannerSmash;

    .end local v4    # "smash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-direct {p0, v4, p1}, Lcom/ironsource/mediationsdk/BannerManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/BannerSmash;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    goto/16 :goto_13

    .line 210
    :cond_10f
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidFinishToInitBanner:Z

    if-eqz v6, :cond_13

    .line 214
    new-instance v6, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v7, 0x25b

    const-string v8, "no ads to show"

    invoke-direct {v6, v7, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    :try_end_120
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_120} :catch_25

    goto/16 :goto_13
.end method

.method public onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 9
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 554
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":onBannerAdLoadFailed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 557
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p2, v2}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 558
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 559
    .local v0, "asmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v3, v4, :cond_44

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_45

    .line 576
    .end local v0    # "asmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_44
    :goto_44
    return-void

    .line 561
    .restart local v0    # "asmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_45
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v3

    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v3, v4, :cond_28

    .line 562
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v3, :cond_28

    .line 563
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v0, v2}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 564
    check-cast v0, Lcom/ironsource/mediationsdk/BannerSmash;

    .end local v0    # "asmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {p0, v0, v2}, Lcom/ironsource/mediationsdk/BannerManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/BannerSmash;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    goto :goto_44

    .line 570
    :cond_5e
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v1

    .line 572
    .local v1, "initiatedAdapter":Lcom/ironsource/mediationsdk/AbstractAdapter;
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    if-eqz v2, :cond_44

    if-nez v1, :cond_44

    .line 574
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_44
.end method

.method public onBannerAdLoaded(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 14
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    const/16 v11, 0x197

    const/4 v10, 0x0

    .line 496
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":onBannerAdLoaded"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 500
    invoke-static {p1, v10}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 501
    .local v4, "providerData":Lorg/json/JSONObject;
    invoke-static {v10}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v2

    .line 504
    .local v2, "mediationData":Lorg/json/JSONObject;
    :try_start_28
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 505
    .local v0, "bannerSizeData":I
    const-string v6, "status"

    const-string v7, "true"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    const-string v6, "status"

    const-string v7, "true"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 508
    const-string v6, "bannerAdSize"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 509
    const-string v6, "bannerAdSize"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_48} :catch_6f

    .line 514
    .end local v0    # "bannerSizeData":I
    :goto_48
    new-instance v5, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v5, v11, v4}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 515
    .local v5, "providerEvent":Lcom/ironsource/eventsmodule/EventData;
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    invoke-direct {v3, v11, v2}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 517
    .local v3, "mediationEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 518
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 520
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    if-eqz v6, :cond_69

    .line 521
    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v6}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 523
    :cond_69
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->removeScheduledLoadFailedCallback()V

    .line 524
    iput-boolean v10, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoadInProgress:Z

    .line 525
    return-void

    .line 510
    .end local v3    # "mediationEvent":Lcom/ironsource/eventsmodule/EventData;
    .end local v5    # "providerEvent":Lcom/ironsource/eventsmodule/EventData;
    :catch_6f
    move-exception v1

    .line 511
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48
.end method

.method public onBannerAdReloadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 12
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    const/4 v8, 0x1

    .line 595
    iput-boolean v8, p0, Lcom/ironsource/mediationsdk/BannerManager;->isReloading:Z

    .line 596
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":onBannerAdReloadFailed"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 598
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p2, v4}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 601
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIsInISDemandOnlyMode:Z

    invoke-static {p2, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 602
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v2, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x1a2

    invoke-direct {v2, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 603
    .local v2, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 605
    const/4 v3, 0x1

    .line 608
    .local v3, "notAvailable":I
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_75

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 609
    .local v0, "abstractSmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 610
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v5, v6, :cond_69

    .line 611
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v6, :cond_76

    .line 613
    :cond_69
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/AbstractSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 614
    check-cast v0, Lcom/ironsource/mediationsdk/BannerSmash;

    .end local v0    # "abstractSmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/BannerSmash;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V

    .line 630
    :cond_75
    :goto_75
    return-void

    .line 617
    .restart local v0    # "abstractSmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_76
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_INITIATED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v6, :cond_82

    .line 618
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    goto :goto_75

    .line 620
    :cond_82
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->NOT_AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v6, :cond_8c

    .line 621
    add-int/lit8 v3, v3, 0x1

    .line 624
    :cond_8c
    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_3f

    .line 625
    new-instance v4, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v5, 0x207

    const-string v6, "no ads to show"

    invoke-direct {v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v4, v8}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    goto :goto_75
.end method

.method public onBannerAdReloaded(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 8
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 581
    iget-object v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":onBannerAdReloaded"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 584
    sget-object v2, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v2}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 587
    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIsInISDemandOnlyMode:Z

    invoke-static {p1, v2}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 588
    .local v0, "data":Lorg/json/JSONObject;
    new-instance v1, Lcom/ironsource/eventsmodule/EventData;

    const/16 v2, 0x1a1

    invoke-direct {v1, v2, v0}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 589
    .local v1, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 591
    return-void
.end method

.method public declared-synchronized onBannerInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 10
    .param p1, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;
    .param p2, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 444
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":onBannerInitFailed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 446
    const/4 v2, 0x0

    .line 448
    .local v2, "initFailed":I
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 449
    .local v0, "asmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->INIT_FAILED:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v4, v5, :cond_31

    .line 450
    add-int/lit8 v2, v2, 0x1

    .line 453
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_31

    .line 454
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smart Loading - initialization failed - no adapters are initiated and no more left to init, error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 456
    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    if-eqz v3, :cond_7f

    .line 457
    new-instance v3, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v4, 0x25d

    const-string v5, "no ads to show"

    invoke-direct {v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    .line 460
    :cond_7f
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidFinishToInitBanner:Z
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_82} :catch_88
    .catchall {:try_start_1 .. :try_end_82} :catchall_be

    .line 472
    .end local v0    # "asmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    .end local v2    # "initFailed":I
    :goto_82
    monitor-exit p0

    return-void

    .line 467
    .restart local v2    # "initFailed":I
    :cond_84
    :try_start_84
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/BannerManager;->startNextAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88
    .catchall {:try_start_84 .. :try_end_87} :catchall_be

    goto :goto_82

    .line 469
    .end local v2    # "initFailed":I
    :catch_88
    move-exception v1

    .line 470
    .local v1, "e":Ljava/lang/Exception;
    :try_start_89
    iget-object v3, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v4, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBannerInitFailed(error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "provider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerSmash;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_bd
    .catchall {:try_start_89 .. :try_end_bd} :catchall_be

    goto :goto_82

    .line 444
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_be
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized onBannerInitSuccess(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 10
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 394
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getInstanceName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :onBannerInitSuccess()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 396
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->isReloading:Z

    if-eqz v4, :cond_3c

    .line 397
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->isReloading:Z

    .line 398
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 399
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v4, :cond_3a

    .line 400
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 401
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/BannerSmash;->loadBanner(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_3a
    .catchall {:try_start_1 .. :try_end_3a} :catchall_c9

    .line 439
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    .line 406
    :cond_3c
    const/4 v4, 0x1

    :try_start_3d
    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidFinishToInitBanner:Z

    .line 408
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    if-eqz v4, :cond_3a

    .line 411
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mSmashArray:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_66

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/AbstractSmash;

    .line 412
    .local v0, "asmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-eq v5, v6, :cond_3a

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/AbstractSmash;->getMediationState()Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->AVAILABLE:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    if-ne v5, v6, :cond_49

    goto :goto_3a

    .line 416
    .end local v0    # "asmash":Lcom/ironsource/mediationsdk/AbstractSmash;
    :cond_66
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    if-eqz v4, :cond_3a

    .line 417
    iget-boolean v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->isFirstLoad:Z

    if-eqz v4, :cond_cc

    .line 418
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->isFirstLoad:Z

    .line 421
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->validateBannerPlacement(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v2

    .line 422
    .local v2, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/model/BannerPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->setPlacementName(Ljava/lang/String;)V

    .line 424
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/ironsource/mediationsdk/BannerManager;->sendMediationLevelLoadEvent(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Ljava/lang/String;)V

    .line 426
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/ironsource/mediationsdk/IronSourceObject;->getBannerCappingStatus(Ljava/lang/String;)Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v3

    .line 427
    .local v3, "status":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getPlacementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/ironsource/mediationsdk/IronSourceObject;->getCappingMessage(Ljava/lang/String;Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v1

    .line 429
    .local v1, "cappedMessage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_cc

    .line 430
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 431
    const-string v4, "Banner"

    invoke-static {v4, v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildCappedPerPlacementError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V
    :try_end_c7
    .catchall {:try_start_3d .. :try_end_c7} :catchall_c9

    goto/16 :goto_3a

    .line 394
    .end local v1    # "cappedMessage":Ljava/lang/String;
    .end local v2    # "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .end local v3    # "status":Lcom/ironsource/mediationsdk/utils/CappingManager$ECappingStatus;
    :catchall_c9
    move-exception v4

    monitor-exit p0

    throw v4

    .line 436
    :cond_cc
    :try_start_cc
    sget-object v4, Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;->LOAD_PENDING:Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;

    invoke-virtual {p1, v4}, Lcom/ironsource/mediationsdk/BannerSmash;->setMediationState(Lcom/ironsource/mediationsdk/AbstractSmash$MEDIATION_STATE;)V

    .line 437
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mPendingToLoadBannerLayout:Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    invoke-direct {p0, p1, v4}, Lcom/ironsource/mediationsdk/BannerManager;->loadAdapterAndSendEvent(Lcom/ironsource/mediationsdk/BannerSmash;Lcom/ironsource/mediationsdk/IronSourceBannerLayout;)V
    :try_end_d6
    .catchall {:try_start_cc .. :try_end_d6} :catchall_c9

    goto/16 :goto_3a
.end method

.method public onBannerReloadAd(Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 12
    .param p1, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 530
    iget-object v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v7, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":onBannerReloadAd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 534
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIsInISDemandOnlyMode:Z

    invoke-static {p1, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 535
    .local v1, "data":Lorg/json/JSONObject;
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v6, 0x19c

    invoke-direct {v3, v6, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 536
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 540
    iget-boolean v6, p0, Lcom/ironsource/mediationsdk/BannerManager;->mIsInISDemandOnlyMode:Z

    invoke-static {p1, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;

    move-result-object v4

    .line 542
    .local v4, "impressionData":Lorg/json/JSONObject;
    :try_start_37
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/BannerSmash;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 543
    .local v0, "bannerSizeData":I
    const-string v6, "bannerAdSize"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 544
    const-string v6, "reason"

    const/16 v7, 0x64

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_4b} :catch_5a

    .line 548
    .end local v0    # "bannerSizeData":I
    :goto_4b
    new-instance v5, Lcom/ironsource/eventsmodule/EventData;

    const/16 v6, 0x195

    invoke-direct {v5, v6, v4}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 549
    .local v5, "impressionEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 550
    return-void

    .line 545
    .end local v5    # "impressionEvent":Lcom/ironsource/eventsmodule/EventData;
    :catch_5a
    move-exception v2

    .line 546
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4b
.end method

.method public onFirstBannerImpression(Lcom/ironsource/mediationsdk/IronSourceBannerLayout;Lcom/ironsource/mediationsdk/BannerSmash;)V
    .registers 11
    .param p1, "banner"    # Lcom/ironsource/mediationsdk/IronSourceBannerLayout;
    .param p2, "smash"    # Lcom/ironsource/mediationsdk/BannerSmash;

    .prologue
    .line 476
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/ironsource/mediationsdk/BannerSmash;->getAdapter()Lcom/ironsource/mediationsdk/AbstractAdapter;

    move-result-object v4

    if-eqz v4, :cond_a

    if-nez p1, :cond_28

    .line 477
    :cond_a
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":onBannerImpression error: adapter or banner is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 492
    :goto_27
    return-void

    .line 481
    :cond_28
    const/4 v4, 0x0

    invoke-static {p2, v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getProviderAdditionalData(Lcom/ironsource/mediationsdk/AbstractSmash;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 483
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_2d
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 485
    .local v0, "bannerSizeData":I
    const-string v4, "bannerAdSize"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3a} :catch_49

    .line 490
    .end local v0    # "bannerSizeData":I
    :goto_3a
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x195

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 491
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    goto :goto_27

    .line 486
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :catch_49
    move-exception v2

    .line 487
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3a
.end method

.method public onInitFailed(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/BannerManager;->mDidCallLoad:Z

    if-eqz v0, :cond_11

    .line 273
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    const/16 v1, 0x25c

    const-string v2, "no ads to show"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ironsource/mediationsdk/BannerManager;->sendOrScheduleLoadFailedCallback(Lcom/ironsource/mediationsdk/logger/IronSourceError;Z)V

    .line 275
    :cond_11
    return-void
.end method

.method public onInitSuccess(Ljava/util/List;Z)V
    .registers 3
    .param p2, "revived"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    return-void
.end method

.method public bridge synthetic onPause(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public bridge synthetic onResume(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->onResume(Landroid/app/Activity;)V

    return-void
.end method

.method public onStillInProgressAfter15Secs()V
    .registers 1

    .prologue
    .line 280
    return-void
.end method

.method public bridge synthetic setAge(I)V
    .registers 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->setAge(I)V

    return-void
.end method

.method public bridge synthetic setGender(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->setGender(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setMediationSegment(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdUnitManager;->setMediationSegment(Ljava/lang/String;)V

    return-void
.end method

.method shouldTrackNetworkState(Landroid/content/Context;Z)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "track"    # Z

    .prologue
    .line 374
    return-void
.end method

###### Class com.ironsource.mediationsdk.BannerManager.LoadFailedRunnable (com.ironsource.mediationsdk.BannerManager$LoadFailedRunnable)
.class Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;
.super Ljava/lang/Object;
.source "BannerManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/BannerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadFailedRunnable"
.end annotation


# instance fields
.field error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

.field final synthetic this$0:Lcom/ironsource/mediationsdk/BannerManager;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/BannerManager;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 3
    .param p2, "error"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    iput-object p2, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 287
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 291
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    iget-object v4, v4, Lcom/ironsource/mediationsdk/BannerManager;->mLoggerManager:Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Load Banner failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 292
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/ironsource/mediationsdk/BannerManager;->access$002(Lcom/ironsource/mediationsdk/BannerManager;J)J

    .line 294
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/BannerManager;->access$100(Lcom/ironsource/mediationsdk/BannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v4

    if-eqz v4, :cond_a9

    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/BannerManager;->access$100(Lcom/ironsource/mediationsdk/BannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getBannerListener()Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v4

    if-eqz v4, :cond_a9

    .line 295
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBannerAdLoadFailed(), error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .line 296
    invoke-virtual {v7}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 295
    invoke-virtual {v4, v5, v6, v8}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 299
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 301
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_67
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/BannerManager;->access$100(Lcom/ironsource/mediationsdk/BannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getSize()Lcom/ironsource/mediationsdk/EBannerSize;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/EBannerSize;->getValue()I

    move-result v0

    .line 302
    .local v0, "bannerSizeData":I
    const-string v4, "status"

    const-string v5, "false"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 303
    const-string v4, "errorCode"

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-virtual {v5}, Lcom/ironsource/mediationsdk/logger/IronSourceError;->getErrorCode()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 304
    const-string v4, "bannerAdSize"

    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_8c} :catch_af

    .line 309
    .end local v0    # "bannerSizeData":I
    :goto_8c
    new-instance v3, Lcom/ironsource/eventsmodule/EventData;

    const/16 v4, 0x197

    invoke-direct {v3, v4, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 310
    .local v3, "event":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->log(Lcom/ironsource/eventsmodule/EventData;)V

    .line 312
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/BannerManager;->access$100(Lcom/ironsource/mediationsdk/BannerManager;)Lcom/ironsource/mediationsdk/IronSourceBannerLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/mediationsdk/IronSourceBannerLayout;->getBannerListener()Lcom/ironsource/mediationsdk/sdk/BannerListener;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->error:Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-interface {v4, v5}, Lcom/ironsource/mediationsdk/sdk/BannerListener;->onBannerAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 315
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "event":Lcom/ironsource/eventsmodule/EventData;
    :cond_a9
    iget-object v4, p0, Lcom/ironsource/mediationsdk/BannerManager$LoadFailedRunnable;->this$0:Lcom/ironsource/mediationsdk/BannerManager;

    invoke-static {v4}, Lcom/ironsource/mediationsdk/BannerManager;->access$200(Lcom/ironsource/mediationsdk/BannerManager;)V

    .line 316
    return-void

    .line 305
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_af
    move-exception v2

    .line 306
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8c
.end method
