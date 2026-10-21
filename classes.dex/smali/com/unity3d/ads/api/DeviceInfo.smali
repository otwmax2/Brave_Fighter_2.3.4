###### Class com.unity3d.ads.api.DeviceInfo (com.unity3d.ads.api.DeviceInfo)
.class public Lcom/unity3d/ads/api/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;,
        Lcom/unity3d/ads/api/DeviceInfo$StorageType;
    }
.end annotation


# static fields
.field private static _volumeChangeListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/unity3d/ads/device/IVolumeChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getAdvertisingTrackingId(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getAdvertisingTrackingId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method public static getAndroidId(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getAndroidId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public static getApiLevel(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getApiLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static getBatteryLevel(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 377
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getBatteryLevel()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method public static getBatteryStatus(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getBatteryStatus()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 383
    return-void
.end method

.method public static getBoard(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 409
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getBoard()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 410
    return-void
.end method

.method public static getBootloader(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getBootloader()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 415
    return-void
.end method

.method public static getBrand(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 419
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getBrand()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 420
    return-void
.end method

.method public static getConnectionType(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 101
    invoke-static {}, Lcom/unity3d/ads/device/Device;->isUsingWifi()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 102
    const-string v0, "wifi"

    .line 108
    .local v0, "connectionType":Ljava/lang/String;
    :goto_8
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 109
    return-void

    .line 103
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_12
    invoke-static {}, Lcom/unity3d/ads/device/Device;->isActiveNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 104
    const-string v0, "cellular"

    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_8

    .line 106
    .end local v0    # "connectionType":Ljava/lang/String;
    :cond_1b
    const-string v0, "none"

    .restart local v0    # "connectionType":Ljava/lang/String;
    goto :goto_8
.end method

.method public static getDevice(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getDevice()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 425
    return-void
.end method

.method public static getDeviceMaxVolume(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 7
    .param p0, "streamType"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 243
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/unity3d/ads/device/Device;->getStreamMaxVolume(I)I

    move-result v0

    .line 244
    .local v0, "maxVolume":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_19

    .line 245
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 260
    :goto_18
    return-void

    .line 248
    :cond_19
    packed-switch v0, :pswitch_data_50

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled deviceMaxVolume error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_18

    .line 250
    :pswitch_33
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_18

    .line 253
    :pswitch_41
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->AUDIOMANAGER_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_18

    .line 248
    nop

    :pswitch_data_50
    .packed-switch -0x2
        :pswitch_41
        :pswitch_33
    .end packed-switch
.end method

.method public static getDeviceVolume(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 7
    .param p0, "streamType"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/unity3d/ads/device/Device;->getStreamVolume(I)I

    move-result v0

    .line 223
    .local v0, "volume":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_19

    .line 224
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 239
    :goto_18
    return-void

    .line 227
    :cond_19
    packed-switch v0, :pswitch_data_50

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled deviceVolume error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_18

    .line 229
    :pswitch_33
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_18

    .line 232
    :pswitch_41
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->AUDIOMANAGER_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_18

    .line 227
    nop

    :pswitch_data_50
    .packed-switch -0x2
        :pswitch_41
        :pswitch_33
    .end packed-switch
.end method

.method private static getFileForStorageType(Lcom/unity3d/ads/api/DeviceInfo$StorageType;)Ljava/io/File;
    .registers 3
    .param p0, "storageType"    # Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    .prologue
    .line 332
    sget-object v0, Lcom/unity3d/ads/api/DeviceInfo$2;->$SwitchMap$com$unity3d$ads$api$DeviceInfo$StorageType:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_36

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled storagetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 339
    const/4 v0, 0x0

    :goto_22
    return-object v0

    .line 334
    :pswitch_23
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_22

    .line 336
    :pswitch_2c
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    goto :goto_22

    .line 332
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_23
        :pswitch_2c
    .end packed-switch
.end method

.method public static getFreeMemory(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 5
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 387
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getFreeMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 388
    return-void
.end method

.method public static getFreeSpace(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 10
    .param p0, "storageType"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 345
    invoke-static {p0}, Lcom/unity3d/ads/api/DeviceInfo;->getStorageTypeFromString(Ljava/lang/String;)Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    move-result-object v2

    .line 347
    .local v2, "storage":Lcom/unity3d/ads/api/DeviceInfo$StorageType;
    if-nez v2, :cond_12

    .line 348
    sget-object v3, Lcom/unity3d/ads/device/DeviceError;->INVALID_STORAGETYPE:Lcom/unity3d/ads/device/DeviceError;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 357
    :goto_11
    return-void

    .line 352
    :cond_12
    invoke-static {v2}, Lcom/unity3d/ads/api/DeviceInfo;->getFileForStorageType(Lcom/unity3d/ads/api/DeviceInfo$StorageType;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/device/Device;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 353
    .local v0, "space":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-lez v3, :cond_2c

    .line 354
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_11

    .line 356
    :cond_2c
    sget-object v3, Lcom/unity3d/ads/device/DeviceError;->COULDNT_GET_STORAGE_LOCATION:Lcom/unity3d/ads/device/DeviceError;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public static getGLVersion(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 397
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getGLVersion()Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, "glVersion":Ljava/lang/String;
    if-eqz v0, :cond_10

    .line 400
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 405
    :goto_f
    return-void

    .line 403
    :cond_10
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->COULDNT_GET_GL_VERSION:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method public static getHardware(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 429
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getHardware()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 430
    return-void
.end method

.method public static getHeadset(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->isWiredHeadsetOn()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public static getHost(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 434
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getHost()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 435
    return-void
.end method

.method public static getInstalledPackages(ZLcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 6
    .param p0, "md5"    # Z
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 138
    invoke-static {p0}, Lcom/unity3d/ads/device/Device;->getInstalledPackages(Z)Ljava/util/List;

    move-result-object v0

    .line 139
    .local v0, "installedPackages":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 140
    .local v1, "packageJson":Lorg/json/JSONArray;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 141
    return-void
.end method

.method public static getLimitAdTrackingFlag(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 50
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->isLimitAdTrackingEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method public static getManufacturer(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public static getModel(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getModel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 71
    return-void
.end method

.method public static getNetworkOperator(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method public static getNetworkOperatorName(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method public static getNetworkType(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getNetworkType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method public static getOsVersion(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 60
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 61
    return-void
.end method

.method public static getPackageInfo(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 12
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 145
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 146
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 150
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_11
    invoke-virtual {v3, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_14} :catch_4e

    move-result-object v0

    .line 157
    .local v0, "appInfo":Landroid/content/pm/PackageInfo;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 160
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_1a
    const-string v4, "installer"

    invoke-virtual {v3, p0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v4, "firstInstallTime"

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 162
    const-string v4, "lastUpdateTime"

    iget-wide v6, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    invoke-virtual {v1, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 163
    const-string v4, "versionCode"

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    const-string v4, "versionName"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    const-string v4, "packageName"

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_46} :catch_59

    .line 172
    new-array v4, v9, [Ljava/lang/Object;

    aput-object v1, v4, v8

    invoke-virtual {p1, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 177
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :goto_4d
    return-void

    .line 152
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_4e
    move-exception v2

    .line 153
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/unity3d/ads/device/DeviceError;->APPLICATION_INFO_NOT_AVAILABLE:Lcom/unity3d/ads/device/DeviceError;

    new-array v5, v9, [Ljava/lang/Object;

    aput-object p0, v5, v8

    invoke-virtual {p1, v4, v5}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_4d

    .line 167
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_59
    move-exception v2

    .line 168
    .local v2, "e":Lorg/json/JSONException;
    sget-object v4, Lcom/unity3d/ads/device/DeviceError;->JSON_ERROR:Lcom/unity3d/ads/device/DeviceError;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {p1, v4, v5}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_4d

    .line 175
    .end local v0    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_68
    sget-object v4, Lcom/unity3d/ads/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1, v4, v5}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_4d
.end method

.method public static getProduct(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 439
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getProduct()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 440
    return-void
.end method

.method public static getRingerMode(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 6
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getRingerMode()I

    move-result v0

    .line 197
    .local v0, "ringerMode":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    .line 198
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 213
    :goto_14
    return-void

    .line 200
    :cond_15
    packed-switch v0, :pswitch_data_4c

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled ringerMode error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_14

    .line 202
    :pswitch_2f
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_14

    .line 205
    :pswitch_3d
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->AUDIOMANAGER_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_14

    .line 200
    nop

    :pswitch_data_4c
    .packed-switch -0x2
        :pswitch_3d
        :pswitch_2f
    .end packed-switch
.end method

.method public static getScreenBrightness(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 6
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 302
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getScreenBrightness()I

    move-result v0

    .line 303
    .local v0, "screenBrightness":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_15

    .line 304
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 315
    :goto_14
    return-void

    .line 306
    :cond_15
    packed-switch v0, :pswitch_data_3e

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled screenBrightness error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    goto :goto_14

    .line 308
    :pswitch_2f
    sget-object v1, Lcom/unity3d/ads/device/DeviceError;->APPLICATION_CONTEXT_NULL:Lcom/unity3d/ads/device/DeviceError;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_14

    .line 306
    nop

    :pswitch_data_3e
    .packed-switch -0x1
        :pswitch_2f
    .end packed-switch
.end method

.method public static getScreenDensity(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getScreenDensity()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public static getScreenHeight(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getScreenHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 91
    return-void
.end method

.method public static getScreenLayout(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getScreenLayout()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 76
    return-void
.end method

.method public static getScreenWidth(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getScreenWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method public static getSensorList(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 13
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 455
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 456
    .local v4, "sensors":Lorg/json/JSONArray;
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getSensorList()Ljava/util/List;

    move-result-object v3

    .line 458
    .local v3, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    if-eqz v3, :cond_80

    .line 459
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_80

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    .line 460
    .local v1, "sensor":Landroid/hardware/Sensor;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 462
    .local v2, "sensorInfo":Lorg/json/JSONObject;
    :try_start_22
    const-string v6, "name"

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 463
    const-string v6, "type"

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 464
    const-string v6, "vendor"

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 465
    const-string v6, "maximumRange"

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 466
    const-string v6, "power"

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getPower()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 467
    const-string v6, "version"

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getVersion()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 468
    const-string v6, "resolution"

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getResolution()F

    move-result v7

    float-to-double v8, v7

    invoke-virtual {v2, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 469
    const-string v6, "minDelay"

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getMinDelay()I

    move-result v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_6d} :catch_71

    .line 476
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_11

    .line 471
    :catch_71
    move-exception v0

    .line 472
    .local v0, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/unity3d/ads/device/DeviceError;->JSON_ERROR:Lcom/unity3d/ads/device/DeviceError;

    new-array v6, v11, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p0, v5, v6}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 481
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "sensor":Landroid/hardware/Sensor;
    .end local v2    # "sensorInfo":Lorg/json/JSONObject;
    :goto_7f
    return-void

    .line 480
    :cond_80
    new-array v5, v11, [Ljava/lang/Object;

    aput-object v4, v5, v10

    invoke-virtual {p0, v5}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_7f
.end method

.method private static getStorageTypeFromString(Ljava/lang/String;)Lcom/unity3d/ads/api/DeviceInfo$StorageType;
    .registers 5
    .param p0, "storageType"    # Ljava/lang/String;

    .prologue
    .line 321
    :try_start_0
    invoke-static {p0}, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->valueOf(Ljava/lang/String;)Lcom/unity3d/ads/api/DeviceInfo$StorageType;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    .line 328
    :goto_4
    return-object v1

    .line 323
    :catch_5
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 325
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static getSupportedAbis(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 5
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 444
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 446
    .local v1, "abis":Lorg/json/JSONArray;
    invoke-static {}, Lcom/unity3d/ads/device/Device;->getSupportedAbis()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 447
    .local v0, "abi":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_d

    .line 450
    .end local v0    # "abi":Ljava/lang/String;
    :cond_1d
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 451
    return-void
.end method

.method public static getSystemLanguage(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 218
    return-void
.end method

.method public static getSystemProperty(Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 6
    .param p0, "propertyName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0, p1}, Lcom/unity3d/ads/device/Device;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p2, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 192
    return-void
.end method

.method public static getTimeZone(Ljava/lang/Boolean;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 7
    .param p0, "dst"    # Ljava/lang/Boolean;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 95
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 96
    return-void
.end method

.method public static getTotalMemory(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 5
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 392
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getTotalMemory()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 393
    return-void
.end method

.method public static getTotalSpace(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 10
    .param p0, "storageType"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 361
    invoke-static {p0}, Lcom/unity3d/ads/api/DeviceInfo;->getStorageTypeFromString(Ljava/lang/String;)Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    move-result-object v2

    .line 363
    .local v2, "storage":Lcom/unity3d/ads/api/DeviceInfo$StorageType;
    if-nez v2, :cond_12

    .line 364
    sget-object v3, Lcom/unity3d/ads/device/DeviceError;->INVALID_STORAGETYPE:Lcom/unity3d/ads/device/DeviceError;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 373
    :goto_11
    return-void

    .line 368
    :cond_12
    invoke-static {v2}, Lcom/unity3d/ads/api/DeviceInfo;->getFileForStorageType(Lcom/unity3d/ads/api/DeviceInfo$StorageType;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/unity3d/ads/device/Device;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 369
    .local v0, "space":J
    const-wide/16 v4, -0x1

    cmp-long v3, v0, v4

    if-lez v3, :cond_2c

    .line 370
    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p1, v3}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    goto :goto_11

    .line 372
    :cond_2c
    sget-object v3, Lcom/unity3d/ads/device/DeviceError;->COULDNT_GET_STORAGE_LOCATION:Lcom/unity3d/ads/device/DeviceError;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    goto :goto_11
.end method

.method public static getUniqueEventId(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 181
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->getUniqueEventId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 182
    return-void
.end method

.method public static isAppInstalled(Ljava/lang/String;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 5
    .param p0, "pkgname"    # Ljava/lang/String;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 128
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/unity3d/ads/device/Device;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public static isRooted(Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 4
    .param p0, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {}, Lcom/unity3d/ads/device/Device;->isRooted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 134
    return-void
.end method

.method public static registerVolumeChangeListener(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 5
    .param p0, "streamType"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 264
    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo;->_volumeChangeListeners:Landroid/util/SparseArray;

    if-nez v1, :cond_b

    .line 265
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/unity3d/ads/api/DeviceInfo;->_volumeChangeListeners:Landroid/util/SparseArray;

    .line 268
    :cond_b
    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo;->_volumeChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_28

    .line 269
    new-instance v0, Lcom/unity3d/ads/api/DeviceInfo$1;

    invoke-direct {v0, p0}, Lcom/unity3d/ads/api/DeviceInfo$1;-><init>(Ljava/lang/Integer;)V

    .line 282
    .local v0, "listener":Lcom/unity3d/ads/device/IVolumeChangeListener;
    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo;->_volumeChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 283
    invoke-static {v0}, Lcom/unity3d/ads/device/VolumeChange;->registerListener(Lcom/unity3d/ads/device/IVolumeChangeListener;)V

    .line 286
    .end local v0    # "listener":Lcom/unity3d/ads/device/IVolumeChangeListener;
    :cond_28
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public static unregisterVolumeChangeListener(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 5
    .param p0, "streamType"    # Ljava/lang/Integer;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation runtime Lcom/unity3d/ads/webview/bridge/WebViewExposed;
    .end annotation

    .prologue
    .line 291
    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo;->_volumeChangeListeners:Landroid/util/SparseArray;

    if-eqz v1, :cond_28

    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo;->_volumeChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 292
    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo;->_volumeChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/device/IVolumeChangeListener;

    .line 293
    .local v0, "listener":Lcom/unity3d/ads/device/IVolumeChangeListener;
    invoke-static {v0}, Lcom/unity3d/ads/device/VolumeChange;->unregisterListener(Lcom/unity3d/ads/device/IVolumeChangeListener;)V

    .line 294
    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo;->_volumeChangeListeners:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 297
    .end local v0    # "listener":Lcom/unity3d/ads/device/IVolumeChangeListener;
    :cond_28
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->invoke([Ljava/lang/Object;)V

    .line 298
    return-void
.end method

###### Class com.unity3d.ads.api.DeviceInfo.AnonymousClass1 (com.unity3d.ads.api.DeviceInfo$1)
.class final Lcom/unity3d/ads/api/DeviceInfo$1;
.super Ljava/lang/Object;
.source "DeviceInfo.java"

# interfaces
.implements Lcom/unity3d/ads/device/IVolumeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/api/DeviceInfo;->registerVolumeChangeListener(Ljava/lang/Integer;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private _streamType:I

.field final synthetic val$streamType:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 269
    iput-object p1, p0, Lcom/unity3d/ads/api/DeviceInfo$1;->val$streamType:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iget-object v0, p0, Lcom/unity3d/ads/api/DeviceInfo$1;->val$streamType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/api/DeviceInfo$1;->_streamType:I

    return-void
.end method


# virtual methods
.method public getStreamType()I
    .registers 2

    .prologue
    .line 278
    iget v0, p0, Lcom/unity3d/ads/api/DeviceInfo$1;->_streamType:I

    return v0
.end method

.method public onVolumeChanged(I)V
    .registers 8
    .param p1, "volume"    # I

    .prologue
    .line 273
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->DEVICEINFO:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;->VOLUME_CHANGED:Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/unity3d/ads/api/DeviceInfo$1;->getStreamType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/unity3d/ads/api/DeviceInfo$1;->_streamType:I

    invoke-static {v5}, Lcom/unity3d/ads/device/Device;->getStreamMaxVolume(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 274
    return-void
.end method

###### Class com.unity3d.ads.api.DeviceInfo.AnonymousClass2 (com.unity3d.ads.api.DeviceInfo$2)
.class synthetic Lcom/unity3d/ads/api/DeviceInfo$2;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/api/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$unity3d$ads$api$DeviceInfo$StorageType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 332
    invoke-static {}, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->values()[Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/ads/api/DeviceInfo$2;->$SwitchMap$com$unity3d$ads$api$DeviceInfo$StorageType:[I

    :try_start_9
    sget-object v0, Lcom/unity3d/ads/api/DeviceInfo$2;->$SwitchMap$com$unity3d$ads$api$DeviceInfo$StorageType:[I

    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->INTERNAL:Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    invoke-virtual {v1}, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_22

    :goto_14
    :try_start_14
    sget-object v0, Lcom/unity3d/ads/api/DeviceInfo$2;->$SwitchMap$com$unity3d$ads$api$DeviceInfo$StorageType:[I

    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->EXTERNAL:Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    invoke-virtual {v1}, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    goto :goto_1f

    :catch_22
    move-exception v0

    goto :goto_14
.end method

###### Class com.unity3d.ads.api.DeviceInfo.DeviceInfoEvent (com.unity3d.ads.api.DeviceInfo$DeviceInfoEvent)
.class public final enum Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/api/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceInfoEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

.field public static final enum VOLUME_CHANGED:Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v0, Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

    const-string v1, "VOLUME_CHANGED"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;->VOLUME_CHANGED:Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;->VOLUME_CHANGED:Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

    aput-object v1, v0, v2

    sput-object v0, Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;->$VALUES:[Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;->$VALUES:[Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

    invoke-virtual {v0}, [Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/api/DeviceInfo$DeviceInfoEvent;

    return-object v0
.end method

###### Class com.unity3d.ads.api.DeviceInfo.StorageType (com.unity3d.ads.api.DeviceInfo$StorageType)
.class public final enum Lcom/unity3d/ads/api/DeviceInfo$StorageType;
.super Ljava/lang/Enum;
.source "DeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/api/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/api/DeviceInfo$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/api/DeviceInfo$StorageType;

.field public static final enum EXTERNAL:Lcom/unity3d/ads/api/DeviceInfo$StorageType;

.field public static final enum INTERNAL:Lcom/unity3d/ads/api/DeviceInfo$StorageType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/api/DeviceInfo$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->EXTERNAL:Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    new-instance v0, Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/api/DeviceInfo$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->INTERNAL:Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->EXTERNAL:Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->INTERNAL:Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->$VALUES:[Lcom/unity3d/ads/api/DeviceInfo$StorageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/api/DeviceInfo$StorageType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/api/DeviceInfo$StorageType;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/unity3d/ads/api/DeviceInfo$StorageType;->$VALUES:[Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    invoke-virtual {v0}, [Lcom/unity3d/ads/api/DeviceInfo$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/api/DeviceInfo$StorageType;

    return-object v0
.end method
