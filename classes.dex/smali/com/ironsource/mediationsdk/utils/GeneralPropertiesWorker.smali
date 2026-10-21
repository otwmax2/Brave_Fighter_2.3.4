###### Class com.ironsource.mediationsdk.utils.GeneralPropertiesWorker (com.ironsource.mediationsdk.utils.GeneralPropertiesWorker)
.class public Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;
.super Ljava/lang/Object;
.source "GeneralPropertiesWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MAX_MINUTES_OFFSET:I = 0x348

.field private static final MINUTES_OFFSET_STEP:I = 0xf

.field private static final MIN_MINUTES_OFFSET:I = -0x2d0

.field public static final SDK_VERSION:Ljava/lang/String; = "sdkVersion"


# instance fields
.field private final ADVERTISING_ID:Ljava/lang/String;

.field private final ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

.field private final ADVERTISING_ID_TYPE:Ljava/lang/String;

.field private final ANDROID_OS_VERSION:Ljava/lang/String;

.field private final APPLICATION_KEY:Ljava/lang/String;

.field private final BATTERY_LEVEL:Ljava/lang/String;

.field private final BUNDLE_ID:Ljava/lang/String;

.field private final CONNECTION_TYPE:Ljava/lang/String;

.field private final DEVICE_MODEL:Ljava/lang/String;

.field private final DEVICE_OEM:Ljava/lang/String;

.field private final DEVICE_OS:Ljava/lang/String;

.field private final EXTERNAL_FREE_MEMORY:Ljava/lang/String;

.field private final GMT_MINUTES_OFFSET:Ljava/lang/String;

.field private final INTERNAL_FREE_MEMORY:Ljava/lang/String;

.field private final KEY_IS_ROOT:Ljava/lang/String;

.field private final KEY_PLUGIN_FW_VERSION:Ljava/lang/String;

.field private final KEY_PLUGIN_TYPE:Ljava/lang/String;

.field private final KEY_PLUGIN_VERSION:Ljava/lang/String;

.field private final KEY_SESSION_ID:Ljava/lang/String;

.field private final LANGUAGE:Ljava/lang/String;

.field private final LOCATION_LAT:Ljava/lang/String;

.field private final LOCATION_LON:Ljava/lang/String;

.field private final MEDIATION_TYPE:Ljava/lang/String;

.field private final MOBILE_CARRIER:Ljava/lang/String;

