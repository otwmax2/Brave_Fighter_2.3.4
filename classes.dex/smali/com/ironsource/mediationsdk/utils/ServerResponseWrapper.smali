###### Class com.ironsource.mediationsdk.utils.ServerResponseWrapper (com.ironsource.mediationsdk.utils.ServerResponseWrapper)
.class public Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;
.super Ljava/lang/Object;
.source "ServerResponseWrapper.java"


# static fields
.field public static final APP_KEY_FIELD:Ljava/lang/String; = "appKey"

.field public static final RESPONSE_FIELD:Ljava/lang/String; = "response"

.field public static final USER_ID_FIELD:Ljava/lang/String; = "userId"


# instance fields
.field private final AB_TESTING:Ljava/lang/String;

.field private final ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

.field private final ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

.field private final AD_UNITS_FIELD:Ljava/lang/String;

.field private final ALLOW_LOCATION:Ljava/lang/String;

.field private final APPLICATION_FIELD:Ljava/lang/String;

.field private final BACKFILL_FIELD:Ljava/lang/String;

.field private final BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

.field private final BN_FIELD:Ljava/lang/String;

.field private final CONFIGURATIONS_FIELD:Ljava/lang/String;

.field private final CONSOLE_FIELD:Ljava/lang/String;

.field private final DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

.field private final DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

.field private final DEFAULT_BANNER_LOAD_REFRESH_INTERVAL:Ljava/lang/String;

.field private final DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

.field private final DEFAULT_LOG_LEVEL:I

.field private final DEFAULT_MAX_EVENTS_PER_BATCH:I

.field private final ERROR_KEY:Ljava/lang/String;

.field private final EVENTS_FIELD:Ljava/lang/String;

.field private final INTEGRATION_FIELD:Ljava/lang/String;

.field private final IS_FIELD:Ljava/lang/String;

.field private final IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

.field private final LOGGERS_FIELD:Ljava/lang/String;

.field private final MAX_EVENTS_PER_BATCH:Ljava/lang/String;

.field private final MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

.field private final MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

.field private final OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

.field private final OW_FIELD:Ljava/lang/String;

.field private final PLACEMENTS_FIELD:Ljava/lang/String;

.field private final PLACEMENT_ID_FIELD:Ljava/lang/String;

.field private final PLACEMENT_NAME_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

.field private final PREMIUM_FIELD:Ljava/lang/String;

.field private final PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

.field private final PROVIDER_ORDER_FIELD:Ljava/lang/String;

.field private final PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

.field private final PUBLISHER_FIELD:Ljava/lang/String;

.field private final RV_FIELD:Ljava/lang/String;

.field private final SEGMENT_FIELD:Ljava/lang/String;

.field private final SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

.field private final SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

.field private final SERVER_EVENTS_TYPE:Ljava/lang/String;

.field private final SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

.field private final SERVER_FIELD:Ljava/lang/String;

.field private final SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

.field private final UUID_ENABLED_FIELD:Ljava/lang/String;

.field private final VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

.field private final VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

.field private mContext:Landroid/content/Context;

.field private mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

.field private mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

.field private mResponse:Lorg/json/JSONObject;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "jsonData"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v1, "error"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    .line 52
    const/4 v1, 0x3

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_LOG_LEVEL:I

    .line 53
    const/4 v1, 0x2

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    .line 54
    const/16 v1, 0x3c

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    .line 55
    const/16 v1, 0x2710

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

    .line 56
    const/16 v1, 0x1388

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    .line 58
    const-string v1, "providerOrder"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_ORDER_FIELD:Ljava/lang/String;

    .line 59
    const-string v1, "providerSettings"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

    .line 60
    const-string v1, "configurations"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONFIGURATIONS_FIELD:Ljava/lang/String;

    .line 62
    const-string v1, "adUnits"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_UNITS_FIELD:Ljava/lang/String;

    .line 63
    const-string v1, "providerLoadName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

    .line 64
    const-string v1, "application"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->APPLICATION_FIELD:Ljava/lang/String;

    .line 65
    const-string v1, "rewardedVideo"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->RV_FIELD:Ljava/lang/String;

    .line 66
    const-string v1, "interstitial"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_FIELD:Ljava/lang/String;

    .line 67
    const-string v1, "offerwall"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OW_FIELD:Ljava/lang/String;

    .line 68
    const-string v1, "banner"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BN_FIELD:Ljava/lang/String;

    .line 69
    const-string v1, "integration"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->INTEGRATION_FIELD:Ljava/lang/String;

    .line 70
    const-string v1, "loggers"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->LOGGERS_FIELD:Ljava/lang/String;

    .line 71
    const-string v1, "segment"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEGMENT_FIELD:Ljava/lang/String;

    .line 72
    const-string v1, "events"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EVENTS_FIELD:Ljava/lang/String;

    .line 74
    const-string v1, "maxNumOfAdaptersToLoadOnStart"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

    .line 75
    const-string v1, "adapterTimeOutInSeconds"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

    .line 76
    const-string v1, "atim"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

    .line 77
    const-string v1, "bannerInterval"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_LOAD_REFRESH_INTERVAL:Ljava/lang/String;

    .line 80
    const-string v1, "server"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_FIELD:Ljava/lang/String;

    .line 81
    const-string v1, "publisher"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PUBLISHER_FIELD:Ljava/lang/String;

    .line 82
    const-string v1, "console"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONSOLE_FIELD:Ljava/lang/String;

    .line 83
    const-string v1, "sendUltraEvents"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

    .line 84
    const-string v1, "sendEventsToggle"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

    .line 85
    const-string v1, "serverEventsURL"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

    .line 86
    const-string v1, "serverEventsType"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_TYPE:Ljava/lang/String;

    .line 87
    const-string v1, "backupThreshold"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

    .line 88
    const-string v1, "maxNumberOfEvents"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

    .line 89
    const-string v1, "maxEventsPerBatch"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_EVENTS_PER_BATCH:Ljava/lang/String;

    .line 90
    const-string v1, "optOut"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

    .line 91
    const-string v1, "allowLocation"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ALLOW_LOCATION:Ljava/lang/String;

    .line 93
    const-string v1, "placements"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENTS_FIELD:Ljava/lang/String;

    .line 94
    const-string v1, "placementId"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_ID_FIELD:Ljava/lang/String;

    .line 95
    const-string v1, "placementName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_NAME_FIELD:Ljava/lang/String;

    .line 96
    const-string v1, "delivery"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

    .line 97
    const-string v1, "capping"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

    .line 98
    const-string v1, "pacing"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

    .line 99
    const-string v1, "enabled"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

    .line 100
    const-string v1, "maxImpressions"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

    .line 101
    const-string v1, "numOfSeconds"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

    .line 102
    const-string v1, "unit"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

    .line 103
    const-string v1, "virtualItemName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

    .line 104
    const-string v1, "virtualItemCount"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

    .line 105
    const-string v1, "backFill"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKFILL_FIELD:Ljava/lang/String;

    .line 106
    const-string v1, "premium"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PREMIUM_FIELD:Ljava/lang/String;

    .line 107
    const-string v1, "uuidEnabled"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->UUID_ENABLED_FIELD:Ljava/lang/String;

    .line 108
    const-string v1, "abt"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AB_TESTING:Ljava/lang/String;

    .line 110
    const-string v1, "spId"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

    .line 111
    const-string v1, "mpis"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    .line 127
    :try_start_db
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 128
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 132
    :goto_e8
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseProviderSettings()V

    .line 133
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseConfigurations()V

    .line 134
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseProviderOrder()V

    .line 136
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f9

    const-string p2, ""

    .end local p2    # "appKey":Ljava/lang/String;
    :cond_f9
    iput-object p2, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 137
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_103

    const-string p3, ""

    .end local p3    # "userId":Ljava/lang/String;
    :cond_103
    iput-object p3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 142
    :goto_105
    return-void

    .line 130
    .restart local p2    # "appKey":Ljava/lang/String;
    .restart local p3    # "userId":Ljava/lang/String;
    :cond_106
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;
    :try_end_10d
    .catch Lorg/json/JSONException; {:try_start_db .. :try_end_10d} :catch_10e

    goto :goto_e8

    .line 138
    .end local p2    # "appKey":Ljava/lang/String;
    .end local p3    # "userId":Ljava/lang/String;
    :catch_10e
    move-exception v0

    .line 139
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    goto :goto_105
.end method

