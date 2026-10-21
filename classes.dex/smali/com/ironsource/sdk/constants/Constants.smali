###### Class com.ironsource.sdk.constants.Constants (com.ironsource.sdk.constants.Constants)
.class public Lcom/ironsource/sdk/constants/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/constants/Constants$ControllerParameters;,
        Lcom/ironsource/sdk/constants/Constants$ParametersKeys;,
        Lcom/ironsource/sdk/constants/Constants$ErrorCodes;,
        Lcom/ironsource/sdk/constants/Constants$ForceClosePosition;,
        Lcom/ironsource/sdk/constants/Constants$JSMethods;,
        Lcom/ironsource/sdk/constants/Constants$RequestParameters;
    }
.end annotation


# static fields
.field static final ACTION_BRAND_CONNECT_AD_COMPLETE:Ljava/lang/String; = "com.supersonicads.sdk.android.actions.ACTION_BRAND_CONNECT_AD_COMPLETE"

.field static final ACTION_BRAND_CONNECT_NO_MORE_OFFERS:Ljava/lang/String; = "com.supersonicads.sdk.android.actions.ACTION_BRAND_CONNECT_NO_MORE_OFFERS"

.field static final ACTIVITY_TYPE:Ljava/lang/String; = "activity_type"

.field static final ACTIVITY_TYPE_BRAND_CONNECT:Ljava/lang/String; = "activity_type_brand_connect"

.field static final ACTIVITY_TYPE_OFFER_WALL:Ljava/lang/String; = "activity_type_offer_wall"

.field public static final BACKGROUND_TIMEOUT_BROADCAST_RECIVER:Ljava/lang/String; = "com.supersonicads.sdk.android.BackgroundTimeout"

.field public static final CONTROLLER_DEBUG_MODE:I = 0x0

.field public static final CONTROLLER_URL:Ljava/lang/String; = "mobileSDKController/mobileController.html"

.field static final ENABLE_PORTRAIT:Z = false

.field public static final JAVASCRIPT_INTERFACE_NAME:Ljava/lang/String; = "Android"

.field static final KEY_ACTIVITY_DATA_ACTION:Ljava/lang/String; = "key_activity_data_action"

.field static final KEY_ACTIVITY_DATA_URL:Ljava/lang/String; = "activity_data_url"

.field public static final MAIN_ACTIVITY:Ljava/lang/String; = "main_activity"

.field public static final MOBILE_CONTROLLER_HTML:Ljava/lang/String; = "mobileController.html"

.field public static final NATIVE_EXCEPTION_BASE_URL:Ljava/lang/String; = "https://www.supersonicads.com/mobile/sdk5/log?method="

.field public static final PLACEMENT_ID:Ljava/lang/String; = "placementId"

.field public static final PREFERENCES_KEY_INIT_BRAND_CONNECT_APPLICATION_KEY:Ljava/lang/String; = "preferences_key_init_brand_connect_application_key"

.field public static final PREFERENCES_KEY_INIT_BRAND_CONNECT_APPLICATION_USER_ID:Ljava/lang/String; = "preferences_key_init_brand_connect_application_user_id"

.field public static final PREFERENCES_KEY_INIT_TIME:Ljava/lang/String; = "preferences_key_init_time"

.field public static final PREFERENCES_KEY_MAIN_OR_WEBVIEW:Ljava/lang/String; = "preferences_key_main_or_webview"

.field public static final PREFERENCES_KEY_REFRESH_INTERVAL:Ljava/lang/String; = "preferences_key_refresh_interval"

.field public static final PREFERENCES_KEY_SETTINGS_IS_TABLET_FULL_SCREEN:Ljava/lang/String; = "preferences_key_settings_is_tablet_full_screen"

.field public static final PREFERENCES_KEY_SETTINGS_REFRESH_INTERVAL:Ljava/lang/String; = "preferences_key_settings_refresh_interval"

.field public static final PREFERENCES_NAME:Ljava/lang/String; = "com.supersonicads.sdk.android"

.field public static final RESTORED_STATE:Ljava/lang/String; = "state"

.field public static final SDK_VERSION:Ljava/lang/String; = "5.53"

.field public static final STR_EMPTY:Ljava/lang/String; = ""

.field static final VIDEO_TEXT_CLICKALBLE:Z = false

