###### Class com.facebook.internal.NativeProtocol (com.facebook.internal.NativeProtocol)
.class public final Lcom/facebook/internal/NativeProtocol;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;,
        Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;,
        Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;,
        Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;,
        Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    }
.end annotation


# static fields
.field public static final ACTION_APPINVITE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.APPINVITES_DIALOG"

.field public static final ACTION_FEED_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.FEED_DIALOG"

.field public static final ACTION_LIKE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.LIKE_DIALOG"

.field public static final ACTION_MESSAGE_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.MESSAGE_DIALOG"

.field public static final ACTION_OGACTIONPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

.field public static final ACTION_OGMESSAGEPUBLISH_DIALOG:Ljava/lang/String; = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

.field public static final AUDIENCE_EVERYONE:Ljava/lang/String; = "everyone"

.field public static final AUDIENCE_FRIENDS:Ljava/lang/String; = "friends"

.field public static final AUDIENCE_ME:Ljava/lang/String; = "only_me"

.field public static final BRIDGE_ARG_ACTION_ID_STRING:Ljava/lang/String; = "action_id"

.field public static final BRIDGE_ARG_APP_NAME_STRING:Ljava/lang/String; = "app_name"

.field public static final BRIDGE_ARG_ERROR_BUNDLE:Ljava/lang/String; = "error"

.field public static final BRIDGE_ARG_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final BRIDGE_ARG_ERROR_DESCRIPTION:Ljava/lang/String; = "error_description"

.field public static final BRIDGE_ARG_ERROR_JSON:Ljava/lang/String; = "error_json"

.field public static final BRIDGE_ARG_ERROR_SUBCODE:Ljava/lang/String; = "error_subcode"

.field public static final BRIDGE_ARG_ERROR_TYPE:Ljava/lang/String; = "error_type"

.field private static final CONTENT_SCHEME:Ljava/lang/String; = "content://"

.field public static final ERROR_APPLICATION_ERROR:Ljava/lang/String; = "ApplicationError"

.field public static final ERROR_NETWORK_ERROR:Ljava/lang/String; = "NetworkError"

.field public static final ERROR_PERMISSION_DENIED:Ljava/lang/String; = "PermissionDenied"

.field public static final ERROR_PROTOCOL_ERROR:Ljava/lang/String; = "ProtocolError"

.field public static final ERROR_SERVICE_DISABLED:Ljava/lang/String; = "ServiceDisabled"

.field public static final ERROR_UNKNOWN_ERROR:Ljava/lang/String; = "UnknownError"

.field public static final ERROR_USER_CANCELED:Ljava/lang/String; = "UserCanceled"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "com.facebook.platform.extra.ACCESS_TOKEN"

.field public static final EXTRA_APPLICATION_ID:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_ID"

.field public static final EXTRA_APPLICATION_NAME:Ljava/lang/String; = "com.facebook.platform.extra.APPLICATION_NAME"

.field public static final EXTRA_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.DID_COMPLETE"

.field public static final EXTRA_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "com.facebook.platform.extra.COMPLETION_GESTURE"

.field public static final EXTRA_EXPIRES_SECONDS_SINCE_EPOCH:Ljava/lang/String; = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH"

.field public static final EXTRA_GET_INSTALL_DATA_PACKAGE:Ljava/lang/String; = "com.facebook.platform.extra.INSTALLDATA_PACKAGE"

.field public static final EXTRA_PERMISSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PERMISSIONS"

.field public static final EXTRA_PROTOCOL_ACTION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_ACTION"

.field public static final EXTRA_PROTOCOL_BRIDGE_ARGS:Ljava/lang/String; = "com.facebook.platform.protocol.BRIDGE_ARGS"

.field public static final EXTRA_PROTOCOL_CALL_ID:Ljava/lang/String; = "com.facebook.platform.protocol.CALL_ID"

.field public static final EXTRA_PROTOCOL_METHOD_ARGS:Ljava/lang/String; = "com.facebook.platform.protocol.METHOD_ARGS"

.field public static final EXTRA_PROTOCOL_METHOD_RESULTS:Ljava/lang/String; = "com.facebook.platform.protocol.RESULT_ARGS"

.field public static final EXTRA_PROTOCOL_VERSION:Ljava/lang/String; = "com.facebook.platform.protocol.PROTOCOL_VERSION"

.field static final EXTRA_PROTOCOL_VERSIONS:Ljava/lang/String; = "com.facebook.platform.extra.PROTOCOL_VERSIONS"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "com.facebook.platform.extra.USER_ID"

.field private static final FACEBOOK_PROXY_AUTH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.ProxyAuth"

.field public static final FACEBOOK_PROXY_AUTH_APP_ID_KEY:Ljava/lang/String; = "client_id"

.field public static final FACEBOOK_PROXY_AUTH_E2E_KEY:Ljava/lang/String; = "e2e"

.field public static final FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY:Ljava/lang/String; = "scope"