.method public constructor <init>(Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;)V
    .registers 5
    .param p1, "srw"    # Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-string v1, "error"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    .line 52
    const/4 v1, 0x3

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_LOG_LEVEL:I

    .line 53
    const/4 v1, 0x2

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    .line 54
    const/16 v1, 0x3c

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    .line 55
    const/16 v1, 0x2710

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_SMARTLOAD_TIMEOUT:I

    .line 56
    const/16 v1, 0x1388

    iput v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_MAX_EVENTS_PER_BATCH:I

    .line 58
    const-string v1, "providerOrder"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_ORDER_FIELD:Ljava/lang/String;

    .line 59
    const-string v1, "providerSettings"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

    .line 60
    const-string v1, "configurations"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONFIGURATIONS_FIELD:Ljava/lang/String;

    .line 62
    const-string v1, "adUnits"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AD_UNITS_FIELD:Ljava/lang/String;

    .line 63
    const-string v1, "providerLoadName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

    .line 64
    const-string v1, "application"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->APPLICATION_FIELD:Ljava/lang/String;

    .line 65
    const-string v1, "rewardedVideo"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->RV_FIELD:Ljava/lang/String;

    .line 66
    const-string v1, "interstitial"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_FIELD:Ljava/lang/String;

    .line 67
    const-string v1, "offerwall"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OW_FIELD:Ljava/lang/String;

    .line 68
    const-string v1, "banner"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BN_FIELD:Ljava/lang/String;

    .line 69
    const-string v1, "integration"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->INTEGRATION_FIELD:Ljava/lang/String;

    .line 70
    const-string v1, "loggers"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->LOGGERS_FIELD:Ljava/lang/String;

    .line 71
    const-string v1, "segment"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEGMENT_FIELD:Ljava/lang/String;

    .line 72
    const-string v1, "events"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->EVENTS_FIELD:Ljava/lang/String;

    .line 74
    const-string v1, "maxNumOfAdaptersToLoadOnStart"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

    .line 75
    const-string v1, "adapterTimeOutInSeconds"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

    .line 76
    const-string v1, "atim"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_MILLIS_FIELD:Ljava/lang/String;

    .line 77
    const-string v1, "bannerInterval"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_BANNER_LOAD_REFRESH_INTERVAL:Ljava/lang/String;

    .line 80
    const-string v1, "server"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_FIELD:Ljava/lang/String;

    .line 81
    const-string v1, "publisher"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PUBLISHER_FIELD:Ljava/lang/String;

    .line 82
    const-string v1, "console"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->CONSOLE_FIELD:Ljava/lang/String;

    .line 83
    const-string v1, "sendUltraEvents"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

    .line 84
    const-string v1, "sendEventsToggle"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

    .line 85
    const-string v1, "serverEventsURL"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

    .line 86
    const-string v1, "serverEventsType"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_TYPE:Ljava/lang/String;

    .line 87
    const-string v1, "backupThreshold"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

    .line 88
    const-string v1, "maxNumberOfEvents"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

    .line 89
    const-string v1, "maxEventsPerBatch"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->MAX_EVENTS_PER_BATCH:Ljava/lang/String;

    .line 90
    const-string v1, "optOut"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

    .line 91
    const-string v1, "allowLocation"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->ALLOW_LOCATION:Ljava/lang/String;

    .line 93
    const-string v1, "placements"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENTS_FIELD:Ljava/lang/String;

    .line 94
    const-string v1, "placementId"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_ID_FIELD:Ljava/lang/String;

    .line 95
    const-string v1, "placementName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_NAME_FIELD:Ljava/lang/String;

    .line 96
    const-string v1, "delivery"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

    .line 97
    const-string v1, "capping"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

    .line 98
    const-string v1, "pacing"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

    .line 99
    const-string v1, "enabled"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

    .line 100
    const-string v1, "maxImpressions"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

    .line 101
    const-string v1, "numOfSeconds"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

    .line 102
    const-string v1, "unit"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

    .line 103
    const-string v1, "virtualItemName"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

    .line 104
    const-string v1, "virtualItemCount"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

    .line 105
    const-string v1, "backFill"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->BACKFILL_FIELD:Ljava/lang/String;

    .line 106
    const-string v1, "premium"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->PREMIUM_FIELD:Ljava/lang/String;

    .line 107
    const-string v1, "uuidEnabled"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->UUID_ENABLED_FIELD:Ljava/lang/String;

    .line 108
    const-string v1, "abt"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->AB_TESTING:Ljava/lang/String;

    .line 110
    const-string v1, "spId"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->SUB_PROVIDER_ID_FIELD:Ljava/lang/String;

    .line 111
    const-string v1, "mpis"

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->IS_MULTIPLE_INSTANCES_FIELD:Ljava/lang/String;

    .line 151
    :try_start_d9
    invoke-direct {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    .line 152
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 153
    iget-object v1, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 154
    iget-object v1, p1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 156
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 157
    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_106} :catch_107

    .line 161
    :goto_106
    return-void

    .line 158
    :catch_107
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    goto :goto_106
.end method