.field public static final WEB_VIEW_ACTIVITY:Ljava/lang/String; = "web_view_activity"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.constants.Constants.ControllerParameters (com.ironsource.sdk.constants.Constants$ControllerParameters)
.class public Lcom/ironsource/sdk/constants/Constants$ControllerParameters;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ControllerParameters"
.end annotation


# static fields
.field public static final GLOBAL_RUNTIME:I = 0x30d40

.field public static final LOAD_ATTEMPS:I = 0x3

.field public static final LOAD_RUNTIME:I = 0xc350

.field public static final SECOND:I = 0x3e8


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/constants/Constants;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/constants/Constants;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/constants/Constants;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/ironsource/sdk/constants/Constants$ControllerParameters;->this$0:Lcom/ironsource/sdk/constants/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.constants.Constants.ErrorCodes (com.ironsource.sdk.constants.Constants$ErrorCodes)
.class public Lcom/ironsource/sdk/constants/Constants$ErrorCodes;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ErrorCodes"
.end annotation


# static fields
.field public static final DownloadMobileController:Ljava/lang/String; = "Download Mobile Controller"

.field public static final EVENT_NAME_DOES_NOT_EXIST:Ljava/lang/String; = "eventName does not exist"

.field public static final FIALED_TO_CONVERT_GET_BY_FLAG:Ljava/lang/String; = "fialed to convert getByFlag"

.field public static final FIALED_TO_CONVERT_TOGGLE:Ljava/lang/String; = "fialed to convert toggle"

.field public static final FILE_NOT_EXIST_CODE:Ljava/lang/String; = "1"

.field public static final FILE_NOT_EXIST_MSG:Ljava/lang/String; = "File not exist"

.field public static final FOLDER_NOT_EXIST_CODE:Ljava/lang/String; = "1"

.field public static final FOLDER_NOT_EXIST_MSG:Ljava/lang/String; = "Folder not exist"

.field public static final GET_APPS_INSTALL_TIME:Ljava/lang/String; = "100"

.field public static final GET_BY_FLAG_KEY_DOES_NOT_EXIST:Ljava/lang/String; = "getByFlag key does not exist"

.field public static final GetCachedFilesMap:Ljava/lang/String; = "Get Cached Files Map"

.field public static final GetCachedFilesMapTimeOut:Ljava/lang/String; = "Get Cached Files Map Time Out"

.field public static final GetDeviceStatus:Ljava/lang/String; = "Get Device Status"

.field public static final GetDeviceStatusTimeOut:Ljava/lang/String; = "Get Device Status Time Out"

.field public static final InitIS:Ljava/lang/String; = "Init IS"

.field public static final InitOW:Ljava/lang/String; = "Init OW"

.field public static final InitRV:Ljava/lang/String; = "Init RV"

.field public static final InitiatingController:Ljava/lang/String; = "Initiating Controller"

.field public static final KEY_DOES_NOT_EXIST:Ljava/lang/String; = "key does not exist"

.field public static final LoadingMobileController:Ljava/lang/String; = "Loading Mobile Controller"

.field public static final NUM_OF_AD_UNITS_DO_NOT_EXIST:Ljava/lang/String; = "Num Of Ad Units Do Not Exist"

.field public static final PATH_FILE_DOES_NOT_EXIST_ON_DISK:Ljava/lang/String; = "path file does not exist on disk"

.field public static final PATH_KEY_DOES_NOT_EXIST:Ljava/lang/String; = "path key does not exist"

.field public static final PRODUCT_TYPE_DOES_NOT_EXIST:Ljava/lang/String; = "productType does not exist"

.field public static final SET_USER_UNIQUE_ID_FAILED:Ljava/lang/String; = "setUserUniqueId failed"

.field public static final ShowOW:Ljava/lang/String; = "Show OW"

.field public static final ShowOWCredits:Ljava/lang/String; = "Show OW Credits"

.field public static final TOGGLE_KEY_DOES_NOT_EXIST:Ljava/lang/String; = "toggle key does not exist"

.field public static final UNIQUE_ID_OR_PRODUCT_TYPE_DOES_NOT_EXIST:Ljava/lang/String; = "uniqueId or productType does not exist"