.field private final PUBLISHER_APP_VERSION:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    .line 49
    const-string v0, "bundleId"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->BUNDLE_ID:Ljava/lang/String;

    .line 50
    const-string v0, "advertisingId"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID:Ljava/lang/String;

    .line 51
    const-string v0, "isLimitAdTrackingEnabled"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

    .line 52
    const-string v0, "appKey"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->APPLICATION_KEY:Ljava/lang/String;

    .line 53
    const-string v0, "deviceOS"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OS:Ljava/lang/String;

    .line 54
    const-string v0, "osVersion"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ANDROID_OS_VERSION:Ljava/lang/String;

    .line 55
    const-string v0, "connectionType"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->CONNECTION_TYPE:Ljava/lang/String;

    .line 57
    const-string v0, "language"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LANGUAGE:Ljava/lang/String;

    .line 58
    const-string v0, "deviceOEM"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OEM:Ljava/lang/String;

    .line 59
    const-string v0, "deviceModel"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_MODEL:Ljava/lang/String;

    .line 60
    const-string v0, "mobileCarrier"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->MOBILE_CARRIER:Ljava/lang/String;

    .line 61
    const-string v0, "externalFreeMemory"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->EXTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 62
    const-string v0, "internalFreeMemory"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->INTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 63
    const-string v0, "battery"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->BATTERY_LEVEL:Ljava/lang/String;

    .line 64
    const-string v0, "lat"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LAT:Ljava/lang/String;

    .line 65
    const-string v0, "lon"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LON:Ljava/lang/String;

    .line 66
    const-string v0, "gmtMinutesOffset"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->GMT_MINUTES_OFFSET:Ljava/lang/String;

    .line 67
    const-string v0, "appVersion"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->PUBLISHER_APP_VERSION:Ljava/lang/String;

    .line 68
    const-string v0, "sessionId"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_SESSION_ID:Ljava/lang/String;

    .line 69
    const-string v0, "pluginType"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_TYPE:Ljava/lang/String;

    .line 70
    const-string v0, "pluginVersion"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_VERSION:Ljava/lang/String;

    .line 71
    const-string v0, "plugin_fw_v"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_FW_VERSION:Ljava/lang/String;

    .line 72
    const-string v0, "jb"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_IS_ROOT:Ljava/lang/String;

    .line 73
    const-string v0, "advertisingIdType"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_TYPE:Ljava/lang/String;

    .line 74
    const-string v0, "mt"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->MEDIATION_TYPE:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    .line 49
    const-string v0, "bundleId"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->BUNDLE_ID:Ljava/lang/String;

    .line 50
    const-string v0, "advertisingId"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID:Ljava/lang/String;

    .line 51
    const-string v0, "isLimitAdTrackingEnabled"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_IS_LIMIT_TRACKING:Ljava/lang/String;

    .line 52
    const-string v0, "appKey"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->APPLICATION_KEY:Ljava/lang/String;

    .line 53
    const-string v0, "deviceOS"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OS:Ljava/lang/String;

    .line 54
    const-string v0, "osVersion"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ANDROID_OS_VERSION:Ljava/lang/String;

    .line 55
    const-string v0, "connectionType"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->CONNECTION_TYPE:Ljava/lang/String;

    .line 57
    const-string v0, "language"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LANGUAGE:Ljava/lang/String;

    .line 58
    const-string v0, "deviceOEM"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_OEM:Ljava/lang/String;

    .line 59
    const-string v0, "deviceModel"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->DEVICE_MODEL:Ljava/lang/String;

    .line 60
    const-string v0, "mobileCarrier"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->MOBILE_CARRIER:Ljava/lang/String;

    .line 61
    const-string v0, "externalFreeMemory"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->EXTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 62
    const-string v0, "internalFreeMemory"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->INTERNAL_FREE_MEMORY:Ljava/lang/String;

    .line 63
    const-string v0, "battery"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->BATTERY_LEVEL:Ljava/lang/String;

    .line 64
    const-string v0, "lat"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LAT:Ljava/lang/String;

    .line 65
    const-string v0, "lon"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->LOCATION_LON:Ljava/lang/String;

    .line 66
    const-string v0, "gmtMinutesOffset"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->GMT_MINUTES_OFFSET:Ljava/lang/String;

    .line 67
    const-string v0, "appVersion"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->PUBLISHER_APP_VERSION:Ljava/lang/String;

    .line 68
    const-string v0, "sessionId"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_SESSION_ID:Ljava/lang/String;

    .line 69
    const-string v0, "pluginType"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_TYPE:Ljava/lang/String;

    .line 70
    const-string v0, "pluginVersion"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_VERSION:Ljava/lang/String;

    .line 71
    const-string v0, "plugin_fw_v"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_PLUGIN_FW_VERSION:Ljava/lang/String;

    .line 72
    const-string v0, "jb"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->KEY_IS_ROOT:Ljava/lang/String;

    .line 73
    const-string v0, "advertisingIdType"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->ADVERTISING_ID_TYPE:Ljava/lang/String;

    .line 74
    const-string v0, "mt"

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->MEDIATION_TYPE:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    .line 87
    return-void
.end method