.method private defaultInit()V
    .registers 2

    .prologue
    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 168
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 169
    new-instance v0, Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/model/Configurations;-><init>()V

    iput-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    .line 170
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I
    .registers 8
    .param p1, "mainJson"    # Lorg/json/JSONObject;
    .param p2, "secondaryJson"    # Lorg/json/JSONObject;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 626
    const/4 v0, 0x0

    .line 628
    .local v0, "result":I
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 629
    invoke-virtual {p1, p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 633
    :cond_c
    :goto_c
    if-nez v0, :cond_f

    .line 634
    move v0, p4

    .line 636
    :cond_f
    return v0

    .line 630
    :cond_10
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 631
    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_c
.end method

.method private getLongConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)J
    .registers 12
    .param p1, "mainJson"    # Lorg/json/JSONObject;
    .param p2, "secondaryJson"    # Lorg/json/JSONObject;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # J

    .prologue
    const-wide/16 v4, 0x0

    .line 640
    const-wide/16 v0, 0x0

    .line 642
    .local v0, "result":J
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 643
    invoke-virtual {p1, p3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 647
    :cond_e
    :goto_e
    cmp-long v2, v0, v4

    if-nez v2, :cond_13

    .line 648
    move-wide v0, p4

    .line 650
    :cond_13
    return-wide v0

    .line 644
    :cond_14
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 645
    invoke-virtual {p2, p3, v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_e
.end method

.method private getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    .registers 15
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 735
    if-nez p1, :cond_6

    .line 736
    const/4 v10, 0x0

    .line 770
    :goto_5
    return-object v10

    .line 739
    :cond_6
    new-instance v9, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    invoke-direct {v9}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;-><init>()V

    .line 742
    .local v9, "settingsBuilder":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    const-string v12, "delivery"

    invoke-virtual {p1, v12, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 743
    .local v4, "delivery":Z
    invoke-virtual {v9, v4}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->delivery(Z)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 746
    const-string v12, "capping"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 747
    .local v0, "cappingJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_4b

    .line 748
    const/4 v1, 0x0

    .line 749
    .local v1, "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    const-string v12, "unit"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    .local v2, "cappingUnitString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_37

    .line 751
    sget-object v12, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6c

    .line 752
    sget-object v1, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    .line 757
    :cond_37
    :goto_37
    const-string v12, "maxImpressions"

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 758
    .local v3, "cappingValue":I
    const-string v12, "enabled"

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_7b

    if-lez v3, :cond_7b

    move v5, v10

    .line 759
    .local v5, "isCappingEnabled":Z
    :goto_48
    invoke-virtual {v9, v5, v1, v3}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->capping(ZLcom/ironsource/mediationsdk/model/PlacementCappingType;I)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 763
    .end local v1    # "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .end local v2    # "cappingUnitString":Ljava/lang/String;
    .end local v3    # "cappingValue":I
    .end local v5    # "isCappingEnabled":Z
    :cond_4b
    const-string v12, "pacing"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 764
    .local v7, "pacingJson":Lorg/json/JSONObject;
    if-eqz v7, :cond_67

    .line 765
    const-string v12, "numOfSeconds"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 766
    .local v8, "pacingValue":I
    const-string v12, "enabled"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_7d

    if-lez v8, :cond_7d

    move v6, v10

    .line 767
    .local v6, "isPacingEnabled":Z
    :goto_64
    invoke-virtual {v9, v6, v8}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacing(ZI)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 770
    .end local v6    # "isPacingEnabled":Z
    .end local v8    # "pacingValue":I
    :cond_67
    invoke-virtual {v9}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->build()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v10

    goto :goto_5

    .line 753
    .end local v7    # "pacingJson":Lorg/json/JSONObject;
    .restart local v1    # "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .restart local v2    # "cappingUnitString":Ljava/lang/String;
    :cond_6c
    sget-object v12, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v12}, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_37

    .line 754
    sget-object v1, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    goto :goto_37

    .restart local v3    # "cappingValue":I
    :cond_7b
    move v5, v11

    .line 758
    goto :goto_48

    .end local v1    # "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .end local v2    # "cappingUnitString":Ljava/lang/String;
    .end local v3    # "cappingValue":I
    .restart local v7    # "pacingJson":Lorg/json/JSONObject;
    .restart local v8    # "pacingValue":I
    :cond_7d
    move v6, v11

    .line 766
    goto :goto_64
.end method

.method private getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 781
    const/4 v0, 0x0

    .line 783
    .local v0, "result":Lorg/json/JSONObject;
    if-eqz p1, :cond_7

    .line 784
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 786
    :cond_7
    return-object v0
.end method

.method private parseConfigurations()V
    .registers 88

    .prologue
    .line 395
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v21, "configurations"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v14, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v54

    .line 396
    .local v54, "configurationsSection":Lorg/json/JSONObject;
    const-string v14, "adUnits"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v47

    .line 397
    .local v47, "adUnitSection":Lorg/json/JSONObject;
    const-string v14, "application"

    move-object/from16 v0, p0

    move-object/from16 v1, v54

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 398
    .local v24, "appSection":Lorg/json/JSONObject;
    const-string v14, "rewardedVideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v78

    .line 399
    .local v78, "rvSection":Lorg/json/JSONObject;
    const-string v14, "interstitial"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v63

    .line 400
    .local v63, "isSection":Lorg/json/JSONObject;
    const-string v14, "offerwall"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v71

    .line 401
    .local v71, "owSection":Lorg/json/JSONObject;
    const-string v14, "banner"

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 403
    .local v23, "bnSection":Lorg/json/JSONObject;
    const-string v14, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v49

    .line 404
    .local v49, "appEventsSection":Lorg/json/JSONObject;
    const-string v14, "loggers"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v68

    .line 405
    .local v68, "loggerSection":Lorg/json/JSONObject;
    const-string v14, "segment"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v84

    .line 407
    .local v84, "segmentSection":Lorg/json/JSONObject;
    const/16 v41, 0x0

    .line 408
    .local v41, "rvConfig":Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
    const/16 v42, 0x0

    .line 409
    .local v42, "isConfig":Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
    const/16 v43, 0x0

    .line 410
    .local v43, "owConfig":Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
    const/16 v34, 0x0

    .line 413
    .local v34, "bannerConfig":Lcom/ironsource/mediationsdk/model/BannerConfigurations;
    if-eqz v24, :cond_8b

    .line 414
    const-string v14, "uuidEnabled"

    const/16 v21, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v66

    .line 415
    .local v66, "isUuidEnabled":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    const-string v21, "uuidEnabled"

    move-object/from16 v0, v21

    move/from16 v1, v66

    invoke-static {v14, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 418
    .end local v66    # "isUuidEnabled":Z
    :cond_8b
    if-eqz v49, :cond_9e

    .line 419
    const-string v14, "abt"

    move-object/from16 v0, v49

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46

    .line 420
    .local v46, "abt":Ljava/lang/String;
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9e

    .line 421
    invoke-static/range {v46 .. v46}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->setABT(Ljava/lang/String;)V

    .line 426
    .end local v46    # "abt":Ljava/lang/String;
    :cond_9e
    if-eqz v78, :cond_1b8

    .line 427
    const-string v14, "placements"

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v77

    .line 428
    .local v77, "rvPlacementsSection":Lorg/json/JSONArray;
    const-string v14, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v76

    .line 430
    .local v76, "rvEventsSection":Lorg/json/JSONObject;
    const-string v14, "maxNumOfAdaptersToLoadOnStart"

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v79

    .line 431
    .local v79, "rvSmartLoadAmount":I
    const-string v14, "adapterTimeOutInSeconds"

    const/16 v21, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v80

    .line 433
    .local v80, "rvSmartLoadTimeout":I
    move-object/from16 v0, v76

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v75

    .line 435
    .local v75, "rewardedVideoCombinedEvents":Lorg/json/JSONObject;
    const-string v14, "sendUltraEvents"

    const/16 v21, 0x0

    move-object/from16 v0, v75

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 436
    .local v5, "rvUltraEvents":Z
    const-string v14, "sendEventsToggle"

    const/16 v21, 0x0

    move-object/from16 v0, v75

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 437
    .local v6, "rvEventsToggle":Z
    const-string v14, "serverEventsURL"

    const-string v21, ""

    move-object/from16 v0, v75

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 438
    .local v7, "rvEventsUrl":Ljava/lang/String;
    const-string v14, "serverEventsType"

    const-string v21, ""

    move-object/from16 v0, v75

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 439
    .local v8, "rvEventsType":Ljava/lang/String;
    const-string v14, "backupThreshold"

    const/16 v21, -0x1

    move-object/from16 v0, v75

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 440
    .local v9, "rvBackupThreshold":I
    const-string v14, "maxNumberOfEvents"

    const/16 v21, -0x1

    move-object/from16 v0, v75

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 441
    .local v10, "rvMaxNumOfEvents":I
    const-string v14, "maxEventsPerBatch"

    const/16 v21, 0x1388

    move-object/from16 v0, v75

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    .line 443
    .local v11, "rvMaxEventsPerBatch":I
    const/4 v12, 0x0

    .line 444
    .local v12, "optOutEvents":[I
    const-string v14, "optOut"

    move-object/from16 v0, v75

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v69

    .line 445
    .local v69, "optOutJsonArray":Lorg/json/JSONArray;
    if-eqz v69, :cond_156

    .line 446
    invoke-virtual/range {v69 .. v69}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v12, v14, [I

    .line 447
    const/16 v58, 0x0

    .local v58, "i":I
    :goto_141
    invoke-virtual/range {v69 .. v69}, Lorg/json/JSONArray;->length()I

    move-result v14

    move/from16 v0, v58

    if-ge v0, v14, :cond_156

    .line 448
    move-object/from16 v0, v69

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    aput v14, v12, v58

    .line 447
    add-int/lit8 v58, v58, 0x1

    goto :goto_141

    .line 452
    .end local v58    # "i":I
    :cond_156
    new-instance v4, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    invoke-direct/range {v4 .. v12}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V

    .line 455
    .local v4, "rvEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    new-instance v41, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    .end local v41    # "rvConfig":Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
    move-object/from16 v0, v41

    move/from16 v1, v79

    move/from16 v2, v80

    invoke-direct {v0, v1, v2, v4}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;-><init>(IILcom/ironsource/mediationsdk/model/ApplicationEvents;)V

    .line 457
    .restart local v41    # "rvConfig":Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
    if-eqz v77, :cond_18e

    .line 458
    const/16 v58, 0x0

    .restart local v58    # "i":I
    :goto_16a
    invoke-virtual/range {v77 .. v77}, Lorg/json/JSONArray;->length()I

    move-result v14

    move/from16 v0, v58

    if-ge v0, v14, :cond_18e

    .line 459
    move-object/from16 v0, v77

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v86

    .line 460
    .local v86, "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleRVPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v72

    .line 462
    .local v72, "placement":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz v72, :cond_18b

    .line 463
    move-object/from16 v0, v41

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->addRewardedVideoPlacement(Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 458
    :cond_18b
    add-int/lit8 v58, v58, 0x1

    goto :goto_16a

    .line 467
    .end local v58    # "i":I
    .end local v72    # "placement":Lcom/ironsource/mediationsdk/model/Placement;
    .end local v86    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_18e
    const-string v14, "backFill"

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 468
    .local v50, "backFillProviderName":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1a3

    .line 469
    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->setBackFillProviderName(Ljava/lang/String;)V

    .line 472
    :cond_1a3
    const-string v14, "premium"

    move-object/from16 v0, v78

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    .line 473
    .local v73, "premiumProviderName":Ljava/lang/String;
    invoke-static/range {v73 .. v73}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1b8

    .line 474
    move-object/from16 v0, v41

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->setPremiumProviderName(Ljava/lang/String;)V

    .line 479
    .end local v4    # "rvEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .end local v5    # "rvUltraEvents":Z
    .end local v6    # "rvEventsToggle":Z
    .end local v7    # "rvEventsUrl":Ljava/lang/String;
    .end local v8    # "rvEventsType":Ljava/lang/String;
    .end local v9    # "rvBackupThreshold":I
    .end local v10    # "rvMaxNumOfEvents":I
    .end local v11    # "rvMaxEventsPerBatch":I
    .end local v12    # "optOutEvents":[I
    .end local v50    # "backFillProviderName":Ljava/lang/String;
    .end local v69    # "optOutJsonArray":Lorg/json/JSONArray;
    .end local v73    # "premiumProviderName":Ljava/lang/String;
    .end local v75    # "rewardedVideoCombinedEvents":Lorg/json/JSONObject;
    .end local v76    # "rvEventsSection":Lorg/json/JSONObject;
    .end local v77    # "rvPlacementsSection":Lorg/json/JSONArray;
    .end local v79    # "rvSmartLoadAmount":I
    .end local v80    # "rvSmartLoadTimeout":I
    :cond_1b8
    if-eqz v63, :cond_2c9

    .line 480
    const-string v14, "placements"

    move-object/from16 v0, v63

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v62

    .line 481
    .local v62, "isPlacementsSection":Lorg/json/JSONArray;
    const-string v14, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v60

    .line 483
    .local v60, "isEventsSection":Lorg/json/JSONObject;
    const-string v14, "maxNumOfAdaptersToLoadOnStart"

    const/16 v21, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v64

    .line 484
    .local v64, "isSmartLoadAmount":I
    const-string v14, "adapterTimeOutInSeconds"

    const/16 v21, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v63

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v65

    .line 486
    .local v65, "isSmartLoadTimeout":I
    move-object/from16 v0, v60

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v59

    .line 488
    .local v59, "interstitialCombinedEvents":Lorg/json/JSONObject;
    const-string v14, "sendEventsToggle"

    const/16 v21, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 489
    .local v15, "isEventsToggle":Z
    const-string v14, "serverEventsURL"

    const-string v21, ""

    move-object/from16 v0, v59

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 490
    .local v16, "isEventsUrl":Ljava/lang/String;
    const-string v14, "serverEventsType"

    const-string v21, ""

    move-object/from16 v0, v59

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 491
    .local v17, "isEventsType":Ljava/lang/String;
    const-string v14, "backupThreshold"

    const/16 v21, -0x1

    move-object/from16 v0, v59

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    .line 492
    .local v18, "isBackupThreshold":I
    const-string v14, "maxNumberOfEvents"

    const/16 v21, -0x1

    move-object/from16 v0, v59

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v19

    .line 493
    .local v19, "isMaxNumOfEvents":I
    const-string v14, "maxEventsPerBatch"

    const/16 v21, 0x1388

    move-object/from16 v0, v59

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v20

    .line 495
    .local v20, "isMaxEventsPerBatch":I
    const/4 v12, 0x0

    .line 496
    .restart local v12    # "optOutEvents":[I
    const-string v14, "optOut"

    move-object/from16 v0, v59

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v69

    .line 497
    .restart local v69    # "optOutJsonArray":Lorg/json/JSONArray;
    if-eqz v69, :cond_264

    .line 498
    invoke-virtual/range {v69 .. v69}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v12, v14, [I

    .line 499
    const/16 v58, 0x0

    .restart local v58    # "i":I
    :goto_24f
    invoke-virtual/range {v69 .. v69}, Lorg/json/JSONArray;->length()I

    move-result v14

    move/from16 v0, v58

    if-ge v0, v14, :cond_264

    .line 500
    move-object/from16 v0, v69

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    aput v14, v12, v58

    .line 499
    add-int/lit8 v58, v58, 0x1

    goto :goto_24f

    .line 504
    .end local v58    # "i":I
    :cond_264
    new-instance v13, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    const/4 v14, 0x0

    move-object/from16 v21, v12

    invoke-direct/range {v13 .. v21}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V

    .line 507
    .local v13, "isEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    new-instance v42, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    .end local v42    # "isConfig":Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
    move-object/from16 v0, v42

    move/from16 v1, v64

    move/from16 v2, v65

    invoke-direct {v0, v1, v2, v13}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;-><init>(IILcom/ironsource/mediationsdk/model/ApplicationEvents;)V

    .line 509
    .restart local v42    # "isConfig":Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
    if-eqz v62, :cond_29f

    .line 510
    const/16 v58, 0x0

    .restart local v58    # "i":I
    :goto_27b
    invoke-virtual/range {v62 .. v62}, Lorg/json/JSONArray;->length()I

    move-result v14

    move/from16 v0, v58

    if-ge v0, v14, :cond_29f

    .line 511
    move-object/from16 v0, v62

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v86

    .line 512
    .restart local v86    # "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleISPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    move-result-object v72

    .line 514
    .local v72, "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz v72, :cond_29c

    .line 515
    move-object/from16 v0, v42

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->addInterstitialPlacement(Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 510
    :cond_29c
    add-int/lit8 v58, v58, 0x1

    goto :goto_27b

    .line 519
    .end local v58    # "i":I
    .end local v72    # "placement":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .end local v86    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_29f
    const-string v14, "backFill"

    move-object/from16 v0, v63

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 520
    .restart local v50    # "backFillProviderName":Ljava/lang/String;
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2b4

    .line 521
    move-object/from16 v0, v42

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->setBackFillProviderName(Ljava/lang/String;)V

    .line 524
    :cond_2b4
    const-string v14, "premium"

    move-object/from16 v0, v63

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    .line 525
    .restart local v73    # "premiumProviderName":Ljava/lang/String;
    invoke-static/range {v73 .. v73}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2c9

    .line 526
    move-object/from16 v0, v42

    move-object/from16 v1, v73

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->setPremiumProviderName(Ljava/lang/String;)V

    .line 532
    .end local v12    # "optOutEvents":[I
    .end local v13    # "isEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .end local v15    # "isEventsToggle":Z
    .end local v16    # "isEventsUrl":Ljava/lang/String;
    .end local v17    # "isEventsType":Ljava/lang/String;
    .end local v18    # "isBackupThreshold":I
    .end local v19    # "isMaxNumOfEvents":I
    .end local v20    # "isMaxEventsPerBatch":I
    .end local v50    # "backFillProviderName":Ljava/lang/String;
    .end local v59    # "interstitialCombinedEvents":Lorg/json/JSONObject;
    .end local v60    # "isEventsSection":Lorg/json/JSONObject;
    .end local v62    # "isPlacementsSection":Lorg/json/JSONArray;
    .end local v64    # "isSmartLoadAmount":I
    .end local v65    # "isSmartLoadTimeout":I
    .end local v69    # "optOutJsonArray":Lorg/json/JSONArray;
    .end local v73    # "premiumProviderName":Ljava/lang/String;
    :cond_2c9
    if-eqz v23, :cond_3b7

    .line 533
    const-string v14, "placements"

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v53

    .line 535
    .local v53, "bnPlacementsSection":Lorg/json/JSONArray;
    const-string v14, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v14}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v52

    .line 536
    .local v52, "bnEventsSection":Lorg/json/JSONObject;
    const-string v14, "maxNumOfAdaptersToLoadOnStart"

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v35

    .line 537
    .local v35, "bnSmartLoadAmount":I
    const-string v25, "atim"

    const-wide/16 v26, 0x2710

    move-object/from16 v22, p0

    invoke-direct/range {v22 .. v27}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getLongConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide v36

    .line 538
    .local v36, "bnSmartLoadTimeout":J
    const-string v14, "bannerInterval"

    const/16 v21, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v14, v3}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v39

    .line 540
    .local v39, "bnIntervalTime":I
    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v51

    .line 542
    .local v51, "bannerCombinedEvents":Lorg/json/JSONObject;
    const-string v14, "sendEventsToggle"

    const/16 v21, 0x0

    move-object/from16 v0, v51

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 543
    .local v27, "bnEventsToggle":Z
    const-string v14, "serverEventsURL"

    const-string v21, ""

    move-object/from16 v0, v51

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 544
    .local v28, "bnEventsUrl":Ljava/lang/String;
    const-string v14, "serverEventsType"

    const-string v21, ""

    move-object/from16 v0, v51

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 545
    .local v29, "bnEventsType":Ljava/lang/String;
    const-string v14, "backupThreshold"

    const/16 v21, -0x1

    move-object/from16 v0, v51

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v30

    .line 546
    .local v30, "bnBackupThreshold":I
    const-string v14, "maxNumberOfEvents"

    const/16 v21, -0x1

    move-object/from16 v0, v51

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v31

    .line 547
    .local v31, "bnMaxNumOfEvents":I
    const-string v14, "maxEventsPerBatch"

    const/16 v21, 0x1388

    move-object/from16 v0, v51

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v32

    .line 549
    .local v32, "bnMaxEventsPerBatch":I
    const/4 v12, 0x0

    .line 550
    .restart local v12    # "optOutEvents":[I
    const-string v14, "optOut"

    move-object/from16 v0, v51

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v69

    .line 551
    .restart local v69    # "optOutJsonArray":Lorg/json/JSONArray;
    if-eqz v69, :cond_37f

    .line 552
    invoke-virtual/range {v69 .. v69}, Lorg/json/JSONArray;->length()I

    move-result v14

    new-array v12, v14, [I

    .line 553
    const/16 v58, 0x0

    .restart local v58    # "i":I
    :goto_36a
    invoke-virtual/range {v69 .. v69}, Lorg/json/JSONArray;->length()I

    move-result v14

    move/from16 v0, v58

    if-ge v0, v14, :cond_37f

    .line 554
    move-object/from16 v0, v69

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v14

    aput v14, v12, v58

    .line 553
    add-int/lit8 v58, v58, 0x1

    goto :goto_36a

    .line 557
    .end local v58    # "i":I
    :cond_37f
    new-instance v25, Lcom/ironsource/mediationsdk/model/ApplicationEvents;

    const/16 v26, 0x0

    move-object/from16 v33, v12

    invoke-direct/range {v25 .. v33}, Lcom/ironsource/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;III[I)V

    .line 560
    .local v25, "bnEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    new-instance v34, Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    .end local v34    # "bannerConfig":Lcom/ironsource/mediationsdk/model/BannerConfigurations;
    move-object/from16 v38, v25

    invoke-direct/range {v34 .. v39}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;-><init>(IJLcom/ironsource/mediationsdk/model/ApplicationEvents;I)V

    .line 562
    .restart local v34    # "bannerConfig":Lcom/ironsource/mediationsdk/model/BannerConfigurations;
    if-eqz v53, :cond_3b7

    .line 563
    const/16 v58, 0x0

    .restart local v58    # "i":I
    :goto_393
    invoke-virtual/range {v53 .. v53}, Lorg/json/JSONArray;->length()I

    move-result v14

    move/from16 v0, v58

    if-ge v0, v14, :cond_3b7

    .line 564
    move-object/from16 v0, v53

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v86

    .line 565
    .restart local v86    # "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleBNPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/BannerPlacement;

    move-result-object v72

    .line 567
    .local v72, "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    if-eqz v72, :cond_3b4

    .line 568
    move-object/from16 v0, v34

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/BannerConfigurations;->addBannerPlacement(Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    .line 563
    :cond_3b4
    add-int/lit8 v58, v58, 0x1

    goto :goto_393

    .line 574
    .end local v12    # "optOutEvents":[I
    .end local v25    # "bnEvents":Lcom/ironsource/mediationsdk/model/ApplicationEvents;
    .end local v27    # "bnEventsToggle":Z
    .end local v28    # "bnEventsUrl":Ljava/lang/String;
    .end local v29    # "bnEventsType":Ljava/lang/String;
    .end local v30    # "bnBackupThreshold":I
    .end local v31    # "bnMaxNumOfEvents":I
    .end local v32    # "bnMaxEventsPerBatch":I
    .end local v35    # "bnSmartLoadAmount":I
    .end local v36    # "bnSmartLoadTimeout":J
    .end local v39    # "bnIntervalTime":I
    .end local v51    # "bannerCombinedEvents":Lorg/json/JSONObject;
    .end local v52    # "bnEventsSection":Lorg/json/JSONObject;
    .end local v53    # "bnPlacementsSection":Lorg/json/JSONArray;
    .end local v58    # "i":I
    .end local v69    # "optOutJsonArray":Lorg/json/JSONArray;
    .end local v72    # "placement":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .end local v86    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_3b7
    if-eqz v71, :cond_3ee

    .line 575
    const-string v14, "placements"

    move-object/from16 v0, v71

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v70

    .line 576
    .local v70, "owPlacementsSection":Lorg/json/JSONArray;
    new-instance v43, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    .end local v43    # "owConfig":Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
    invoke-direct/range {v43 .. v43}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;-><init>()V

    .line 577
    .restart local v43    # "owConfig":Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
    if-eqz v70, :cond_3ee

    .line 578
    const/16 v58, 0x0

    .restart local v58    # "i":I
    :goto_3ca
    invoke-virtual/range {v70 .. v70}, Lorg/json/JSONArray;->length()I

    move-result v14

    move/from16 v0, v58

    if-ge v0, v14, :cond_3ee

    .line 579
    move-object/from16 v0, v70

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v86

    .line 580
    .restart local v86    # "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v86

    invoke-direct {v0, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->parseSingleOWPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    move-result-object v72

    .line 582
    .local v72, "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    if-eqz v72, :cond_3eb

    .line 583
    move-object/from16 v0, v43

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;->addOfferwallPlacement(Lcom/ironsource/mediationsdk/model/OfferwallPlacement;)V

    .line 578
    :cond_3eb
    add-int/lit8 v58, v58, 0x1

    goto :goto_3ca

    .line 591
    .end local v58    # "i":I
    .end local v70    # "owPlacementsSection":Lorg/json/JSONArray;
    .end local v72    # "placement":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    .end local v86    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_3ee
    const-string v14, "server"

    const/16 v21, 0x3

    move-object/from16 v0, v68

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v85

    .line 592
    .local v85, "serverLoggerLevel":I
    const-string v14, "publisher"

    const/16 v21, 0x3

    move-object/from16 v0, v68

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v74

    .line 593
    .local v74, "publisherLoggerLevel":I
    const-string v14, "console"

    const/16 v21, 0x3

    move-object/from16 v0, v68

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v55

    .line 595
    .local v55, "consoleLoggerLevel":I
    new-instance v67, Lcom/ironsource/mediationsdk/model/ApplicationLogger;

    move-object/from16 v0, v67

    move/from16 v1, v85

    move/from16 v2, v74

    move/from16 v3, v55

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/model/ApplicationLogger;-><init>(III)V

    .line 599
    .local v67, "logger":Lcom/ironsource/mediationsdk/model/ApplicationLogger;
    const/16 v81, 0x0

    .line 600
    .local v81, "segmentData":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    if-eqz v84, :cond_450

    .line 601
    const-string v14, "name"

    const-string v21, ""

    move-object/from16 v0, v84

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v83

    .line 602
    .local v83, "segmentName":Ljava/lang/String;
    const-string v14, "id"

    const-string v21, "-1"

    move-object/from16 v0, v84

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v82

    .line 603
    .local v82, "segmentId":Ljava/lang/String;
    const-string v14, "custom"

    move-object/from16 v0, v84

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v56

    .line 604
    .local v56, "customSegments":Lorg/json/JSONObject;
    new-instance v81, Lcom/ironsource/mediationsdk/model/ServerSegmetData;

    .end local v81    # "segmentData":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    move-object/from16 v0, v81

    move-object/from16 v1, v83

    move-object/from16 v2, v82

    move-object/from16 v3, v56

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/model/ServerSegmetData;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 608
    .end local v56    # "customSegments":Lorg/json/JSONObject;
    .end local v82    # "segmentId":Ljava/lang/String;
    .end local v83    # "segmentName":Ljava/lang/String;
    .restart local v81    # "segmentData":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    :cond_450
    const-string v14, "integration"

    const/16 v21, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v61

    .line 611
    .local v61, "isIntegration":Z
    new-instance v45, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;

    move-object/from16 v0, v45

    move-object/from16 v1, v67

    move-object/from16 v2, v81

    move/from16 v3, v61

    invoke-direct {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;-><init>(Lcom/ironsource/mediationsdk/model/ApplicationLogger;Lcom/ironsource/mediationsdk/model/ServerSegmetData;Z)V

    .line 616
    .local v45, "appConfig":Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;
    const-string v14, "allowLocation"

    const/16 v21, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v48

    .line 617
    .local v48, "allowLocation":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    const-string v21, "GeneralProperties.ALLOW_LOCATION_SHARED_PREFS_KEY"

    move-object/from16 v0, v21

    move/from16 v1, v48

    invoke-static {v14, v0, v1}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 619
    new-instance v40, Lcom/ironsource/mediationsdk/model/Configurations;

    move-object/from16 v44, v34

    invoke-direct/range {v40 .. v45}, Lcom/ironsource/mediationsdk/model/Configurations;-><init>(Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;Lcom/ironsource/mediationsdk/model/BannerConfigurations;Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;)V

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;
    :try_end_48f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48f} :catch_490

    .line 623
    .end local v23    # "bnSection":Lorg/json/JSONObject;
    .end local v24    # "appSection":Lorg/json/JSONObject;
    .end local v34    # "bannerConfig":Lcom/ironsource/mediationsdk/model/BannerConfigurations;
    .end local v41    # "rvConfig":Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;
    .end local v42    # "isConfig":Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;
    .end local v43    # "owConfig":Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;
    .end local v45    # "appConfig":Lcom/ironsource/mediationsdk/model/ApplicationConfigurations;
    .end local v47    # "adUnitSection":Lorg/json/JSONObject;
    .end local v48    # "allowLocation":Z
    .end local v49    # "appEventsSection":Lorg/json/JSONObject;
    .end local v54    # "configurationsSection":Lorg/json/JSONObject;
    .end local v55    # "consoleLoggerLevel":I
    .end local v61    # "isIntegration":Z
    .end local v63    # "isSection":Lorg/json/JSONObject;
    .end local v67    # "logger":Lcom/ironsource/mediationsdk/model/ApplicationLogger;
    .end local v68    # "loggerSection":Lorg/json/JSONObject;
    .end local v71    # "owSection":Lorg/json/JSONObject;
    .end local v74    # "publisherLoggerLevel":I
    .end local v78    # "rvSection":Lorg/json/JSONObject;
    .end local v81    # "segmentData":Lcom/ironsource/mediationsdk/model/ServerSegmetData;
    .end local v84    # "segmentSection":Lorg/json/JSONObject;
    .end local v85    # "serverLoggerLevel":I
    :goto_48f
    return-void

    .line 620
    :catch_490
    move-exception v57

    .line 621
    .local v57, "e":Ljava/lang/Exception;
    invoke-virtual/range {v57 .. v57}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_48f
.end method

.method private parseProviderOrder()V
    .registers 13

    .prologue
    .line 235
    :try_start_0
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v11, "providerOrder"

    invoke-direct {p0, v10, v11}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 236
    .local v7, "providerOrderSection":Lorg/json/JSONObject;
    const-string v10, "rewardedVideo"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 237
    .local v8, "rvOrderSection":Lorg/json/JSONArray;
    const-string v10, "interstitial"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 238
    .local v4, "isOrderSection":Lorg/json/JSONArray;
    const-string v10, "banner"

    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 240
    .local v1, "bnOrderSection":Lorg/json/JSONArray;
    new-instance v10, Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-direct {v10}, Lcom/ironsource/mediationsdk/model/ProviderOrder;-><init>()V

    iput-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 242
    if-eqz v8, :cond_87

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    if-eqz v10, :cond_87

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v10

    if-eqz v10, :cond_87

    .line 243
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getBackFillProviderName()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "backFillProviderName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;->getPremiumProviderName()Ljava/lang/String;

    move-result-object v5

    .line 245
    .local v5, "premiumProviderName":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4c
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_87

    .line 246
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "providerName":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_64

    .line 250
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setRVBackFillProvider(Ljava/lang/String;)V

    .line 245
    :cond_61
    :goto_61
    add-int/lit8 v3, v3, 0x1

    goto :goto_4c

    .line 253
    :cond_64
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 254
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v5}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setRVPremiumProvider(Ljava/lang/String;)V

    .line 257
    :cond_6f
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addRewardedVideoProvider(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v9

    .line 260
    .local v9, "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v9, :cond_61

    .line 261
    invoke-virtual {v9, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoPriority(I)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_81} :catch_82

    goto :goto_61

    .line 302
    .end local v0    # "backFillProviderName":Ljava/lang/String;
    .end local v1    # "bnOrderSection":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "isOrderSection":Lorg/json/JSONArray;
    .end local v5    # "premiumProviderName":Ljava/lang/String;
    .end local v6    # "providerName":Ljava/lang/String;
    .end local v7    # "providerOrderSection":Lorg/json/JSONObject;
    .end local v8    # "rvOrderSection":Lorg/json/JSONArray;
    .end local v9    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :catch_82
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 305
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_86
    return-void

    .line 266
    .restart local v1    # "bnOrderSection":Lorg/json/JSONArray;
    .restart local v4    # "isOrderSection":Lorg/json/JSONArray;
    .restart local v7    # "providerOrderSection":Lorg/json/JSONObject;
    .restart local v8    # "rvOrderSection":Lorg/json/JSONArray;
    :cond_87
    if-eqz v4, :cond_e8

    :try_start_89
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    if-eqz v10, :cond_e8

    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v10

    if-eqz v10, :cond_e8

    .line 267
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getBackFillProviderName()Ljava/lang/String;

    move-result-object v0

    .line 268
    .restart local v0    # "backFillProviderName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;->getPremiumProviderName()Ljava/lang/String;

    move-result-object v5

    .line 269
    .restart local v5    # "premiumProviderName":Ljava/lang/String;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_b2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_e8

    .line 270
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 272
    .restart local v6    # "providerName":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ca

    .line 274
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v0}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setISBackFillProvider(Ljava/lang/String;)V

    .line 269
    :cond_c7
    :goto_c7
    add-int/lit8 v3, v3, 0x1

    goto :goto_b2

    .line 276
    :cond_ca
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d5

    .line 277
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v5}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->setISPremiumProvider(Ljava/lang/String;)V

    .line 281
    :cond_d5
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addInterstitialProvider(Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v9

    .line 284
    .restart local v9    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v9, :cond_c7

    .line 285
    invoke-virtual {v9, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialPriority(I)V

    goto :goto_c7

    .line 290
    .end local v0    # "backFillProviderName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v5    # "premiumProviderName":Ljava/lang/String;
    .end local v6    # "providerName":Ljava/lang/String;
    .end local v9    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    :cond_e8
    if-eqz v1, :cond_86

    .line 291
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_eb
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v3, v10, :cond_86

    .line 292
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    .line 294
    .restart local v6    # "providerName":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->addBannerProvider(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v9

    .line 297
    .restart local v9    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    if-eqz v9, :cond_107

    .line 298
    invoke-virtual {v9, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setBannerPriority(I)V
    :try_end_107
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_107} :catch_82

    .line 291
    :cond_107
    add-int/lit8 v3, v3, 0x1

    goto :goto_eb
.end method

.method private parseProviderSettings()V
    .registers 32

    .prologue
    .line 312
    :try_start_0
    invoke-static {}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    move-object/from16 v29, v0

    const-string v30, "providerSettings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v26

    .line 317
    .local v26, "providerSettingsSection":Lorg/json/JSONObject;
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v16

    .line 318
    .local v16, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_20
    :goto_20
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    if-eqz v29, :cond_190

    .line 319
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 320
    .local v4, "key":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 322
    .local v12, "concreteProviderSettingsSection":Lorg/json/JSONObject;
    if-eqz v12, :cond_20

    .line 323
    const-string v29, "mpis"

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 324
    .local v14, "isMultipleInstances":Z
    const-string v29, "spId"

    const-string v30, "0"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 326
    .local v28, "subProviderId":Ljava/lang/String;
    const-string v29, "providerLoadName"

    move-object/from16 v0, v29

    invoke-virtual {v12, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 327
    .local v5, "nameForReflection":Ljava/lang/String;
    const-string v29, "adUnits"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v12, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 328
    .local v10, "adUnitSection":Lorg/json/JSONObject;
    const-string v29, "application"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v12, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 329
    .local v6, "appSection":Lorg/json/JSONObject;
    const-string v29, "rewardedVideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v10, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v27

    .line 330
    .local v27, "rvSection":Lorg/json/JSONObject;
    const-string v29, "interstitial"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v10, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 331
    .local v15, "isSection":Lorg/json/JSONObject;
    const-string v29, "banner"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v10, v1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 333
    .local v11, "bnSection":Lorg/json/JSONObject;
    move-object/from16 v0, v27

    invoke-static {v0, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 334
    .local v7, "rewardedVideoSettings":Lorg/json/JSONObject;
    invoke-static {v15, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 335
    .local v8, "interstitialSettings":Lorg/json/JSONObject;
    invoke-static {v11, v6}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v9

    .line 338
    .local v9, "bannerSettings":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->containsProviderSettings(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_f4

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v25

    .line 340
    .local v25, "providerLocalSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual/range {v25 .. v25}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v24

    .line 341
    .local v24, "providerLocalRVSettings":Lorg/json/JSONObject;
    invoke-virtual/range {v25 .. v25}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v23

    .line 342
    .local v23, "providerLocalISSettings":Lorg/json/JSONObject;
    invoke-virtual/range {v25 .. v25}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getBannerSettings()Lorg/json/JSONObject;

    move-result-object v22

    .line 345
    .local v22, "providerLocalBNSettings":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    invoke-static {v0, v7}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Lorg/json/JSONObject;)V

    .line 347
    move-object/from16 v0, v23

    invoke-static {v0, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Lorg/json/JSONObject;)V

    .line 348
    move-object/from16 v0, v22

    invoke-static {v0, v9}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v29

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setBannerSettings(Lorg/json/JSONObject;)V

    .line 349
    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setIsMultipleInstances(Z)V

    .line 350
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setSubProviderId(Ljava/lang/String;)V
    :try_end_ed
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ed} :catch_ef

    goto/16 :goto_20

    .line 385
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "nameForReflection":Ljava/lang/String;
    .end local v6    # "appSection":Lorg/json/JSONObject;
    .end local v7    # "rewardedVideoSettings":Lorg/json/JSONObject;
    .end local v8    # "interstitialSettings":Lorg/json/JSONObject;
    .end local v9    # "bannerSettings":Lorg/json/JSONObject;
    .end local v10    # "adUnitSection":Lorg/json/JSONObject;
    .end local v11    # "bnSection":Lorg/json/JSONObject;
    .end local v12    # "concreteProviderSettingsSection":Lorg/json/JSONObject;
    .end local v14    # "isMultipleInstances":Z
    .end local v15    # "isSection":Lorg/json/JSONObject;
    .end local v16    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v22    # "providerLocalBNSettings":Lorg/json/JSONObject;
    .end local v23    # "providerLocalISSettings":Lorg/json/JSONObject;
    .end local v24    # "providerLocalRVSettings":Lorg/json/JSONObject;
    .end local v25    # "providerLocalSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v26    # "providerSettingsSection":Lorg/json/JSONObject;
    .end local v27    # "rvSection":Lorg/json/JSONObject;
    .end local v28    # "subProviderId":Ljava/lang/String;
    :catch_ef
    move-exception v13

    .line 386
    .local v13, "e":Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    .line 388
    .end local v13    # "e":Ljava/lang/Exception;
    :goto_f3
    return-void

    .line 352
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "nameForReflection":Ljava/lang/String;
    .restart local v6    # "appSection":Lorg/json/JSONObject;
    .restart local v7    # "rewardedVideoSettings":Lorg/json/JSONObject;
    .restart local v8    # "interstitialSettings":Lorg/json/JSONObject;
    .restart local v9    # "bannerSettings":Lorg/json/JSONObject;
    .restart local v10    # "adUnitSection":Lorg/json/JSONObject;
    .restart local v11    # "bnSection":Lorg/json/JSONObject;
    .restart local v12    # "concreteProviderSettingsSection":Lorg/json/JSONObject;
    .restart local v14    # "isMultipleInstances":Z
    .restart local v15    # "isSection":Lorg/json/JSONObject;
    .restart local v16    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v26    # "providerSettingsSection":Lorg/json/JSONObject;
    .restart local v27    # "rvSection":Lorg/json/JSONObject;
    .restart local v28    # "subProviderId":Ljava/lang/String;
    :cond_f4
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    const-string v30, "Mediation"

    invoke-virtual/range {v29 .. v30}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->containsProviderSettings(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_176

    const-string v29, "SupersonicAds"

    .line 353
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_122

    const-string v29, "RIS"

    .line 354
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v29

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_176

    .line 356
    :cond_122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    const-string v30, "Mediation"

    invoke-virtual/range {v29 .. v30}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/ironsource/mediationsdk/model/ProviderSettings;

    move-result-object v19

    .line 357
    .local v19, "mediationLocalSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual/range {v19 .. v19}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v18

    .line 358
    .local v18, "mediationLocalRVSettings":Lorg/json/JSONObject;
    invoke-virtual/range {v19 .. v19}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v17

    .line 360
    .local v17, "mediationLocalISSettings":Lorg/json/JSONObject;
    new-instance v21, Lorg/json/JSONObject;

    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 361
    .local v21, "mergedRVSettings":Lorg/json/JSONObject;
    new-instance v20, Lorg/json/JSONObject;

    invoke-virtual/range {v17 .. v17}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 363
    .local v20, "mergedISSettings":Lorg/json/JSONObject;
    move-object/from16 v0, v21

    invoke-static {v0, v7}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 364
    move-object/from16 v0, v20

    invoke-static {v0, v8}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v8

    .line 367
    new-instance v3, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-direct/range {v3 .. v9}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 369
    .local v3, "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v3, v14}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setIsMultipleInstances(Z)V

    .line 370
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    goto/16 :goto_20

    .line 374
    .end local v3    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v17    # "mediationLocalISSettings":Lorg/json/JSONObject;
    .end local v18    # "mediationLocalRVSettings":Lorg/json/JSONObject;
    .end local v19    # "mediationLocalSettings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v20    # "mergedISSettings":Lorg/json/JSONObject;
    .end local v21    # "mergedRVSettings":Lorg/json/JSONObject;
    :cond_176
    new-instance v3, Lcom/ironsource/mediationsdk/model/ProviderSettings;

    invoke-direct/range {v3 .. v9}, Lcom/ironsource/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 376
    .restart local v3    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    invoke-virtual {v3, v14}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setIsMultipleInstances(Z)V

    .line 377
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Lcom/ironsource/mediationsdk/model/ProviderSettings;->setSubProviderId(Ljava/lang/String;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/ironsource/mediationsdk/model/ProviderSettings;)V

    goto/16 :goto_20

    .line 384
    .end local v3    # "settings":Lcom/ironsource/mediationsdk/model/ProviderSettings;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "nameForReflection":Ljava/lang/String;
    .end local v6    # "appSection":Lorg/json/JSONObject;
    .end local v7    # "rewardedVideoSettings":Lorg/json/JSONObject;
    .end local v8    # "interstitialSettings":Lorg/json/JSONObject;
    .end local v9    # "bannerSettings":Lorg/json/JSONObject;
    .end local v10    # "adUnitSection":Lorg/json/JSONObject;
    .end local v11    # "bnSection":Lorg/json/JSONObject;
    .end local v12    # "concreteProviderSettingsSection":Lorg/json/JSONObject;
    .end local v14    # "isMultipleInstances":Z
    .end local v15    # "isSection":Lorg/json/JSONObject;
    .end local v27    # "rvSection":Lorg/json/JSONObject;
    .end local v28    # "subProviderId":Ljava/lang/String;
    :cond_190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;->fillSubProvidersDetails()V
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_199} :catch_ef

    goto/16 :goto_f3
.end method

.method private parseSingleBNPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/BannerPlacement;
    .registers 8
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    .line 716
    const/4 v2, 0x0

    .line 718
    .local v2, "result":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    if-eqz p1, :cond_2a

    .line 719
    const-string v4, "placementId"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 720
    .local v0, "placementId":I
    const-string v4, "placementName"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "placementName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v3

    .line 723
    .local v3, "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    if-ltz v0, :cond_2a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 724
    new-instance v2, Lcom/ironsource/mediationsdk/model/BannerPlacement;

    .end local v2    # "result":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    invoke-direct {v2, v0, v1, v3}, Lcom/ironsource/mediationsdk/model/BannerPlacement;-><init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    .line 725
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/model/BannerPlacement;
    if-eqz v3, :cond_2a

    .line 726
    iget-object v4, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/BannerPlacement;)V

    .line 731
    .end local v0    # "placementId":I
    .end local v1    # "placementName":Ljava/lang/String;
    .end local v3    # "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    :cond_2a
    return-object v2
.end method

.method private parseSingleISPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    .registers 8
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    .line 682
    const/4 v2, 0x0

    .line 684
    .local v2, "result":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz p1, :cond_2a

    .line 685
    const-string v4, "placementId"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 686
    .local v0, "placementId":I
    const-string v4, "placementName"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 687
    .local v1, "placementName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v3

    .line 689
    .local v3, "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    if-ltz v0, :cond_2a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 690
    new-instance v2, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;

    .end local v2    # "result":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    invoke-direct {v2, v0, v1, v3}, Lcom/ironsource/mediationsdk/model/InterstitialPlacement;-><init>(ILjava/lang/String;Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    .line 691
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/model/InterstitialPlacement;
    if-eqz v3, :cond_2a

    .line 692
    iget-object v4, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/InterstitialPlacement;)V

    .line 697
    .end local v0    # "placementId":I
    .end local v1    # "placementName":Ljava/lang/String;
    .end local v3    # "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    :cond_2a
    return-object v2
.end method

.method private parseSingleOWPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    .registers 7
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    .line 701
    const/4 v2, 0x0

    .line 703
    .local v2, "result":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    if-eqz p1, :cond_1f

    .line 704
    const-string v3, "placementId"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 705
    .local v0, "placementId":I
    const-string v3, "placementName"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 707
    .local v1, "placementName":Ljava/lang/String;
    if-ltz v0, :cond_1f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 708
    new-instance v2, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;

    .end local v2    # "result":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    invoke-direct {v2, v0, v1}, Lcom/ironsource/mediationsdk/model/OfferwallPlacement;-><init>(ILjava/lang/String;)V

    .line 712
    .end local v0    # "placementId":I
    .end local v1    # "placementName":Ljava/lang/String;
    .restart local v2    # "result":Lcom/ironsource/mediationsdk/model/OfferwallPlacement;
    :cond_1f
    return-object v2
.end method

.method private parseSingleRVPlacement(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/Placement;
    .registers 11
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, -0x1

    .line 660
    const/4 v0, 0x0

    .line 662
    .local v0, "result":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz p1, :cond_40

    .line 663
    const-string v6, "placementId"

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 664
    .local v1, "placementId":I
    const-string v6, "placementName"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 665
    .local v2, "placementName":Ljava/lang/String;
    const-string v6, "virtualItemName"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 666
    .local v3, "virtualItemName":Ljava/lang/String;
    const-string v6, "virtualItemCount"

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 667
    .local v4, "virtualItemCount":I
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v5

    .line 669
    .local v5, "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    if-ltz v1, :cond_40

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 670
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_40

    if-lez v4, :cond_40

    .line 671
    new-instance v0, Lcom/ironsource/mediationsdk/model/Placement;

    .end local v0    # "result":Lcom/ironsource/mediationsdk/model/Placement;
    invoke-direct/range {v0 .. v5}, Lcom/ironsource/mediationsdk/model/Placement;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;)V

    .line 672
    .restart local v0    # "result":Lcom/ironsource/mediationsdk/model/Placement;
    if-eqz v5, :cond_40

    .line 673
    iget-object v6, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/ironsource/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/ironsource/mediationsdk/model/Placement;)V

    .line 678
    .end local v1    # "placementId":I
    .end local v2    # "placementName":Ljava/lang/String;
    .end local v3    # "virtualItemName":Ljava/lang/String;
    .end local v4    # "virtualItemCount":I
    .end local v5    # "settings":Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    :cond_40
    return-object v0
.end method


# virtual methods
.method public getConfigurations()Lcom/ironsource/mediationsdk/model/Configurations;
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    return-object v0
.end method

.method public getInitiatedAdUnits()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    if-nez v1, :cond_a

    .line 210
    :cond_8
    const/4 v0, 0x0

    .line 227
    :cond_9
    :goto_9
    return-object v0

    .line 212
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v0, "adUnits":Ljava/util/List;, "Ljava/util/List<Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;>;"
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/ironsource/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 214
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 215
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->REWARDED_VIDEO:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_2c
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/ironsource/mediationsdk/model/InterstitialConfigurations;

    move-result-object v1

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v1, :cond_49

    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    .line 218
    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_49

    .line 219
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->INTERSTITIAL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_49
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getOfferwallConfigurations()Lcom/ironsource/mediationsdk/model/OfferwallConfigurations;

    move-result-object v1

    if-eqz v1, :cond_56

    .line 222
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->OFFERWALL:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_56
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/Configurations;->getBannerConfigurations()Lcom/ironsource/mediationsdk/model/BannerConfigurations;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 225
    sget-object v1, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->BANNER:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method public getProviderOrder()Lcom/ironsource/mediationsdk/model/ProviderOrder;
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    return-object v0
.end method

.method public getProviderSettingsHolder()Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;
    .registers 2

    .prologue
    .line 808
    iget-object v0, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    return-object v0
.end method

.method public getRVBackFillProvider()Ljava/lang/String;
    .registers 5

    .prologue
    .line 791
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRVBackFillProvider()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 794
    :goto_6
    return-object v1

    .line 792
    :catch_7
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "getRVBackFillProvider"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 794
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public getRVPremiumProvider()Ljava/lang/String;
    .registers 5

    .prologue
    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/ironsource/mediationsdk/model/ProviderOrder;->getRVPremiumProvider()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 803
    :goto_6
    return-object v1

    .line 801
    :catch_7
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v3, "getRVPremiumProvider"

    invoke-virtual {v1, v2, v3, v0}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 803
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public isValidResponse()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    if-eqz v3, :cond_2a

    move v0, v1

    .line 197
    .local v0, "valid":Z
    :goto_7
    if-eqz v0, :cond_2c

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v4, "error"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2c

    move v0, v1

    .line 199
    :goto_14
    if-eqz v0, :cond_2e

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/ironsource/mediationsdk/model/ProviderOrder;

    if-eqz v3, :cond_2e

    move v0, v1

    .line 201
    :goto_1b
    if-eqz v0, :cond_30

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/ironsource/mediationsdk/model/ProviderSettingsHolder;

    if-eqz v3, :cond_30

    move v0, v1

    .line 203
    :goto_22
    if-eqz v0, :cond_32

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/ironsource/mediationsdk/model/Configurations;

    if-eqz v3, :cond_32

    move v0, v1

    .line 205
    :goto_29
    return v0

    .end local v0    # "valid":Z
    :cond_2a
    move v0, v2

    .line 195
    goto :goto_7

    .restart local v0    # "valid":Z
    :cond_2c
    move v0, v2

    .line 197
    goto :goto_14

    :cond_2e
    move v0, v2

    .line 199
    goto :goto_1b

    :cond_30
    move v0, v2

    .line 201
    goto :goto_22

    :cond_32
    move v0, v2

    .line 203
    goto :goto_29
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 174
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 177
    .local v1, "resultObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "appKey"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v2, "userId"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v2, "response"

    iget-object v3, p0, Lcom/ironsource/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_1a} :catch_1f

    .line 184
    :goto_1a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 180
    :catch_1f
    move-exception v0

    .line 181
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1a
.end method