.field public static final VALUE_DOES_NOT_EXIST:Ljava/lang/String; = "value does not exist"


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/constants/Constants;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/constants/Constants;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/constants/Constants;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/ironsource/sdk/constants/Constants$ErrorCodes;->this$0:Lcom/ironsource/sdk/constants/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.constants.Constants.ForceClosePosition (com.ironsource.sdk.constants.Constants$ForceClosePosition)
.class public Lcom/ironsource/sdk/constants/Constants$ForceClosePosition;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ForceClosePosition"
.end annotation


# static fields
.field public static final BOTTOM_LEFT:Ljava/lang/String; = "bottom-left"

.field public static final BOTTOM_RIGHT:Ljava/lang/String; = "bottom-right"

.field public static final HEIGHT:I = 0x32

.field public static final TOP_LEFT:Ljava/lang/String; = "top-left"

.field public static final TOP_RIGHT:Ljava/lang/String; = "top-right"

.field public static final WIDTH:I = 0x32


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/constants/Constants;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/constants/Constants;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/constants/Constants;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/ironsource/sdk/constants/Constants$ForceClosePosition;->this$0:Lcom/ironsource/sdk/constants/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.constants.Constants.JSMethods (com.ironsource.sdk.constants.Constants$JSMethods)
.class public Lcom/ironsource/sdk/constants/Constants$JSMethods;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JSMethods"
.end annotation


# static fields
.field public static final AD_CREDITED:Ljava/lang/String; = "adCredited"

.field public static final AD_UNITS_READY:Ljava/lang/String; = "adUnitsReady"

.field public static final ASSET_CACHED:Ljava/lang/String; = "assetCached"

.field public static final ASSET_CACHED_FAILED:Ljava/lang/String; = "assetCachedFailed"

.field public static final DELETE_FILE:Ljava/lang/String; = "deleteFile"

.field public static final DELETE_FILE_FAILED:Ljava/lang/String; = "deleteFileFailed"

.field public static final DELETE_FOLDER:Ljava/lang/String; = "deleteFolder"

.field public static final DELETE_FOLDER_FAILED:Ljava/lang/String; = "deleteFolderFailed"

.field public static final DEVICE_STATUS_CHANGED:Ljava/lang/String; = "deviceStatusChanged"

.field public static final DISPLAY_WEBVIEW:Ljava/lang/String; = "displayWebView"

.field public static final ENGAGE_END:Ljava/lang/String; = "engageEnd"

.field public static final ENTER_BACKGROUND:Ljava/lang/String; = "enterBackground"

.field public static final ENTER_FOREGROUND:Ljava/lang/String; = "enterForeground"

.field public static final FORCE_SHOW_INTERSTITIAL:Ljava/lang/String; = "forceShowInterstitial"

.field public static final GET_USER_CREDITS:Ljava/lang/String; = "getUserCredits"

.field public static final GET_USER_DATA:Ljava/lang/String; = "getUserData"

.field public static final INIT_CONTROLLER:Ljava/lang/String; = "initController"

.field public static final INIT_INTERSTITIAL:Ljava/lang/String; = "initInterstitial"

.field public static final INIT_OFFERWALL:Ljava/lang/String; = "initOfferWall"

.field public static final INIT_REWARDED_VIDEO:Ljava/lang/String; = "initRewardedVideo"

.field public static final INTERCEPTED_URL_TO_STORE:Ljava/lang/String; = "interceptedUrlToStore"

.field public static final LOAD_INTERSTITIAL:Ljava/lang/String; = "loadInterstitial"

.field public static final NATIVE_NAVIGATION_PRESSED:Ljava/lang/String; = "nativeNavigationPressed"

.field public static final ON_ALL_WINDOWS_CLOSED:Ljava/lang/String; = "onAdWindowsClosed"

.field public static final ON_CHECK_INSTALLED_APPS_FAIL:Ljava/lang/String; = "onCheckInstalledAppsFail"

.field public static final ON_CHECK_INSTALLED_APPS_SUCCESS:Ljava/lang/String; = "onCheckInstalledAppsSuccess"

.field public static final ON_GENERIC_FUNCTION_FAIL:Ljava/lang/String; = "onGenericFunctionFail"

.field public static final ON_GENERIC_FUNCTION_SUCCESS:Ljava/lang/String; = "onGenericFunctionSuccess"

.field public static final ON_GET_APPLICATION_INFO_FAIL:Ljava/lang/String; = "onGetApplicationInfoFail"