.field private static final FACEBOOK_TOKEN_REFRESH_ACTIVITY:Ljava/lang/String; = "com.facebook.katana.platform.TokenRefreshService"

.field public static final IMAGE_URL_KEY:Ljava/lang/String; = "url"

.field public static final IMAGE_USER_GENERATED_KEY:Ljava/lang/String; = "user_generated"

.field static final INTENT_ACTION_PLATFORM_ACTIVITY:Ljava/lang/String; = "com.facebook.platform.PLATFORM_ACTIVITY"

.field static final INTENT_ACTION_PLATFORM_SERVICE:Ljava/lang/String; = "com.facebook.platform.PLATFORM_SERVICE"

.field private static final KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final MESSAGE_GET_ACCESS_TOKEN_REPLY:I = 0x10001

.field public static final MESSAGE_GET_ACCESS_TOKEN_REQUEST:I = 0x10000

.field public static final MESSAGE_GET_INSTALL_DATA_REPLY:I = 0x10005

.field public static final MESSAGE_GET_INSTALL_DATA_REQUEST:I = 0x10004

.field public static final MESSAGE_GET_LIKE_STATUS_REPLY:I = 0x10007

.field public static final MESSAGE_GET_LIKE_STATUS_REQUEST:I = 0x10006

.field static final MESSAGE_GET_PROTOCOL_VERSIONS_REPLY:I = 0x10003

.field static final MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST:I = 0x10002

.field public static final NO_PROTOCOL_AVAILABLE:I = -0x1

.field public static final OPEN_GRAPH_CREATE_OBJECT_KEY:Ljava/lang/String; = "fbsdk:create_object"

.field private static final PLATFORM_PROVIDER:Ljava/lang/String; = ".provider.PlatformProvider"

.field private static final PLATFORM_PROVIDER_VERSIONS:Ljava/lang/String; = ".provider.PlatformProvider/versions"

.field private static final PLATFORM_PROVIDER_VERSION_COLUMN:Ljava/lang/String; = "version"

.field public static final PROTOCOL_VERSION_20121101:I = 0x133060d

.field public static final PROTOCOL_VERSION_20130502:I = 0x1332ac6

.field public static final PROTOCOL_VERSION_20130618:I = 0x1332b3a

.field public static final PROTOCOL_VERSION_20131107:I = 0x1332d23

.field public static final PROTOCOL_VERSION_20140204:I = 0x13350ac

.field public static final PROTOCOL_VERSION_20140324:I = 0x1335124

.field public static final PROTOCOL_VERSION_20140701:I = 0x133529d

.field public static final PROTOCOL_VERSION_20141001:I = 0x13353c9

.field public static final PROTOCOL_VERSION_20141028:I = 0x13353e4

.field public static final PROTOCOL_VERSION_20141107:I = 0x1335433

.field public static final PROTOCOL_VERSION_20141218:I = 0x13354a2

.field public static final PROTOCOL_VERSION_20160327:I = 0x1339f47

.field public static final RESULT_ARGS_ACCESS_TOKEN:Ljava/lang/String; = "access_token"

.field public static final RESULT_ARGS_DIALOG_COMPLETE_KEY:Ljava/lang/String; = "didComplete"

.field public static final RESULT_ARGS_DIALOG_COMPLETION_GESTURE_KEY:Ljava/lang/String; = "completionGesture"

.field public static final RESULT_ARGS_EXPIRES_SECONDS_SINCE_EPOCH:Ljava/lang/String; = "expires_seconds_since_epoch"

.field public static final RESULT_ARGS_PERMISSIONS:Ljava/lang/String; = "permissions"

.field public static final STATUS_ERROR_CODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_CODE"

.field public static final STATUS_ERROR_DESCRIPTION:Ljava/lang/String; = "com.facebook.platform.status.ERROR_DESCRIPTION"

.field public static final STATUS_ERROR_JSON:Ljava/lang/String; = "com.facebook.platform.status.ERROR_JSON"

.field public static final STATUS_ERROR_SUBCODE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_SUBCODE"

.field public static final STATUS_ERROR_TYPE:Ljava/lang/String; = "com.facebook.platform.status.ERROR_TYPE"

.field private static final TAG:Ljava/lang/String;

.field public static final WEB_DIALOG_ACTION:Ljava/lang/String; = "action"

.field public static final WEB_DIALOG_IS_FALLBACK:Ljava/lang/String; = "is_fallback"

.field public static final WEB_DIALOG_PARAMS:Ljava/lang/String; = "params"

.field public static final WEB_DIALOG_URL:Ljava/lang/String; = "url"