.method private collectInformation()Ljava/util/Map;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 113
    .local v13, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->generateUUID()Ljava/lang/String;

    move-result-object v14

    .line 114
    .local v14, "strVal":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_14

    .line 115
    const-string v15, "sessionId"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getBundleId()Ljava/lang/String;

    move-result-object v14

    .line 119
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_36

    .line 120
    const-string v15, "bundleId"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {v15, v14}, Lcom/ironsource/environment/ApplicationContext;->getPublisherApplicationVersion(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 124
    .local v12, "publAppVersion":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_36

    .line 125
    const-string v15, "appVersion"

    invoke-interface {v13, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .end local v12    # "publAppVersion":Ljava/lang/String;
    :cond_36
    const-string v15, "appKey"

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getApplicationKey()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v2, ""

    .line 132
    .local v2, "advertisingId":Ljava/lang/String;
    const-string v4, ""

    .line 133
    .local v4, "advertisingIdType":Ljava/lang/String;
    const/4 v8, 0x0

    .line 138
    .local v8, "isLimitAdTrackingEnabled":Z
    :try_start_46
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/ironsource/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "advertisingIdInfo":[Ljava/lang/String;
    if-eqz v3, :cond_6e

    array-length v15, v3

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_6e

    .line 140
    const/4 v15, 0x0

    aget-object v15, v3, v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_63

    .line 141
    const/4 v15, 0x0

    aget-object v2, v3, v15

    .line 143
    :cond_63
    const/4 v15, 0x1

    aget-object v15, v3, v15

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_6d} :catch_1ea

    move-result v8

    .line 149
    .end local v3    # "advertisingIdInfo":[Ljava/lang/String;
    :cond_6e
    :goto_6e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1d8

    .line 150
    const-string v4, "GAID"

    .line 160
    :cond_76
    :goto_76
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_91

    .line 161
    const-string v15, "advertisingId"

    invoke-interface {v13, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v15, "advertisingIdType"

    invoke-interface {v13, v15, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v15, "isLimitAdTrackingEnabled"

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_91
    const-string v15, "deviceOS"

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceOS()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getAndroidVersion()Ljava/lang/String;

    move-result-object v14

    .line 169
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_b1

    .line 170
    const-string v15, "osVersion"

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getAndroidVersion()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_b1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    .line 173
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_c4

    .line 174
    const-string v15, "connectionType"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_c4
    const-string v15, "sdkVersion"

    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getSDKVersion()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getLanguage()Ljava/lang/String;

    move-result-object v14

    .line 179
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_de

    .line 180
    const-string v15, "language"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_de
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceOEM()Ljava/lang/String;

    move-result-object v14

    .line 183
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_ed

    .line 184
    const-string v15, "deviceOEM"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :cond_ed
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getDeviceModel()Ljava/lang/String;

    move-result-object v14

    .line 187
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_fc

    .line 188
    const-string v15, "deviceModel"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_fc
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getMobileCarrier()Ljava/lang/String;

    move-result-object v14

    .line 191
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_10b

    .line 192
    const-string v15, "mobileCarrier"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_10b
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getInternalStorageFreeSize()J

    move-result-wide v10

    .line 195
    .local v10, "longVal":J
    const-string v15, "internalFreeMemory"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getExternalStorageFreeSize()J

    move-result-wide v10

    .line 198
    const-string v15, "externalFreeMemory"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getBatteryLevel()I

    move-result v7

    .line 202
    .local v7, "intVal":I
    const-string v15, "battery"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const-string v16, "GeneralProperties.ALLOW_LOCATION_SHARED_PREFS_KEY"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getBooleanFromSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    .line 206
    .local v5, "allowLocation":Z
    if-eqz v5, :cond_171

    .line 207
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getLastKnownLocation()[D

    move-result-object v9

    .line 208
    .local v9, "lastKnownLocation":[D
    if-eqz v9, :cond_171

    array-length v15, v9

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_171

    .line 209
    const-string v15, "lat"

    const/16 v16, 0x0

    aget-wide v16, v9, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v15, "lon"

    const/16 v16, 0x1

    aget-wide v16, v9, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .end local v9    # "lastKnownLocation":[D
    :cond_171
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getGmtMinutesOffset()I

    move-result v6

    .line 215
    .local v6, "gmtMinutesOffset":I
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->validateGmtMinutesOffset(I)Z

    move-result v15

    if-eqz v15, :cond_188

    .line 216
    const-string v15, "gmtMinutesOffset"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v13, v15, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_188
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getPluginType()Ljava/lang/String;

    move-result-object v14

    .line 220
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_197

    .line 221
    const-string v15, "pluginType"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    :cond_197
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getPluginVersion()Ljava/lang/String;

    move-result-object v14

    .line 224
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1a6

    .line 225
    const-string v15, "pluginVersion"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    :cond_1a6
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v14

    .line 228
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1b5

    .line 229
    const-string v15, "plugin_fw_v"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    :cond_1b5
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isRootedDevice()Z

    move-result v15

    invoke-static {v15}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    .line 232
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1c8

    .line 233
    const-string v15, "jb"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_1c8
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->getMediationType()Ljava/lang/String;

    move-result-object v14

    .line 236
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1d7

    .line 237
    const-string v15, "mt"

    invoke-interface {v13, v15, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_1d7
    return-object v13

    .line 153
    .end local v5    # "allowLocation":Z
    .end local v6    # "gmtMinutesOffset":I
    .end local v7    # "intVal":I
    .end local v10    # "longVal":J
    :cond_1d8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/ironsource/environment/DeviceStatus;->getOrGenerateOnceUniqueIdentifier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_76

    .line 155
    const-string v4, "UUID"

    goto/16 :goto_76

    .line 145
    :catch_1ea
    move-exception v15

    goto/16 :goto_6e
.end method

.method private generateUUID()Ljava/lang/String;
    .registers 5

    .prologue
    .line 575
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 576
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    return-object v0
.end method

.method private getAndroidVersion()Ljava/lang/String;
    .registers 6

    .prologue
    .line 318
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 319
    .local v1, "release":Ljava/lang/String;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 320
    .local v2, "sdkVersion":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_28

    move-result-object v3

    .line 322
    .end local v1    # "release":Ljava/lang/String;
    .end local v2    # "sdkVersion":I
    :goto_27
    return-object v3

    .line 321
    :catch_28
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_27
.end method

.method private getApplicationKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getIronSourceAppKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBatteryLevel()I
    .registers 11

    .prologue
    const/4 v4, 0x0

    const/4 v9, -0x1

    .line 454
    const/4 v3, -0x1

    .line 457
    .local v3, "result":I
    :try_start_3
    iget-object v5, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 458
    .local v0, "batteryIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2f

    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 459
    .local v2, "level":I
    :goto_1a
    if-eqz v0, :cond_23

    const-string v5, "scale"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_22} :catch_31

    move-result v4

    .line 462
    .local v4, "scale":I
    :cond_23
    if-eq v2, v9, :cond_2e

    if-eq v4, v9, :cond_2e

    .line 463
    int-to-float v5, v2

    int-to-float v6, v4

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v3, v5

    .line 470
    .end local v0    # "batteryIntent":Landroid/content/Intent;
    .end local v2    # "level":I
    .end local v4    # "scale":I
    :cond_2e
    :goto_2e
    return v3

    .restart local v0    # "batteryIntent":Landroid/content/Intent;
    :cond_2f
    move v2, v4

    .line 458
    goto :goto_1a

    .line 466
    .end local v0    # "batteryIntent":Landroid/content/Intent;
    :catch_31
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":getBatteryLevel()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2e
.end method

.method private getBundleId()Ljava/lang/String;
    .registers 3

    .prologue
    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 283
    :goto_6
    return-object v1

    .line 282
    :catch_7
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_6
.end method

.method private getDeviceModel()Ljava/lang/String;
    .registers 3

    .prologue
    .line 365
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    .line 367
    :goto_2
    return-object v1

    .line 366
    :catch_3
    move-exception v0

    .line 367
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_2
.end method

.method private getDeviceOEM()Ljava/lang/String;
    .registers 3

    .prologue
    .line 352
    :try_start_0
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_3

    .line 354
    :goto_2
    return-object v1

    .line 353
    :catch_3
    move-exception v0

    .line 354
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_2
.end method

.method private getDeviceOS()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    const-string v0, "Android"

    return-object v0
.end method

.method private getExternalStorageFreeSize()J
    .registers 11

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->isExternalStorageAbvailable()Z

    move-result v6

    if-eqz v6, :cond_24

    .line 435
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 436
    .local v4, "path":Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 439
    .local v5, "stat":Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 441
    .local v2, "blockSize":J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 442
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    .line 444
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "path":Ljava/io/File;
    .end local v5    # "stat":Landroid/os/StatFs;
    :goto_23
    return-wide v6

    :cond_24
    const-wide/16 v6, -0x1

    goto :goto_23
.end method

.method private getGmtMinutesOffset()I
    .registers 10

    .prologue
    .line 546
    const/4 v3, 0x0

    .line 549
    .local v3, "result":I
    :try_start_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 550
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-static {v4}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 551
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    .line 553
    .local v2, "offsetInMillis":I
    div-int/lit16 v5, v2, 0x3e8

    div-int/lit8 v3, v5, 0x3c

    .line 556
    div-int/lit8 v5, v3, 0xf

    int-to-float v5, v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1b} :catch_1f

    move-result v5

    mul-int/lit8 v3, v5, 0xf

    .line 561
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v2    # "offsetInMillis":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    :goto_1e
    return v3

    .line 557
    :catch_1f
    move-exception v1

    .line 558
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v5

    sget-object v6, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":getGmtMinutesOffset()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v1}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e
.end method

.method private getInternalStorageFreeSize()J
    .registers 13

    .prologue
    .line 414
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 415
    .local v5, "path":Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 418
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 420
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 422
    .local v0, "availableBlocks":J
    mul-long v8, v0, v2

    const-wide/32 v10, 0x100000

    div-long/2addr v8, v10
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    .line 424
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stat":Landroid/os/StatFs;
    :goto_1d
    return-wide v8

    .line 423
    :catch_1e
    move-exception v4

    .line 424
    .local v4, "e":Ljava/lang/Exception;
    const-wide/16 v8, -0x1

    goto :goto_1d
.end method

.method private getLanguage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 340
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 342
    :goto_8
    return-object v1

    .line 341
    :catch_9
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_8
.end method

.method private getLastKnownLocation()[D
    .registers 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 480
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 481
    .local v18, "result":[D
    const-wide/high16 v6, -0x8000000000000000L

    .line 486
    .local v6, "bestLocationTime":J
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->locationPermissionGranted()Z

    move-result v19

    if-eqz v19, :cond_67

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "location"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/LocationManager;

    .line 491
    .local v13, "locationManager":Landroid/location/LocationManager;
    const/4 v4, 0x0

    .line 493
    .local v4, "bestLocation":Landroid/location/Location;
    invoke-virtual {v13}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v17

    .line 494
    .local v17, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2b
    :goto_2b
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4d

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 495
    .local v16, "provider":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v12

    .line 497
    .local v12, "location":Landroid/location/Location;
    if-eqz v12, :cond_2b

    .line 499
    invoke-virtual {v12}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    .line 500
    .local v8, "currentTime":J
    cmp-long v20, v8, v6

    if-lez v20, :cond_2b

    .line 501
    move-object v4, v12

    .line 502
    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    goto :goto_2b

    .line 508
    .end local v8    # "currentTime":J
    .end local v12    # "location":Landroid/location/Location;
    .end local v16    # "provider":Ljava/lang/String;
    :cond_4d
    if-eqz v4, :cond_67

    .line 509
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 510
    .local v10, "lat":D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v14

    .line 512
    .local v14, "lon":D
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .end local v18    # "result":[D
    const/16 v19, 0x0

    aput-wide v10, v18, v19

    const/16 v19, 0x1

    aput-wide v14, v18, v19
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_67} :catch_68

    .line 521
    .end local v4    # "bestLocation":Landroid/location/Location;
    .end local v10    # "lat":D
    .end local v13    # "locationManager":Landroid/location/LocationManager;
    .end local v14    # "lon":D
    .end local v17    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "result":[D
    :cond_67
    :goto_67
    return-object v18

    .line 516
    .end local v18    # "result":[D
    :catch_68
    move-exception v5

    .line 517
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v19

    sget-object v20, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":getLastLocation()"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 518
    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .restart local v18    # "result":[D
    goto :goto_67
.end method

.method private getMediationType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 581
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSourceObject;->getInstance()Lcom/ironsource/mediationsdk/IronSourceObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSourceObject;->getMediationType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMobileCarrier()Ljava/lang/String;
    .registers 9

    .prologue
    .line 377
    const-string v2, ""

    .line 380
    .local v2, "ret":Ljava/lang/String;
    :try_start_2
    iget-object v4, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 381
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_1b

    .line 382
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "operatorName":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_17} :catch_1c

    move-result v4

    if-nez v4, :cond_1b

    .line 384
    move-object v2, v1

    .line 390
    .end local v1    # "operatorName":Ljava/lang/String;
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1b
    :goto_1b
    return-object v2

    .line 386
    :catch_1c
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":getMobileCarrier()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method private getPluginFrameworkVersion()Ljava/lang/String;
    .registers 6

    .prologue
    .line 265
    const-string v1, ""

    .line 267
    .local v1, "result":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v1

    .line 272
    :goto_a
    return-object v1

    .line 269
    :catch_b
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "getPluginFrameworkVersion()"

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method private getPluginType()Ljava/lang/String;
    .registers 6

    .prologue
    .line 243
    const-string v1, ""

    .line 245
    .local v1, "result":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v1

    .line 250
    :goto_a
    return-object v1

    .line 247
    :catch_b
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "getPluginType()"

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method private getPluginVersion()Ljava/lang/String;
    .registers 6

    .prologue
    .line 254
    const-string v1, ""

    .line 256
    .local v1, "result":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/mediationsdk/config/ConfigFile;->getPluginVersion()Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_b

    move-result-object v1

    .line 261
    :goto_a
    return-object v1

    .line 258
    :catch_b
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "getPluginVersion()"

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method private getSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    invoke-static {}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isExternalStorageAbvailable()Z
    .registers 4

    .prologue
    .line 400
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    .line 401
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 403
    :goto_a
    return v1

    .line 402
    :catch_b
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_a
.end method

.method private locationPermissionGranted()Z
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 531
    :try_start_1
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 532
    .local v1, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_8} :catch_d

    move-result v2

    .line 533
    .local v2, "res":I
    if-nez v2, :cond_c

    const/4 v3, 0x1

    .line 535
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "res":I
    :cond_c
    :goto_c
    return v3

    .line 534
    :catch_d
    move-exception v0

    .line 535
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_c
.end method

.method private validateGmtMinutesOffset(I)Z
    .registers 4
    .param p1, "offset"    # I

    .prologue
    .line 565
    const/16 v1, 0x348

    if-gt p1, v1, :cond_e

    const/16 v1, -0x2d0

    if-lt p1, v1, :cond_e

    rem-int/lit8 v1, p1, 0xf

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 566
    .local v0, "isValid":Z
    :goto_d
    return v0

    .line 565
    .end local v0    # "isValid":Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 92
    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->collectInformation()Ljava/util/Map;

    move-result-object v1

    .line 93
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->putKeys(Ljava/util/Map;)V

    .line 96
    iget-object v2, p0, Lcom/ironsource/mediationsdk/utils/GeneralPropertiesWorker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/ironsource/mediationsdk/sdk/GeneralProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveGeneralProperties(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 100
    .end local v1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_18
    return-void

    .line 97
    :catch_19
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method