.field public static final ON_GET_APPLICATION_INFO_SUCCESS:Ljava/lang/String; = "onGetApplicationInfoSuccess"

.field public static final ON_GET_CACHED_FILES_MAP_FAIL:Ljava/lang/String; = "onGetCachedFilesMapFail"

.field public static final ON_GET_CACHED_FILES_MAP_SUCCESS:Ljava/lang/String; = "onGetCachedFilesMapSuccess"

.field public static final ON_GET_DEVICE_STATUS_FAIL:Ljava/lang/String; = "onGetDeviceStatusFail"

.field public static final ON_GET_DEVICE_STATUS_SUCCESS:Ljava/lang/String; = "onGetDeviceStatusSuccess"

.field public static final ON_GET_ORIENTATION_FAIL:Ljava/lang/String; = "onGetOrientationFail"

.field public static final ON_GET_ORIENTATION_SUCCESS:Ljava/lang/String; = "onGetOrientationSuccess"

.field public static final ON_GET_UDIA_FAIL:Ljava/lang/String; = "onGetUDIAFail"

.field public static final ON_GET_UDIA_SUCCESS:Ljava/lang/String; = "onGetUDIASuccess"

.field public static final ON_GET_USER_CREDITS_FAILED:Ljava/lang/String; = "onGetUserCreditsFail"

.field public static final ON_GET_USER_UNIQUE_ID_FAIL:Ljava/lang/String; = "onGetUserUniqueIdFail"

.field public static final ON_GET_USER_UNIQUE_ID_SUCCESS:Ljava/lang/String; = "onGetUserUniqueIdSuccess"

.field public static final ON_INIT_INTERSTITIAL_FAIL:Ljava/lang/String; = "onInitInterstitialFail"

.field public static final ON_INIT_INTERSTITIAL_SUCCESS:Ljava/lang/String; = "onInitInterstitialSuccess"

.field public static final ON_INIT_OFFERWALL_FAIL:Ljava/lang/String; = "onInitOfferWallFail"

.field public static final ON_INIT_OFFERWALL_SUCCESS:Ljava/lang/String; = "onInitOfferWallSuccess"

.field public static final ON_INIT_REWARDED_VIDEO_FAIL:Ljava/lang/String; = "onInitRewardedVideoFail"

.field public static final ON_INIT_REWARDED_VIDEO_SUCCESS:Ljava/lang/String; = "onInitRewardedVideoSuccess"

.field public static final ON_INTERSTITIAL_AD_CLICKED:Ljava/lang/String; = "onInterstitialAdClicked"

.field public static final ON_INTERSTITIAL_AVAILABILITY:Ljava/lang/String; = "onInterstitialAvailability"

.field public static final ON_LOAD_INTERSTITIAL_FAIL:Ljava/lang/String; = "onLoadInterstitialFail"

.field public static final ON_LOAD_INTERSTITIAL_SUCCESS:Ljava/lang/String; = "onLoadInterstitialSuccess"

.field public static final ON_NATIVE_LIFE_CYCLE_EVENT:Ljava/lang/String; = "onNativeLifeCycleEvent"

.field public static final ON_SHOW_INTERSTITIAL_FAIL:Ljava/lang/String; = "onShowInterstitialFail"

.field public static final ON_SHOW_INTERSTITIAL_SUCCESS:Ljava/lang/String; = "onShowInterstitialSuccess"

.field public static final ON_SHOW_OFFER_WALL_FAIL:Ljava/lang/String; = "onShowOfferWallFail"

.field public static final ON_SHOW_OFFER_WALL_SUCCESS:Ljava/lang/String; = "onShowOfferWallSuccess"

.field public static final ON_SHOW_REWARDED_VIDEO_FAIL:Ljava/lang/String; = "onShowRewardedVideoFail"

.field public static final ON_SHOW_REWARDED_VIDEO_SUCCESS:Ljava/lang/String; = "onShowRewardedVideoSuccess"

.field public static final ON_UDIA_FAIL:Ljava/lang/String; = "onUDIAFail"

.field public static final ON_UDIA_SUCCESS:Ljava/lang/String; = "onUDIASuccess"

.field public static final PAGE_FINISHED:Ljava/lang/String; = "pageFinished"

.field public static final POST_AD_EVENT_NOTIFICATION_FAIL:Ljava/lang/String; = "postAdEventNotificationFail"