.field private static actionToAppInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static facebookAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x0

    .line 65
    const-class v0, Lcom/facebook/internal/NativeProtocol;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->TAG:Ljava/lang/String;

    .line 365
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->buildFacebookAppList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    .line 366
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->buildActionToAppInfoMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    .line 367
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 555
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x1339f47

    .line 557
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const v2, 0x13354a2

    .line 558
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const v2, 0x1335433

    .line 559
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const v2, 0x13353e4

    .line 560
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x13353c9

    .line 561
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x133529d

    .line 562
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x1335124

    .line 563
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x13350ac

    .line 564
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x1332d23

    .line 565
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x1332b3a

    .line 566
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x1332ac6

    .line 567
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x133060d

    .line 568
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 556
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    .line 555
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->fetchAllAvailableProtocolVersionsForAppInfo(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/util/List;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static buildActionToAppInfoMap()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 383
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v1, "messengerAppInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    new-instance v2, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    const-string v2, "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v2, "com.facebook.platform.action.request.FEED_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    const-string v2, "com.facebook.platform.action.request.LIKE_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string v2, "com.facebook.platform.action.request.APPINVITES_DIALOG"

    sget-object v3, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    const-string v2, "com.facebook.platform.action.request.MESSAGE_DIALOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    const-string v2, "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    return-object v0
.end method

.method private static buildFacebookAppList()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 374
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    new-instance v1, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;

    invoke-direct {v1, v2}, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    new-instance v1, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;

    invoke-direct {v1, v2}, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-object v0
.end method

.method private static buildPlatformProviderVersionURI(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;
    .registers 3
    .param p0, "appInfo"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .prologue
    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".provider.PlatformProvider/versions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static computeLatestAvailableVersionFromVersionSpec(Ljava/util/TreeSet;I[I)I
    .registers 9
    .param p1, "latestSdkVersion"    # I
    .param p2, "versionSpec"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;I[I)I"
        }
    .end annotation

    .prologue
    .local p0, "allAvailableFacebookAppVersions":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v5, -0x1

    .line 935
    array-length v4, p2

    add-int/lit8 v3, v4, -0x1

    .line 937
    .local v3, "versionSpecIndex":I
    invoke-virtual {p0}, Ljava/util/TreeSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 938
    .local v1, "fbAppVersionsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    .line 940
    .local v2, "latestFacebookAppVersion":I
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 941
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 944
    .local v0, "fbAppVersion":I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 947
    :goto_1d
    if-ltz v3, :cond_26

    aget v4, p2, v3

    if-le v4, v0, :cond_26

    .line 948
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 951
    :cond_26
    if-gez v3, :cond_29

    .line 970
    .end local v0    # "fbAppVersion":I
    :cond_28
    :goto_28
    return v5

    .line 960
    .restart local v0    # "fbAppVersion":I
    :cond_29
    aget v4, p2, v3

    if-ne v4, v0, :cond_9

    .line 962
    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_37

    .line 964
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_35
    move v5, v4

    goto :goto_28

    :cond_37
    move v4, v5

    goto :goto_35
.end method

.method public static createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;
    .registers 4
    .param p0, "e"    # Lcom/facebook/FacebookException;

    .prologue
    .line 802
    if-nez p0, :cond_4

    .line 803
    const/4 v0, 0x0

    .line 812
    :cond_3
    :goto_3
    return-object v0

    .line 806
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 807
    .local v0, "errorBundle":Landroid/os/Bundle;
    const-string v1, "error_description"

    invoke-virtual {p0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    instance-of v1, p0, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v1, :cond_3

    .line 809
    const-string v1, "error_type"

    const-string v2, "UserCanceled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static createFacebookLiteIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;)Landroid/content/Intent;
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "e2e"    # Ljava/lang/String;
    .param p4, "isRerequest"    # Z
    .param p5, "isForPublish"    # Z
    .param p6, "defaultAudience"    # Lcom/facebook/login/DefaultAudience;
    .param p7, "clientState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/facebook/login/DefaultAudience;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 441
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 442
    invoke-static/range {v0 .. v7}, Lcom/facebook/internal/NativeProtocol;->createNativeAppIntent(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 451
    .local v8, "intent":Landroid/content/Intent;
    invoke-static {p0, v8, v0}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v8

    .line 453
    return-object v8
.end method

.method private static createNativeAppIntent(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;)Landroid/content/Intent;
    .registers 12
    .param p0, "appInfo"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "e2e"    # Ljava/lang/String;
    .param p4, "isRerequest"    # Z
    .param p5, "isForPublish"    # Z
    .param p6, "defaultAudience"    # Lcom/facebook/login/DefaultAudience;
    .param p7, "clientState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/facebook/login/DefaultAudience;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 466
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getLoginActivity()Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "activityName":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 469
    const/4 v1, 0x0

    .line 505
    :goto_7
    return-object v1

    .line 472
    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 473
    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "client_id"

    .line 474
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 476
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 477
    const-string v2, "scope"

    const-string v3, ","

    .line 478
    invoke-static {v3, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    .line 477
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    :cond_2c
    invoke-static {p3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_37

    .line 481
    const-string v2, "e2e"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    :cond_37
    const-string v2, "state"

    invoke-virtual {v1, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    const-string v2, "response_type"

    const-string v3, "token,signed_request"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    const-string v2, "return_scopes"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    if-eqz p5, :cond_55

    .line 492
    const-string v2, "default_audience"

    .line 494
    invoke-virtual {p6}, Lcom/facebook/login/DefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    :cond_55
    const-string v2, "legacy_override"

    .line 500
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v3

    .line 498
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    const-string v2, "auth_type"

    const-string v3, "rerequest"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_7
.end method

.method public static createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 609
    const-string v1, "com.facebook.platform.PLATFORM_ACTIVITY"

    invoke-static {p0, v1, p2}, Lcom/facebook/internal/NativeProtocol;->findActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 610
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_a

    .line 611
    const/4 v0, 0x0

    .line 616
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_9
    return-object v0

    .line 614
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_a
    invoke-static {v0, p1, p2, p3, p4}, Lcom/facebook/internal/NativeProtocol;->setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V

    goto :goto_9
.end method

.method public static createPlatformServiceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 687
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 688
    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.facebook.platform.PLATFORM_SERVICE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.intent.category.DEFAULT"

    .line 690
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 691
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 692
    if-eqz v1, :cond_6

    .line 696
    .end local v0    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2d
    return-object v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method

.method public static createProtocolResultIntent(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/FacebookException;)Landroid/content/Intent;
    .registers 8
    .param p0, "requestIntent"    # Landroid/content/Intent;
    .param p1, "results"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 663
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;

    move-result-object v1

    .line 664
    .local v1, "callId":Ljava/util/UUID;
    if-nez v1, :cond_8

    .line 665
    const/4 v2, 0x0

    .line 683
    :cond_7
    :goto_7
    return-object v2

    .line 668
    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 669
    .local v2, "resultIntent":Landroid/content/Intent;
    const-string v3, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 671
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 672
    .local v0, "bridgeArguments":Landroid/os/Bundle;
    const-string v3, "action_id"

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    if-eqz p2, :cond_2f

    .line 674
    const-string v3, "error"

    .line 675
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object v4

    .line 674
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 677
    :cond_2f
    const-string v3, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 679
    if-eqz p1, :cond_7

    .line 680
    const-string v3, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_7
.end method

.method public static createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;)Landroid/content/Intent;
    .registers 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "applicationId"    # Ljava/lang/String;
    .param p3, "e2e"    # Ljava/lang/String;
    .param p4, "isRerequest"    # Z
    .param p5, "isForPublish"    # Z
    .param p6, "defaultAudience"    # Lcom/facebook/login/DefaultAudience;
    .param p7, "clientState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ",
            "Lcom/facebook/login/DefaultAudience;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 517
    .local p2, "permissions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    .line 518
    invoke-static/range {v0 .. v7}, Lcom/facebook/internal/NativeProtocol;->createNativeAppIntent(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 527
    .local v8, "intent":Landroid/content/Intent;
    invoke-static {p0, v8, v0}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v8

    .line 529
    if-eqz v8, :cond_6

    .line 533
    .end local v0    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v8    # "intent":Landroid/content/Intent;
    :goto_25
    return-object v8

    :cond_26
    const/4 v8, 0x0

    goto :goto_25
.end method

.method public static createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 537
    sget-object v2, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 538
    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 539
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.facebook.katana.platform.TokenRefreshService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 541
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 543
    if-eqz v1, :cond_6

    .line 547
    .end local v0    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_27
    return-object v1

    :cond_28
    const/4 v1, 0x0

    goto :goto_27
.end method

.method private static fetchAllAvailableProtocolVersionsForAppInfo(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;
    .registers 16
    .param p0, "appInfo"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ")",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 875
    new-instance v6, Ljava/util/TreeSet;

    invoke-direct {v6}, Ljava/util/TreeSet;-><init>()V

    .line 877
    .local v6, "allAvailableVersions":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 878
    .local v7, "appContext":Landroid/content/Context;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 880
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "version"

    aput-object v3, v2, v4

    .line 881
    .local v2, "projection":[Ljava/lang/String;
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->buildPlatformProviderVersionURI(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/net/Uri;

    move-result-object v1

    .line 882
    .local v1, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 887
    .local v8, "c":Landroid/database/Cursor;
    :try_start_1a
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 888
    .local v13, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".provider.PlatformProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_38
    .catchall {:try_start_1a .. :try_end_38} :catchall_62

    move-result-object v9

    .line 889
    .local v9, "contentProviderName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 891
    .local v12, "pInfo":Landroid/content/pm/ProviderInfo;
    const/4 v3, 0x0

    :try_start_3b
    invoke-virtual {v13, v9, v3}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    :try_end_3e
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3e} :catch_69
    .catchall {:try_start_3b .. :try_end_3e} :catchall_62

    move-result-object v12

    .line 899
    :goto_3f
    if-eqz v12, :cond_7c

    .line 901
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_44
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_47
    .catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_47} :catch_72
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_47} :catch_82
    .catchall {:try_start_44 .. :try_end_47} :catchall_62

    move-result-object v8

    .line 912
    :goto_48
    if-eqz v8, :cond_7c

    .line 913
    :goto_4a
    :try_start_4a
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_7c

    .line 914
    const-string v3, "version"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 915
    .local v14, "version":I
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z
    :try_end_61
    .catchall {:try_start_4a .. :try_end_61} :catchall_62

    goto :goto_4a

    .line 920
    .end local v9    # "contentProviderName":Ljava/lang/String;
    .end local v12    # "pInfo":Landroid/content/pm/ProviderInfo;
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .end local v14    # "version":I
    :catchall_62
    move-exception v3

    if-eqz v8, :cond_68

    .line 921
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_68
    throw v3

    .line 892
    .restart local v9    # "contentProviderName":Ljava/lang/String;
    .restart local v12    # "pInfo":Landroid/content/pm/ProviderInfo;
    .restart local v13    # "pm":Landroid/content/pm/PackageManager;
    :catch_69
    move-exception v10

    .line 897
    .local v10, "e":Ljava/lang/RuntimeException;
    :try_start_6a
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->TAG:Ljava/lang/String;

    const-string v4, "Failed to query content resolver."

    invoke-static {v3, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    .line 902
    .end local v10    # "e":Ljava/lang/RuntimeException;
    :catch_72
    move-exception v11

    .line 903
    .local v11, "ex":Ljava/lang/RuntimeException;
    :goto_73
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->TAG:Ljava/lang/String;

    const-string v4, "Failed to query content resolver."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_6a .. :try_end_7a} :catchall_62

    .line 909
    const/4 v8, 0x0

    goto :goto_48

    .line 920
    .end local v11    # "ex":Ljava/lang/RuntimeException;
    :cond_7c
    if-eqz v8, :cond_81

    .line 921
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 925
    :cond_81
    return-object v6

    .line 902
    :catch_82
    move-exception v11

    goto :goto_73
.end method

.method private static findActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityAction"    # Ljava/lang/String;
    .param p2, "internalAction"    # Ljava/lang/String;

    .prologue
    .line 575
    sget-object v3, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 576
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    if-nez v2, :cond_c

    .line 577
    const/4 v1, 0x0

    .line 592
    :cond_b
    :goto_b
    return-object v1

    .line 580
    :cond_c
    const/4 v1, 0x0

    .line 581
    .local v1, "intent":Landroid/content/Intent;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 582
    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 583
    invoke-virtual {v4, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 584
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.category.DEFAULT"

    .line 585
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 586
    invoke-static {p0, v1, v0}, Lcom/facebook/internal/NativeProtocol;->validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;

    move-result-object v1

    .line 587
    if-eqz v1, :cond_11

    goto :goto_b
.end method

.method public static getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 729
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 730
    .local v0, "version":I
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v1

    if-nez v1, :cond_c

    .line 731
    const/4 v1, 0x0

    .line 734
    :goto_b
    return-object v1

    :cond_c
    const-string v1, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_b
.end method

.method public static getCallIdFromIntent(Landroid/content/Intent;)Ljava/util/UUID;
    .registers 6
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 704
    if-nez p0, :cond_4

    .line 705
    const/4 v1, 0x0

    .line 725
    :cond_3
    :goto_3
    return-object v1

    .line 707
    :cond_4
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v3

    .line 708
    .local v3, "version":I
    const/4 v2, 0x0

    .line 709
    .local v2, "callIdString":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 710
    const-string v4, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 711
    .local v0, "bridgeArgs":Landroid/os/Bundle;
    if-eqz v0, :cond_1d

    .line 712
    const-string v4, "action_id"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    .end local v0    # "bridgeArgs":Landroid/os/Bundle;
    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    .line 719
    .local v1, "callId":Ljava/util/UUID;
    if-eqz v2, :cond_3

    .line 721
    :try_start_20
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_23
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_23} :catch_2c

    move-result-object v1

    goto :goto_3

    .line 715
    .end local v1    # "callId":Ljava/util/UUID;
    :cond_25
    const-string v4, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1d

    .line 722
    .restart local v1    # "callId":Ljava/util/UUID;
    :catch_2c
    move-exception v4

    goto :goto_3
.end method

.method public static getErrorDataFromResultIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 3
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 766
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->isErrorResult(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 767
    const/4 v1, 0x0

    .line 775
    :goto_7
    return-object v1

    .line 770
    :cond_8
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 771
    .local v0, "bridgeArgs":Landroid/os/Bundle;
    if-eqz v0, :cond_15

    .line 772
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_7

    .line 775
    :cond_15
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_7
.end method

.method public static getExceptionFromErrorData(Landroid/os/Bundle;)Lcom/facebook/FacebookException;
    .registers 4
    .param p0, "errorData"    # Landroid/os/Bundle;

    .prologue
    .line 779
    if-nez p0, :cond_4

    .line 780
    const/4 v2, 0x0

    .line 798
    :goto_3
    return-object v2

    .line 783
    :cond_4
    const-string v2, "error_type"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 784
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_12

    .line 785
    const-string v2, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 788
    :cond_12
    const-string v2, "error_description"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "description":Ljava/lang/String;
    if-nez v0, :cond_20

    .line 790
    const-string v2, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    :cond_20
    if-eqz v1, :cond_30

    const-string v2, "UserCanceled"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 794
    new-instance v2, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 798
    :cond_30
    new-instance v2, Lcom/facebook/FacebookException;

    invoke-direct {v2, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getLatestAvailableProtocolVersionForAction(Ljava/lang/String;[I)I
    .registers 4
    .param p0, "action"    # Ljava/lang/String;
    .param p1, "versionSpec"    # [I

    .prologue
    .line 824
    sget-object v1, Lcom/facebook/internal/NativeProtocol;->actionToAppInfoMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 825
    .local v0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    invoke-static {v0, p1}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfoList(Ljava/util/List;[I)I

    move-result v1

    return v1
.end method

.method private static getLatestAvailableProtocolVersionForAppInfoList(Ljava/util/List;[I)I
    .registers 8
    .param p1, "versionSpec"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/internal/NativeProtocol$NativeAppInfo;",
            ">;[I)I"
        }
    .end annotation

    .prologue
    .local p0, "appInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/internal/NativeProtocol$NativeAppInfo;>;"
    const/4 v2, -0x1

    .line 832
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V

    .line 834
    if-nez p0, :cond_8

    move v1, v2

    .line 851
    :goto_7
    return v1

    .line 839
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 842
    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    invoke-virtual {v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getAvailableVersions()Ljava/util/TreeSet;

    move-result-object v4

    .line 843
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->getLatestKnownVersion()I

    move-result v5

    .line 841
    invoke-static {v4, v5, p1}, Lcom/facebook/internal/NativeProtocol;->computeLatestAvailableVersionFromVersionSpec(Ljava/util/TreeSet;I[I)I

    move-result v1

    .line 846
    .local v1, "protocolVersion":I
    if-eq v1, v2, :cond_c

    goto :goto_7

    .end local v0    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .end local v1    # "protocolVersion":I
    :cond_27
    move v1, v2

    .line 851
    goto :goto_7
.end method

.method public static getLatestAvailableProtocolVersionForService(I)I
    .registers 4
    .param p0, "minimumVersion"    # I

    .prologue
    .line 817
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->facebookAppInfoList:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p0, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/internal/NativeProtocol;->getLatestAvailableProtocolVersionForAppInfoList(Ljava/util/List;[I)I

    move-result v0

    return v0
.end method

.method public static final getLatestKnownVersion()I
    .registers 2

    .prologue
    .line 551
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static getMethodArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 738
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v0

    .line 739
    .local v0, "version":I
    invoke-static {v0}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 740
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 743
    :goto_e
    return-object v1

    :cond_f
    const-string v1, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    goto :goto_e
.end method

.method public static getProtocolVersionFromIntent(Landroid/content/Intent;)I
    .registers 3
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 700
    const-string v0, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getSuccessResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .registers 4
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 747
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getProtocolVersionFromIntent(Landroid/content/Intent;)I

    move-result v1

    .line 748
    .local v1, "version":I
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 749
    .local v0, "extras":Landroid/os/Bundle;
    invoke-static {v1}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v2

    if-eqz v2, :cond_10

    if-nez v0, :cond_11

    .line 753
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_10
    :goto_10
    return-object v0

    .restart local v0    # "extras":Landroid/os/Bundle;
    :cond_11
    const-string v2, "com.facebook.platform.protocol.RESULT_ARGS"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_10
.end method

.method public static isErrorResult(Landroid/content/Intent;)Z
    .registers 3
    .param p0, "resultIntent"    # Landroid/content/Intent;

    .prologue
    .line 757
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->getBridgeArgumentsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 758
    .local v0, "bridgeArgs":Landroid/os/Bundle;
    if-eqz v0, :cond_d

    .line 759
    const-string v1, "error"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    .line 761
    :goto_c
    return v1

    :cond_d
    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    goto :goto_c
.end method

.method public static isVersionCompatibleWithBucketedIntent(I)Z
    .registers 3
    .param p0, "version"    # I

    .prologue
    .line 596
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->KNOWN_PROTOCOL_VERSIONS:Ljava/util/List;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    const v0, 0x133529d

    if-lt p0, v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public static setupProtocolRequestIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 11
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "version"    # I
    .param p4, "params"    # Landroid/os/Bundle;

    .prologue
    .line 628
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "applicationId":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationName()Ljava/lang/String;

    move-result-object v1

    .line 631
    .local v1, "applicationName":Ljava/lang/String;
    const-string v4, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {p0, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.facebook.platform.protocol.PROTOCOL_ACTION"

    .line 632
    invoke-virtual {v4, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.facebook.platform.extra.APPLICATION_ID"

    .line 633
    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 635
    invoke-static {p3}, Lcom/facebook/internal/NativeProtocol;->isVersionCompatibleWithBucketedIntent(I)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 637
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 638
    .local v2, "bridgeArguments":Landroid/os/Bundle;
    const-string v4, "action_id"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v4, "app_name"

    invoke-static {v2, v4, v1}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v4, "com.facebook.platform.protocol.BRIDGE_ARGS"

    invoke-virtual {p0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 643
    if-nez p4, :cond_40

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 644
    .local v3, "methodArguments":Landroid/os/Bundle;
    :goto_3a
    const-string v4, "com.facebook.platform.protocol.METHOD_ARGS"

    invoke-virtual {p0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 653
    .end local v2    # "bridgeArguments":Landroid/os/Bundle;
    .end local v3    # "methodArguments":Landroid/os/Bundle;
    :goto_3f
    return-void

    .restart local v2    # "bridgeArguments":Landroid/os/Bundle;
    :cond_40
    move-object v3, p4

    .line 643
    goto :goto_3a

    .line 647
    .end local v2    # "bridgeArguments":Landroid/os/Bundle;
    :cond_42
    const-string v4, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {p0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_52

    .line 649
    const-string v4, "com.facebook.platform.extra.APPLICATION_NAME"

    invoke-virtual {p0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    :cond_52
    invoke-virtual {p0, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_3f
.end method

.method public static updateAllAvailableProtocolVersionsAsync()V
    .registers 3

    .prologue
    .line 855
    sget-object v0, Lcom/facebook/internal/NativeProtocol;->protocolVersionsAsyncUpdating:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 871
    :goto_a
    return-void

    .line 859
    :cond_b
    invoke-static {}, Lcom/facebook/FacebookSdk;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/internal/NativeProtocol$1;

    invoke-direct {v1}, Lcom/facebook/internal/NativeProtocol$1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_a
.end method

.method static validateActivityIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appInfo"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .prologue
    const/4 v1, 0x0

    .line 398
    if-nez p1, :cond_5

    move-object p1, v1

    .line 411
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_4
    return-object p1

    .line 402
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 403
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_12

    move-object p1, v1

    .line 404
    goto :goto_4

    .line 407
    :cond_12
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object p1, v1

    .line 408
    goto :goto_4
.end method

.method static validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "appInfo"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .prologue
    const/4 v1, 0x0

    .line 415
    if-nez p1, :cond_5

    move-object p1, v1

    .line 428
    .end local p1    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_4
    return-object p1

    .line 419
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 420
    .local v0, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v0, :cond_12

    move-object p1, v1

    .line 421
    goto :goto_4

    .line 424
    :cond_12
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0, v2}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validateSignature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object p1, v1

    .line 425
    goto :goto_4
.end method

###### Class com.facebook.internal.NativeProtocol.AnonymousClass1 (com.facebook.internal.NativeProtocol$1)
.class final Lcom/facebook/internal/NativeProtocol$1;
.super Ljava/lang/Object;
.source "NativeProtocol.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/NativeProtocol;->updateAllAvailableProtocolVersionsAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 863
    :try_start_1
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$600()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;

    .line 864
    .local v0, "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->access$700(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Z)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1a

    goto :goto_9

    .line 867
    .end local v0    # "appInfo":Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    :catchall_1a
    move-exception v1

    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1

    :cond_23
    invoke-static {}, Lcom/facebook/internal/NativeProtocol;->access$800()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 869
    return-void
.end method

###### Class com.facebook.internal.NativeProtocol.FBLiteAppInfo (com.facebook.internal.NativeProtocol$FBLiteAppInfo)
.class Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;
.super Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FBLiteAppInfo"
.end annotation


# static fields
.field static final FACEBOOK_LITE_ACTIVITY:Ljava/lang/String; = "com.facebook.lite.platform.LoginGDPDialogActivity"

.field static final FBLITE_PACKAGE:Ljava/lang/String; = "com.facebook.lite"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/facebook/internal/NativeProtocol$1;

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$FBLiteAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLoginActivity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 361
    const-string v0, "com.facebook.lite.platform.LoginGDPDialogActivity"

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 356
    const-string v0, "com.facebook.lite"

    return-object v0
.end method

###### Class com.facebook.internal.NativeProtocol.KatanaAppInfo (com.facebook.internal.NativeProtocol$KatanaAppInfo)
.class Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;
.super Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KatanaAppInfo"
.end annotation


# static fields
.field static final KATANA_PACKAGE:Ljava/lang/String; = "com.facebook.katana"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/facebook/internal/NativeProtocol$1;

    .prologue
    .line 307
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$KatanaAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLoginActivity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 317
    const-string v0, "com.facebook.katana.ProxyAuth"

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 312
    const-string v0, "com.facebook.katana"

    return-object v0
.end method

###### Class com.facebook.internal.NativeProtocol.MessengerAppInfo (com.facebook.internal.NativeProtocol$MessengerAppInfo)
.class Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;
.super Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessengerAppInfo"
.end annotation


# static fields
.field static final MESSENGER_PACKAGE:Ljava/lang/String; = "com.facebook.orca"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/facebook/internal/NativeProtocol$1;

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$MessengerAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLoginActivity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 326
    const-string v0, "com.facebook.orca"

    return-object v0
.end method

###### Class com.facebook.internal.NativeProtocol.NativeAppInfo (com.facebook.internal.NativeProtocol$NativeAppInfo)
.class abstract Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "NativeAppInfo"
.end annotation


# static fields
.field private static final FBI_HASH:Ljava/lang/String; = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

.field private static final FBL_HASH:Ljava/lang/String; = "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

.field private static final FBR_HASH:Ljava/lang/String; = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

.field private static final validAppSignatureHashes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private availableVersions:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 249
    invoke-static {}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->buildAppSignatureHashes()Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validAppSignatureHashes:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/facebook/internal/NativeProtocol$1;

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
    .param p1, "x1"    # Z

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V

    return-void
.end method

.method private static buildAppSignatureHashes()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 255
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v1, "8a3c4b262d721acd49a4bf97d5213199c86fa2b9"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 256
    const-string v1, "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 257
    const-string v1, "5e8f16062ea3cd2c4a0d547876baa6f38cabf625"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 258
    return-object v0
.end method

.method private declared-synchronized fetchAvailableVersions(Z)V
    .registers 3
    .param p1, "force"    # Z

    .prologue
    .line 301
    monitor-enter p0

    if-nez p1, :cond_7

    :try_start_3
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    if-nez v0, :cond_d

    .line 302
    :cond_7
    invoke-static {p0}, Lcom/facebook/internal/NativeProtocol;->access$000(Lcom/facebook/internal/NativeProtocol$NativeAppInfo;)Ljava/util/TreeSet;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    .line 304
    :cond_d
    monitor-exit p0

    return-void

    .line 301
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAvailableVersions()Ljava/util/TreeSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 294
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    if-nez v0, :cond_8

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->fetchAvailableVersions(Z)V

    .line 297
    :cond_8
    iget-object v0, p0, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->availableVersions:Ljava/util/TreeSet;

    return-object v0
.end method

.method protected abstract getLoginActivity()Ljava/lang/String;
.end method

.method protected abstract getPackage()Ljava/lang/String;
.end method

.method public validateSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 262
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 263
    .local v1, "brand":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget v0, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 264
    .local v0, "applicationFlags":I
    const-string v8, "generic"

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_17

    and-int/lit8 v8, v0, 0x2

    if-eqz v8, :cond_17

    .line 290
    :cond_16
    :goto_16
    return v6

    .line 272
    :cond_17
    :try_start_17
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/16 v9, 0x40

    invoke-virtual {v8, p2, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_20
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_20} :catch_2c

    move-result-object v4

    .line 279
    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v8, :cond_2a

    iget-object v8, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v8, v8

    if-gtz v8, :cond_2f

    :cond_2a
    move v6, v7

    .line 280
    goto :goto_16

    .line 274
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_2c
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move v6, v7

    .line 275
    goto :goto_16

    .line 283
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_2f
    iget-object v9, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v10, v9

    move v8, v7

    :goto_33
    if-ge v8, v10, :cond_16

    aget-object v5, v9, v8

    .line 284
    .local v5, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-static {v11}, Lcom/facebook/internal/Utility;->sha1hash([B)Ljava/lang/String;

    move-result-object v3

    .line 285
    .local v3, "hashedSignature":Ljava/lang/String;
    sget-object v11, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->validAppSignatureHashes:Ljava/util/HashSet;

    invoke-virtual {v11, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_49

    move v6, v7

    .line 286
    goto :goto_16

    .line 283
    :cond_49
    add-int/lit8 v8, v8, 0x1

    goto :goto_33
.end method

###### Class com.facebook.internal.NativeProtocol.WakizashiAppInfo (com.facebook.internal.NativeProtocol$WakizashiAppInfo)
.class Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;
.super Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WakizashiAppInfo"
.end annotation


# static fields
.field static final WAKIZASHI_PACKAGE:Ljava/lang/String; = "com.facebook.wakizashi"


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 335
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>(Lcom/facebook/internal/NativeProtocol$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/facebook/internal/NativeProtocol$1;

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$WakizashiAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLoginActivity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 345
    const-string v0, "com.facebook.katana.ProxyAuth"

    return-object v0
.end method

.method protected getPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    const-string v0, "com.facebook.wakizashi"

    return-object v0
.end method
