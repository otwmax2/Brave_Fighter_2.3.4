###### Class com.unity3d.ads.UnityAds (com.unity3d.ads.UnityAds)
.class public final Lcom/unity3d/ads/UnityAds;
.super Ljava/lang/Object;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/UnityAds$UnityAdsError;,
        Lcom/unity3d/ads/UnityAds$PlacementState;,
        Lcom/unity3d/ads/UnityAds$FinishState;
    }
.end annotation


# static fields
.field private static _configurationInitialized:Z

.field private static _debugMode:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Lcom/unity3d/ads/UnityAds;->_configurationInitialized:Z

    .line 26
    sput-boolean v0, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    return-void
.end method

.method public static getDebugMode()Z
    .registers 1

    .prologue
    .line 392
    sget-boolean v0, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    return v0
.end method

.method public static getListener()Lcom/unity3d/ads/IUnityAdsListener;
    .registers 1

    .prologue
    .line 215
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v0

    return-object v0
.end method

.method public static getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;
    .registers 1

    .prologue
    .line 261
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 262
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->getPlacementState()Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    .line 264
    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    goto :goto_10
.end method

.method public static getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;
    .registers 2
    .param p0, "placementId"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p0, :cond_13

    .line 276
    invoke-static {p0}, Lcom/unity3d/ads/placement/Placement;->getPlacementState(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;

    move-result-object v0

    .line 278
    :goto_12
    return-object v0

    :cond_13
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    goto :goto_12
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 233
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .registers 7
    .param p0, "placementId"    # Ljava/lang/String;
    .param p1, "error"    # Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unity Ads show failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "errorMessage":Ljava/lang/String;
    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getListener()Lcom/unity3d/ads/IUnityAdsListener;

    move-result-object v1

    .line 360
    .local v1, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    if-eqz v1, :cond_24

    .line 361
    new-instance v2, Lcom/unity3d/ads/UnityAds$2;

    invoke-direct {v2, v1, p1, v0, p0}, Lcom/unity3d/ads/UnityAds$2;-><init>(Lcom/unity3d/ads/IUnityAdsListener;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/unity3d/ads/misc/Utilities;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    :cond_24
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V
    .registers 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V

    .line 98
    return-void
.end method

.method public static initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;Z)V
    .registers 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "gameId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;
    .param p3, "testMode"    # Z

    .prologue
    const/4 v4, 0x1

    .line 109
    invoke-static {}, Lcom/unity3d/ads/log/DeviceLog;->entered()V

    .line 113
    sget-boolean v2, Lcom/unity3d/ads/UnityAds;->_configurationInitialized:Z

    if-eqz v2, :cond_1e

    .line 114
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getGameId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 115
    const-string v2, "You are trying to re-initialize with a different gameId"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->warning(Ljava/lang/String;)V

    .line 189
    :cond_1d
    :goto_1d
    return-void

    .line 120
    :cond_1e
    sput-boolean v4, Lcom/unity3d/ads/UnityAds;->_configurationInitialized:Z

    .line 122
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v2

    if-nez v2, :cond_2c

    .line 123
    const-string v2, "Error while initializing Unity Ads: device is not supported"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_1d

    .line 127
    :cond_2c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/unity3d/ads/properties/SdkProperties;->setInitializationTime(J)V

    .line 129
    if-eqz p1, :cond_3b

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4a

    .line 130
    :cond_3b
    const-string v2, "Error while initializing Unity Ads: empty game ID, halting Unity Ads init"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 131
    if-eqz p2, :cond_1d

    .line 132
    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v3, "Empty game ID"

    invoke-interface {p2, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_1d

    .line 137
    :cond_4a
    if-nez p0, :cond_5b

    .line 138
    const-string v2, "Error while initializing Unity Ads: null activity, halting Unity Ads init"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 139
    if-eqz p2, :cond_1d

    .line 140
    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v3, "Null activity"

    invoke-interface {p2, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_1d

    .line 145
    :cond_5b
    if-eqz p3, :cond_118

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing Unity Ads "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with game id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in test mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 151
    :goto_95
    sget-boolean v2, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    invoke-static {v2}, Lcom/unity3d/ads/UnityAds;->setDebugMode(Z)V

    .line 153
    invoke-static {p1}, Lcom/unity3d/ads/properties/ClientProperties;->setGameId(Ljava/lang/String;)V

    .line 154
    invoke-static {p2}, Lcom/unity3d/ads/properties/ClientProperties;->setListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 155
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/properties/ClientProperties;->setApplicationContext(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/properties/ClientProperties;->setApplication(Landroid/app/Application;)V

    .line 157
    invoke-static {p3}, Lcom/unity3d/ads/properties/SdkProperties;->setTestMode(Z)V

    .line 159
    invoke-static {}, Lcom/unity3d/ads/configuration/EnvironmentCheck;->isEnvironmentOk()Z

    move-result v2

    if-eqz v2, :cond_152

    .line 160
    const-string v2, "Unity Ads environment check OK"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 169
    new-instance v1, Lcom/unity3d/ads/configuration/Configuration;

    invoke-direct {v1}, Lcom/unity3d/ads/configuration/Configuration;-><init>()V

    .line 170
    .local v1, "configuration":Lcom/unity3d/ads/configuration/Configuration;
    const/16 v2, 0xe

    new-array v0, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/unity3d/ads/api/AdUnit;

    aput-object v3, v0, v2

    const-class v2, Lcom/unity3d/ads/api/Broadcast;

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-class v3, Lcom/unity3d/ads/api/Cache;

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-class v3, Lcom/unity3d/ads/api/Connectivity;

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-class v3, Lcom/unity3d/ads/api/DeviceInfo;

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-class v3, Lcom/unity3d/ads/api/Listener;

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-class v3, Lcom/unity3d/ads/api/Storage;

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-class v3, Lcom/unity3d/ads/api/Sdk;

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-class v3, Lcom/unity3d/ads/api/Request;

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-class v3, Lcom/unity3d/ads/api/Resolve;

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-class v3, Lcom/unity3d/ads/api/VideoPlayer;

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-class v3, Lcom/unity3d/ads/api/Placement;

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-class v3, Lcom/unity3d/ads/api/Intent;

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-class v3, Lcom/unity3d/ads/api/Lifecycle;

    aput-object v3, v0, v2

    .line 187
    .local v0, "apiClassList":[Ljava/lang/Class;
    invoke-virtual {v1, v0}, Lcom/unity3d/ads/configuration/Configuration;->setWebAppApiClassList([Ljava/lang/Class;)V

    .line 188
    invoke-static {v1}, Lcom/unity3d/ads/configuration/InitializeThread;->initialize(Lcom/unity3d/ads/configuration/Configuration;)V

    goto/16 :goto_1d

    .line 148
    .end local v0    # "apiClassList":[Ljava/lang/Class;
    .end local v1    # "configuration":Lcom/unity3d/ads/configuration/Configuration;
    :cond_118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing Unity Ads "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with game id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in production mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    goto/16 :goto_95

    .line 162
    :cond_152
    const-string v2, "Error during Unity Ads environment check, halting Unity Ads init"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 163
    if-eqz p2, :cond_1d

    .line 164
    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v3, "Unity Ads init environment check failed"

    invoke-interface {p2, v2, v3}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto/16 :goto_1d
.end method

.method public static isInitialized()Z
    .registers 1

    .prologue
    .line 197
    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static isReady()Z
    .registers 1

    .prologue
    .line 242
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->isReady()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static isReady(Ljava/lang/String;)Z
    .registers 2
    .param p0, "placementId"    # Ljava/lang/String;

    .prologue
    .line 252
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_16

    if-eqz p0, :cond_16

    invoke-static {p0}, Lcom/unity3d/ads/placement/Placement;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isSupported()Z
    .registers 2

    .prologue
    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static setDebugMode(Z)V
    .registers 2
    .param p0, "debugMode"    # Z

    .prologue
    .line 377
    sput-boolean p0, Lcom/unity3d/ads/UnityAds;->_debugMode:Z

    .line 379
    if-eqz p0, :cond_a

    .line 380
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->setLogLevel(I)V

    .line 384
    :goto_9
    return-void

    .line 382
    :cond_a
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->setLogLevel(I)V

    goto :goto_9
.end method

.method public static setListener(Lcom/unity3d/ads/IUnityAdsListener;)V
    .registers 1
    .param p0, "listener"    # Lcom/unity3d/ads/IUnityAdsListener;

    .prologue
    .line 206
    invoke-static {p0}, Lcom/unity3d/ads/properties/ClientProperties;->setListener(Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 207
    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 288
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->getDefaultPlacement()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public static show(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 298
    if-nez p0, :cond_a

    .line 299
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Activity must not be null"

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 353
    :goto_9
    return-void

    .line 303
    :cond_a
    invoke-static {p1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unity Ads opening new ad unit for placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->info(Ljava/lang/String;)V

    .line 305
    invoke-static {p0}, Lcom/unity3d/ads/properties/ClientProperties;->setActivity(Landroid/app/Activity;)V

    .line 306
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/unity3d/ads/UnityAds$1;

    invoke-direct {v1, p0, p1}, Lcom/unity3d/ads/UnityAds$1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 343
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_9

    .line 345
    :cond_37
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isSupported()Z

    move-result v0

    if-nez v0, :cond_45

    .line 346
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Unity Ads is not supported for this device"

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_9

    .line 347
    :cond_45
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_53

    .line 348
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "Unity Ads is not initialized"

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_9

    .line 350
    :cond_53
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Placement \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" is not ready"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_9
.end method

###### Class com.unity3d.ads.UnityAds.AnonymousClass1 (com.unity3d.ads.UnityAds$1)
.class final Lcom/unity3d/ads/UnityAds$1;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 306
    iput-object p1, p0, Lcom/unity3d/ads/UnityAds$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 309
    iget-object v6, p0, Lcom/unity3d/ads/UnityAds$1;->val$activity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/unity3d/ads/UnityAds$1;->val$activity:Landroid/app/Activity;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 310
    .local v0, "defaultDisplay":Landroid/view/Display;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 312
    .local v5, "options":Lorg/json/JSONObject;
    :try_start_15
    const-string v6, "requestedOrientation"

    iget-object v7, p0, Lcom/unity3d/ads/UnityAds$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 315
    .local v1, "display":Lorg/json/JSONObject;
    const-string v6, "rotation"

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 316
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xd

    if-lt v6, v7, :cond_6a

    .line 317
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 318
    .local v2, "displaySize":Landroid/graphics/Point;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 319
    const-string v6, "width"

    iget v7, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 320
    const-string v6, "height"

    iget v7, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    .end local v2    # "displaySize":Landroid/graphics/Point;
    :goto_4a
    const-string v6, "display"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_4f} :catch_7d

    .line 331
    .end local v1    # "display":Lorg/json/JSONObject;
    :goto_4f
    :try_start_4f
    iget-object v6, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/unity3d/ads/adunit/AdUnitOpen;->open(Ljava/lang/String;Lorg/json/JSONObject;)Z

    move-result v6

    if-nez v6, :cond_69

    .line 332
    iget-object v6, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    sget-object v7, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v8, "Webapp timeout, shutting down Unity Ads"

    invoke-static {v6, v7, v8}, Lcom/unity3d/ads/UnityAds;->access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/unity3d/ads/placement/Placement;->reset()V

    .line 334
    invoke-static {}, Lcom/unity3d/ads/cache/CacheThread;->cancel()V

    .line 335
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->stopAll()V
    :try_end_69
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4f .. :try_end_69} :catch_84

    .line 342
    :cond_69
    :goto_69
    return-void

    .line 322
    .restart local v1    # "display":Lorg/json/JSONObject;
    :cond_6a
    :try_start_6a
    const-string v6, "width"

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 323
    const-string v6, "height"

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7c
    .catch Lorg/json/JSONException; {:try_start_6a .. :try_end_7c} :catch_7d

    goto :goto_4a

    .line 326
    .end local v1    # "display":Lorg/json/JSONObject;
    :catch_7d
    move-exception v3

    .line 327
    .local v3, "e":Lorg/json/JSONException;
    const-string v6, "JSON error while constructing show options"

    invoke-static {v6, v3}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4f

    .line 338
    .end local v3    # "e":Lorg/json/JSONException;
    :catch_84
    move-exception v4

    .line 339
    .local v4, "exception":Ljava/lang/NoSuchMethodException;
    const-string v6, "Could not get callback method"

    invoke-static {v6, v4}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 340
    iget-object v6, p0, Lcom/unity3d/ads/UnityAds$1;->val$placementId:Ljava/lang/String;

    sget-object v7, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v8, "Could not get com.unity3d.ads.properties.showCallback method"

    invoke-static {v6, v7, v8}, Lcom/unity3d/ads/UnityAds;->access$000(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_69
.end method

###### Class com.unity3d.ads.UnityAds.AnonymousClass2 (com.unity3d.ads.UnityAds$2)
.class final Lcom/unity3d/ads/UnityAds$2;
.super Ljava/lang/Object;
.source "UnityAds.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/UnityAds;->handleShowError(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$error:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field final synthetic val$errorMessage:Ljava/lang/String;

.field final synthetic val$listener:Lcom/unity3d/ads/IUnityAdsListener;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/IUnityAdsListener;Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 361
    iput-object p1, p0, Lcom/unity3d/ads/UnityAds$2;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    iput-object p2, p0, Lcom/unity3d/ads/UnityAds$2;->val$error:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    iput-object p3, p0, Lcom/unity3d/ads/UnityAds$2;->val$errorMessage:Ljava/lang/String;

    iput-object p4, p0, Lcom/unity3d/ads/UnityAds$2;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 364
    iget-object v0, p0, Lcom/unity3d/ads/UnityAds$2;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    iget-object v1, p0, Lcom/unity3d/ads/UnityAds$2;->val$error:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    iget-object v2, p0, Lcom/unity3d/ads/UnityAds$2;->val$errorMessage:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lcom/unity3d/ads/UnityAds$2;->val$listener:Lcom/unity3d/ads/IUnityAdsListener;

    iget-object v1, p0, Lcom/unity3d/ads/UnityAds$2;->val$placementId:Ljava/lang/String;

    sget-object v2, Lcom/unity3d/ads/UnityAds$FinishState;->ERROR:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-interface {v0, v1, v2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    .line 366
    return-void
.end method

###### Class com.unity3d.ads.UnityAds.FinishState (com.unity3d.ads.UnityAds$FinishState)
.class public final enum Lcom/unity3d/ads/UnityAds$FinishState;
.super Ljava/lang/Enum;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FinishState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/UnityAds$FinishState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/UnityAds$FinishState;

.field public static final enum COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

.field public static final enum ERROR:Lcom/unity3d/ads/UnityAds$FinishState;

.field public static final enum SKIPPED:Lcom/unity3d/ads/UnityAds$FinishState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/unity3d/ads/UnityAds$FinishState;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$FinishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$FinishState;->ERROR:Lcom/unity3d/ads/UnityAds$FinishState;

    .line 39
    new-instance v0, Lcom/unity3d/ads/UnityAds$FinishState;

    const-string v1, "SKIPPED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/UnityAds$FinishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$FinishState;->SKIPPED:Lcom/unity3d/ads/UnityAds$FinishState;

    .line 43
    new-instance v0, Lcom/unity3d/ads/UnityAds$FinishState;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/UnityAds$FinishState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    .line 31
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unity3d/ads/UnityAds$FinishState;

    sget-object v1, Lcom/unity3d/ads/UnityAds$FinishState;->ERROR:Lcom/unity3d/ads/UnityAds$FinishState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/UnityAds$FinishState;->SKIPPED:Lcom/unity3d/ads/UnityAds$FinishState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unity3d/ads/UnityAds$FinishState;->$VALUES:[Lcom/unity3d/ads/UnityAds$FinishState;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$FinishState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/UnityAds$FinishState;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/UnityAds$FinishState;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/unity3d/ads/UnityAds$FinishState;->$VALUES:[Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-virtual {v0}, [Lcom/unity3d/ads/UnityAds$FinishState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/UnityAds$FinishState;

    return-object v0
.end method

###### Class com.unity3d.ads.UnityAds.PlacementState (com.unity3d.ads.UnityAds$PlacementState)
.class public final enum Lcom/unity3d/ads/UnityAds$PlacementState;
.super Ljava/lang/Enum;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlacementState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/UnityAds$PlacementState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/UnityAds$PlacementState;

.field public static final enum DISABLED:Lcom/unity3d/ads/UnityAds$PlacementState;

.field public static final enum NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

.field public static final enum NO_FILL:Lcom/unity3d/ads/UnityAds$PlacementState;

.field public static final enum READY:Lcom/unity3d/ads/UnityAds$PlacementState;

.field public static final enum WAITING:Lcom/unity3d/ads/UnityAds$PlacementState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    const-string v1, "READY"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 58
    new-instance v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 63
    new-instance v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->DISABLED:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 68
    new-instance v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->WAITING:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 73
    new-instance v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    const-string v1, "NO_FILL"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/UnityAds$PlacementState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->NO_FILL:Lcom/unity3d/ads/UnityAds$PlacementState;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unity3d/ads/UnityAds$PlacementState;

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->READY:Lcom/unity3d/ads/UnityAds$PlacementState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->NOT_AVAILABLE:Lcom/unity3d/ads/UnityAds$PlacementState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->DISABLED:Lcom/unity3d/ads/UnityAds$PlacementState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->WAITING:Lcom/unity3d/ads/UnityAds$PlacementState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/UnityAds$PlacementState;->NO_FILL:Lcom/unity3d/ads/UnityAds$PlacementState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->$VALUES:[Lcom/unity3d/ads/UnityAds$PlacementState;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$PlacementState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/UnityAds$PlacementState;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/UnityAds$PlacementState;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/unity3d/ads/UnityAds$PlacementState;->$VALUES:[Lcom/unity3d/ads/UnityAds$PlacementState;

    invoke-virtual {v0}, [Lcom/unity3d/ads/UnityAds$PlacementState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/UnityAds$PlacementState;

    return-object v0
.end method

###### Class com.unity3d.ads.UnityAds.UnityAdsError (com.unity3d.ads.UnityAds$UnityAdsError)
.class public final enum Lcom/unity3d/ads/UnityAds$UnityAdsError;
.super Ljava/lang/Enum;
.source "UnityAds.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/UnityAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnityAdsError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/UnityAds$UnityAdsError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum DEVICE_ID_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum FILE_IO_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

.field public static final enum VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 77
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 78
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "INITIALIZE_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 79
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "INVALID_ARGUMENT"

    invoke-direct {v0, v1, v5}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 80
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "VIDEO_PLAYER_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 81
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "INIT_SANITY_CHECK_FAIL"

    invoke-direct {v0, v1, v7}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 82
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "AD_BLOCKER_DETECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 83
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "FILE_IO_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->FILE_IO_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 84
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "DEVICE_ID_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->DEVICE_ID_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 85
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "SHOW_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 86
    new-instance v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    const-string v1, "INTERNAL_ERROR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/UnityAds$UnityAdsError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    .line 76
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/unity3d/ads/UnityAds$UnityAdsError;

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->NOT_INITIALIZED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INITIALIZE_FAILED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INVALID_ARGUMENT:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->VIDEO_PLAYER_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INIT_SANITY_CHECK_FAIL:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->AD_BLOCKER_DETECTED:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->FILE_IO_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->DEVICE_ID_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->SHOW_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unity3d/ads/UnityAds$UnityAdsError;->INTERNAL_ERROR:Lcom/unity3d/ads/UnityAds$UnityAdsError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->$VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsError;

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
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 76
    const-class v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .registers 1

    .prologue
    .line 76
    sget-object v0, Lcom/unity3d/ads/UnityAds$UnityAdsError;->$VALUES:[Lcom/unity3d/ads/UnityAds$UnityAdsError;

    invoke-virtual {v0}, [Lcom/unity3d/ads/UnityAds$UnityAdsError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/UnityAds$UnityAdsError;

    return-object v0
.end method