.field public static final POST_AD_EVENT_NOTIFICATION_SUCCESS:Ljava/lang/String; = "postAdEventNotificationSuccess"

.field public static final REDIRECT_TO_FILE:Ljava/lang/String; = "redirectToFile"

.field public static final SAVE_FILE:Ljava/lang/String; = "saveFile"

.field public static final SAVE_FILE_FAILED:Ljava/lang/String; = "saveFileFailed"

.field public static final SHOW_INTERSTITIAL:Ljava/lang/String; = "showInterstitial"

.field public static final SHOW_OFFER_WALL:Ljava/lang/String; = "showOfferWall"

.field public static final SHOW_REWARDED_VIDEO:Ljava/lang/String; = "showRewardedVideo"

.field public static final UPDATE_CONSENT_INFO:Ljava/lang/String; = "updateConsentInfo"

.field public static final VIEWABLE_CHANGE:Ljava/lang/String; = "viewableChange"


# instance fields
.field public failureCallbackName:Ljava/lang/String;

.field public methodName:Ljava/lang/String;

.field public successCallbackName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInitMethodByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;
    .registers 3
    .param p0, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 199
    new-instance v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;

    invoke-direct {v0}, Lcom/ironsource/sdk/constants/Constants$JSMethods;-><init>()V

    .line 201
    .local v0, "initMethod":Lcom/ironsource/sdk/constants/Constants$JSMethods;
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p0, v1, :cond_16

    .line 202
    const-string v1, "initRewardedVideo"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    .line 203
    const-string v1, "onInitRewardedVideoSuccess"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    .line 204
    const-string v1, "onInitRewardedVideoFail"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    .line 215
    :cond_15
    :goto_15
    return-object v0

    .line 205
    :cond_16
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p0, v1, :cond_27

    .line 206
    const-string v1, "initInterstitial"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    .line 207
    const-string v1, "onInitInterstitialSuccess"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    .line 208
    const-string v1, "onInitInterstitialFail"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    goto :goto_15

    .line 209
    :cond_27
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p0, v1, :cond_15

    .line 210
    const-string v1, "initOfferWall"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    .line 211
    const-string v1, "onInitOfferWallSuccess"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    .line 212
    const-string v1, "onInitOfferWallFail"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    goto :goto_15
.end method

.method public static getShowMethodByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;
    .registers 3
    .param p0, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 220
    new-instance v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;

    invoke-direct {v0}, Lcom/ironsource/sdk/constants/Constants$JSMethods;-><init>()V

    .line 222
    .local v0, "showMethod":Lcom/ironsource/sdk/constants/Constants$JSMethods;
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p0, v1, :cond_16

    .line 223
    const-string v1, "showRewardedVideo"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    .line 224
    const-string v1, "onShowRewardedVideoSuccess"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    .line 225
    const-string v1, "onShowRewardedVideoFail"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    .line 236
    :cond_15
    :goto_15
    return-object v0

    .line 226
    :cond_16
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p0, v1, :cond_27

    .line 227
    const-string v1, "showInterstitial"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    .line 228
    const-string v1, "onShowInterstitialSuccess"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    .line 229
    const-string v1, "onShowInterstitialFail"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    goto :goto_15

    .line 230
    :cond_27
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p0, v1, :cond_15

    .line 231
    const-string v1, "showOfferWall"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    .line 232
    const-string v1, "onShowOfferWallSuccess"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    .line 233
    const-string v1, "onInitOfferWallFail"

    iput-object v1, v0, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    goto :goto_15
.end method

###### Class com.ironsource.sdk.constants.Constants.ParametersKeys (com.ironsource.sdk.constants.Constants$ParametersKeys)
.class public Lcom/ironsource/sdk/constants/Constants$ParametersKeys;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParametersKeys"
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ACTIVITY_THEME_TRANSLUCENT:Ljava/lang/String; = "activityThemeTranslucent"

.field public static final ALLOW_FILE_ACCESS:Ljava/lang/String; = "allowFileAccess"

.field public static final AVAILABLE:Ljava/lang/String; = "available"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final CREDITS:Ljava/lang/String; = "credits"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final DEMAND_SOURCE_NAME:Ljava/lang/String; = "demandSourceName"

.field public static final DISPLAY:Ljava/lang/String; = "display"

.field public static final ERR_CODE:Ljava/lang/String; = "errCode"

.field public static final ERR_MSG:Ljava/lang/String; = "errMsg"

.field public static final EVENT_NAME:Ljava/lang/String; = "eventName"

.field public static final EXTERNAL_BROWSER:Ljava/lang/String; = "external_browser"

.field public static final EXTRA_DATA:Ljava/lang/String; = "extData"

.field public static final FAILED:Ljava/lang/String; = "failed"

.field public static final FILE:Ljava/lang/String; = "file"

.field public static final FORCE_CLOSE:Ljava/lang/String; = "forceClose"

.field public static final GET_BY_FLAG:Ljava/lang/String; = "getByFlag"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final IMMERSIVE:Ljava/lang/String; = "immersive"

.field public static final INCLUDE_SYSTEM_APPS:Ljava/lang/String; = "systemApps"

.field public static final INTERSTITIAL:Ljava/lang/String; = "Interstitial"

.field public static final IS_STANDALONE_VIEW:Ljava/lang/String; = "standaloneView"

.field public static final IS_VIEWABLE:Ljava/lang/String; = "isViewable"

.field public static final KEY:Ljava/lang/String; = "key"

.field public static final LAST_UPDATE_TIME:Ljava/lang/String; = "lastUpdateTime"

.field public static final LIFE_CYCLE_EVENT:Ljava/lang/String; = "lifeCycleEvent"

.field public static final LOADED:Ljava/lang/String; = "loaded"

.field public static final MAIN:Ljava/lang/String; = "main"

.field public static final MAP_PATH:Ljava/lang/String; = "path"

.field public static final METHOD:Ljava/lang/String; = "method"

.field public static final NOTIFICATION_DEMAND_SOURCE_NAME:Ljava/lang/String; = "dsName"

.field public static final OFFER_WALL:Ljava/lang/String; = "OfferWall"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final ORIENTATION_APPLICATION:Ljava/lang/String; = "application"

.field public static final ORIENTATION_DEVICE:Ljava/lang/String; = "device"

.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_NONE:Ljava/lang/String; = "none"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ORIENTATION_SET_FLAG:Ljava/lang/String; = "orientation_set_flag"

.field public static final PATH:Ljava/lang/String; = "path"

.field public static final PERMISSION:Ljava/lang/String; = "permission"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final PRODUCT_TYPE:Ljava/lang/String; = "productType"

.field public static final READY:Ljava/lang/String; = "ready"

.field public static final ROTATION_SET_FLAG:Ljava/lang/String; = "rotation_set_flag"

.field public static final SEARCH_KEYS:Ljava/lang/String; = "searchKeys"

.field public static final SECONDARY:Ljava/lang/String; = "secondary"

.field public static final SECONDARY_CLOSE:Ljava/lang/String; = "secondaryClose"

.field public static final STAGE:Ljava/lang/String; = "stage"

.field public static final STATE:Ljava/lang/String; = "state"

.field public static final STORE:Ljava/lang/String; = "store"

.field public static final STORE_CLOSE:Ljava/lang/String; = "store_close"

.field public static final TOGGLE:Ljava/lang/String; = "toggle"

.field public static final TOTAL:Ljava/lang/String; = "total"

.field public static final TRANSPARENT:Ljava/lang/String; = "transparent"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final USER_UNIQUE_ID:Ljava/lang/String; = "userUniqueId"

.field public static final USE_CLIENT_SIDE_CALLBACKS:Ljava/lang/String; = "useClientSideCallbacks"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VIDEO_STATUS:Ljava/lang/String; = "status"

.field public static final VIDEO_STATUS_ENDED:Ljava/lang/String; = "ended"

.field public static final VIDEO_STATUS_PAUSED:Ljava/lang/String; = "paused"

.field public static final VIDEO_STATUS_PLAYING:Ljava/lang/String; = "playing"

.field public static final VIDEO_STATUS_STARTED:Ljava/lang/String; = "started"

.field public static final VIDEO_STATUS_STOPPED:Ljava/lang/String; = "stopped"

.field public static final VIEW:Ljava/lang/String; = "view"

.field public static final WEB_VIEW:Ljava/lang/String; = "webview"

.field public static final WIDTH:Ljava/lang/String; = "width"


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/constants/Constants;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/constants/Constants;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/constants/Constants;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/ironsource/sdk/constants/Constants$ParametersKeys;->this$0:Lcom/ironsource/sdk/constants/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.constants.Constants.RequestParameters (com.ironsource.sdk.constants.Constants$RequestParameters)
.class public Lcom/ironsource/sdk/constants/Constants$RequestParameters;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/constants/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RequestParameters"
.end annotation


# static fields
.field public static final AID:Ljava/lang/String; = "AID"

.field public static final AMPERSAND:Ljava/lang/String; = "&"

.field public static final APPLICATION_KEY:Ljava/lang/String; = "applicationKey"

.field public static final APPLICATION_USER_ID:Ljava/lang/String; = "applicationUserId"

.field public static final APPLICATION_VERSION_NAME:Ljava/lang/String; = "appVersion"

.field public static final APP_ORIENTATION:Ljava/lang/String; = "appOrientation"

.field public static final BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field public static final CONNECTION_TYPE:Ljava/lang/String; = "connectionType"

.field public static final CONTROLLER_CONFIG:Ljava/lang/String; = "controllerConfig"

.field public static final DEBUG:Ljava/lang/String; = "debug"

.field public static final DEMAND_SOURCE_NAME:Ljava/lang/String; = "demandSourceName"

.field public static final DEVICE_API_LEVEL:Ljava/lang/String; = "deviceApiLevel"

.field public static final DEVICE_IDS:Ljava/lang/String; = "deviceIds"

.field public static final DEVICE_LANGUAGE:Ljava/lang/String; = "deviceLanguage"

.field public static final DEVICE_MODEL:Ljava/lang/String; = "deviceModel"

.field public static final DEVICE_OEM:Ljava/lang/String; = "deviceOEM"

.field public static final DEVICE_OS:Ljava/lang/String; = "deviceOs"

.field public static final DEVICE_OS_VERSION:Ljava/lang/String; = "deviceOSVersion"

.field public static final DEVICE_SCREEN_SCALE:Ljava/lang/String; = "deviceScreenScale"

.field public static final DEVICE_SCREEN_SIZE:Ljava/lang/String; = "deviceScreenSize"

.field public static final DEVICE_VOLUME:Ljava/lang/String; = "deviceVolume"

.field public static final DISK_FREE_SIZE:Ljava/lang/String; = "diskFreeSize"

.field public static final DOMAIN:Ljava/lang/String; = "domain"

.field public static final EQUAL:Ljava/lang/String; = "="

.field public static final FIRST_INSTALL_TIME:Ljava/lang/String; = "firstInstallTime"

.field public static final GDPR_CONSENT_STATUS:Ljava/lang/String; = "gdprConsentStatus"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final IMMERSIVE:Ljava/lang/String; = "immersiveMode"

.field public static final IS_ROOT_DEVICE:Ljava/lang/String; = "unLocked"

.field public static final IS_SECURED:Ljava/lang/String; = "isSecured"

.field public static final LAST_UPDATE_TIME:Ljava/lang/String; = "lastUpdateTime"

.field public static final LEFT_BRACKETS:Ljava/lang/String; = "["

.field public static final MOBILE_CARRIER:Ljava/lang/String; = "mobileCarrier"

.field public static final NETWORK_MCC:Ljava/lang/String; = "mcc"

.field public static final NETWORK_MNC:Ljava/lang/String; = "mnc"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "bundleId"

.field public static final PHONE_TYPE:Ljava/lang/String; = "phoneType"

.field public static final PROTOCOL:Ljava/lang/String; = "protocol"

.field public static final RIGHT_BRACKETS:Ljava/lang/String; = "]"

.field public static final SDK_VERSION:Ljava/lang/String; = "SDKVersion"

.field public static final SESSION_DEPTH:Ljava/lang/String; = "sessionDepth"

.field public static final SIM_OPERATOR:Ljava/lang/String; = "simOperator"

.field public static final WEBVIEW_TYPE:Ljava/lang/String; = "webviewType"

.field public static final WIDTH:Ljava/lang/String; = "width"

.field public static final isLAT:Ljava/lang/String; = "isLimitAdTrackingEnabled"


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/constants/Constants;


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/constants/Constants;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/constants/Constants;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/ironsource/sdk/constants/Constants$RequestParameters;->this$0:Lcom/ironsource/sdk/constants/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
