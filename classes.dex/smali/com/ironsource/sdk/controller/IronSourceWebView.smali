###### Class com.ironsource.sdk.controller.IronSourceWebView (com.ironsource.sdk.controller.IronSourceWebView)
.class public Lcom/ironsource/sdk/controller/IronSourceWebView;
.super Landroid/webkit/WebView;
.source "IronSourceWebView.java"

# interfaces
.implements Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/IronSourceWebView$State;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;,
        Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;
    }
.end annotation


# static fields
.field public static APP_IDS:Ljava/lang/String;

.field public static DISPLAY_WEB_VIEW_INTENT:I

.field public static EXTERNAL_URL:Ljava/lang/String;

.field public static IS_INSTALLED:Ljava/lang/String;

.field public static IS_STORE:Ljava/lang/String;

.field public static IS_STORE_CLOSE:Ljava/lang/String;

.field private static JSON_KEY_FAIL:Ljava/lang/String;

.field private static JSON_KEY_SUCCESS:Ljava/lang/String;

.field public static OPEN_URL_INTENT:I

.field public static REQUEST_ID:Ljava/lang/String;

.field public static RESULT:Ljava/lang/String;

.field public static SECONDARY_WEB_VIEW:Ljava/lang/String;

.field public static WEBVIEW_TYPE:Ljava/lang/String;

.field public static mDebugMode:I


# instance fields
.field private final GENERIC_MESSAGE:Ljava/lang/String;

.field private PUB_TAG:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

.field private isKitkatAndAbove:Ljava/lang/Boolean;

.field private isRemoveCloseEventHandler:Z

.field private mCacheDirectory:Ljava/lang/String;

.field private mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

.field private mCloseEventTimer:Landroid/os/CountDownTimer;

.field private mConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private mControllerCommandsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mControllerKeyPressed:Ljava/lang/String;

.field private mControllerLayout:Landroid/widget/FrameLayout;

.field private mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

.field mCurrentActivityContext:Landroid/content/Context;

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

.field private mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

.field private mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

.field private mGlobalControllerTimeFinish:Z

.field private mGlobalControllerTimer:Landroid/os/CountDownTimer;

.field private mHiddenForceCloseHeight:I

.field private mHiddenForceCloseLocation:Ljava/lang/String;

.field private mHiddenForceCloseWidth:I

.field private mISAppKey:Ljava/lang/String;

.field private mISUserId:Ljava/lang/String;

.field private mIsActivityThemeTranslucent:Z

.field private mIsImmersive:Z

.field private mLoadControllerTimer:Landroid/os/CountDownTimer;

.field private mMoatJsAdapter:Lcom/ironsource/sdk/controller/MOATJSAdapter;

.field private mOWAppKey:Ljava/lang/String;

.field private mOWCreditsAppKey:Ljava/lang/String;

.field private mOWCreditsMiss:Z

.field private mOWCreditsUserId:Ljava/lang/String;

.field private mOWExtraParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOWUserId:Ljava/lang/String;

.field private mOWmiss:Z

.field private mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

.field private mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

.field private mOrientationState:Ljava/lang/String;

.field private mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

.field private mProductParametersCollection:Lcom/ironsource/sdk/controller/ProductParametersCollection;

.field private mRVAppKey:Ljava/lang/String;

.field private mRVUserId:Ljava/lang/String;

.field private mRequestParameters:Ljava/lang/String;

.field private mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

.field private mSavedStateLocker:Ljava/lang/Object;

.field private mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

.field mUiHandler:Landroid/os/Handler;

.field private mUri:Landroid/net/Uri;

.field private mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

.field private mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 107
    sput v1, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDebugMode:I

    .line 128
    const-string v0, "is_store"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_STORE:Ljava/lang/String;

    .line 129
    const-string v0, "is_store_close"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_STORE_CLOSE:Ljava/lang/String;

    .line 130
    const-string v0, "webview_type"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->WEBVIEW_TYPE:Ljava/lang/String;

    .line 131
    const-string v0, "external_url"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    .line 132
    const-string v0, "secondary_web_view"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    .line 133
    sput v1, Lcom/ironsource/sdk/controller/IronSourceWebView;->DISPLAY_WEB_VIEW_INTENT:I

    .line 134
    const/4 v0, 0x1

    sput v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->OPEN_URL_INTENT:I

    .line 135
    const-string v0, "appIds"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->APP_IDS:Ljava/lang/String;

    .line 136
    const-string v0, "requestId"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->REQUEST_ID:Ljava/lang/String;

    .line 137
    const-string v0, "isInstalled"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_INSTALLED:Ljava/lang/String;

    .line 138
    const-string v0, "result"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->RESULT:Ljava/lang/String;

    .line 3345
    const-string v0, "success"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    .line 3346
    const-string v0, "fail"

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/sdk/controller/DemandSourceManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "demandSourceManager"    # Lcom/ironsource/sdk/controller/DemandSourceManager;

    .prologue
    const/16 v3, 0x32

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 104
    const-class v0, Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    .line 105
    const-string v0, "IronSource"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->PUB_TAG:Ljava/lang/String;

    .line 109
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->GENERIC_MESSAGE:Ljava/lang/String;

    .line 152
    const-string v0, "interrupt"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 159
    iput v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseWidth:I

    .line 160
    iput v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseHeight:I

    .line 161
    const-string v0, "top-right"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    .line 179
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->None:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 181
    iput-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedStateLocker:Ljava/lang/Object;

    .line 195
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsImmersive:Z

    .line 196
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsActivityThemeTranslucent:Z

    .line 204
    new-instance v0, Lcom/ironsource/sdk/controller/ProductParametersCollection;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/ProductParametersCollection;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mProductParametersCollection:Lcom/ironsource/sdk/controller/ProductParametersCollection;

    .line 3927
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$7;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$7;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v1, "C\'tor"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerCommandsQueue:Ljava/util/ArrayList;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    .line 218
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    .line 219
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    .line 220
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initLayout(Landroid/content/Context;)V

    .line 222
    new-instance v0, Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-direct {v0}, Lcom/ironsource/sdk/data/AdUnitsState;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 224
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 225
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0, p0}, Lcom/ironsource/sdk/precache/DownloadManager;->setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V

    .line 227
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    .line 229
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;

    invoke-direct {v0, p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 230
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 232
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebViewSettings()V

    .line 234
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createJSInterface(Landroid/content/Context;)Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    move-result-object v0

    const-string v1, "Android"

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 238
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    invoke-direct {v0, p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 239
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUiHandler:Landroid/os/Handler;

    .line 243
    return-void
.end method

.method static synthetic access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/view/View;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->invokePendingCommands()V

    return-void
.end method

.method static synthetic access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWmiss:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsMiss:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsAppKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/content/Context;)[Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseWidth:I

    return v0
.end method

.method static synthetic access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseWidth:I

    return p1
.end method

.method static synthetic access$4100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/precache/DownloadManager;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsImmersive:Z

    return v0
.end method

.method static synthetic access$4802(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsImmersive:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsActivityThemeTranslucent:Z

    return v0
.end method

.method static synthetic access$4902(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mIsActivityThemeTranslucent:Z

    return p1
.end method

.method static synthetic access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseHeight:I

    return v0
.end method

.method static synthetic access$5000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseHeight:I

    return p1
.end method

.method static synthetic access$5100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .registers 1
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->closeWebView()V

    return-void
.end method

.method static synthetic access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->PUB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    .registers 3
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnGenericFunctionListener:Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebviewBackground(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;
    .param p7, "x7"    # Ljava/lang/String;
    .param p8, "x8"    # Ljava/lang/String;
    .param p9, "x9"    # Ljava/lang/String;
    .param p10, "x10"    # Z

    .prologue
    .line 99
    invoke-direct/range {p0 .. p10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$602(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mHiddenForceCloseLocation:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    return-object v0
.end method

.method static synthetic access$6200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 99
    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/webkit/WebView;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getWebview()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/MOATJSAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mMoatJsAdapter:Lcom/ironsource/sdk/controller/MOATJSAdapter;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/PermissionsJSAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Landroid/location/Location;)Lcom/ironsource/sdk/data/SSAObj;
    .registers 4
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/location/Location;

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createLocationObject(Ljava/lang/String;Landroid/location/Location;)Lcom/ironsource/sdk/data/SSAObj;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$6702(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isKitkatAndAbove:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$6800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->evaluateJavascriptKitKat(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isRemoveCloseEventHandler:Z

    return v0
.end method

.method static synthetic access$702(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->isRemoveCloseEventHandler:Z

    return p1
.end method

.method static synthetic access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCloseEventTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$902(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimeFinish:Z

    return p1
.end method

.method private closeWebView()V
    .registers 2

    .prologue
    .line 3333
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    if-eqz v0, :cond_9

    .line 3334
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onCloseRequested()V

    .line 3336
    :cond_9
    return-void
.end method

.method private controllerCommandSupportsQueue(Ljava/lang/String;)Z
    .registers 4
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    .line 3247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3248
    .local v0, "supportedCommand":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "updateConsentInfo"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3250
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private createInitProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)Ljava/lang/String;
    .registers 20
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSource"    # Lcom/ironsource/sdk/data/DemandSource;

    .prologue
    .line 2971
    const-string v16, ""

    .line 2973
    .local v16, "script":Ljava/lang/String;
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_14

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-eq v0, v1, :cond_14

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_70

    .line 2974
    :cond_14
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 2975
    .local v15, "productParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mProductParametersCollection:Lcom/ironsource/sdk/controller/ProductParametersCollection;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/ProductParametersCollection;->getProductParameters(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/data/ProductParameters;

    move-result-object v14

    .line 2976
    .local v14, "productParameters":Lcom/ironsource/sdk/data/ProductParameters;
    if-eqz v14, :cond_33

    .line 2977
    const-string v1, "applicationKey"

    iget-object v2, v14, Lcom/ironsource/sdk/data/ProductParameters;->appKey:Ljava/lang/String;

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2978
    const-string v1, "applicationUserId"

    iget-object v2, v14, Lcom/ironsource/sdk/data/ProductParameters;->userId:Ljava/lang/String;

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2981
    :cond_33
    if-eqz p2, :cond_62

    .line 2982
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 2983
    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2985
    :cond_42
    const-string v1, "demandSourceName"

    invoke-virtual/range {p2 .. p2}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2991
    :cond_4b
    :goto_4b
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/ironsource/sdk/controller/IronSourceWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    .line 2992
    .local v13, "params":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/ironsource/sdk/constants/Constants$JSMethods;->getInitMethodByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;

    move-result-object v12

    .line 2993
    .local v12, "method":Lcom/ironsource/sdk/constants/Constants$JSMethods;
    iget-object v1, v12, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iget-object v2, v12, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    iget-object v3, v12, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 3003
    .end local v12    # "method":Lcom/ironsource/sdk/constants/Constants$JSMethods;
    .end local v13    # "params":Ljava/lang/String;
    .end local v14    # "productParameters":Lcom/ironsource/sdk/data/ProductParameters;
    .end local v15    # "productParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_61
    :goto_61
    return-object v16

    .line 2987
    .restart local v14    # "productParameters":Lcom/ironsource/sdk/data/ProductParameters;
    .restart local v15    # "productParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_62
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 2988
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_4b

    .line 2995
    .end local v14    # "productParameters":Lcom/ironsource/sdk/data/ProductParameters;
    .end local v15    # "productParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_70
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_61

    .line 2996
    const-string v2, "productType"

    const-string v3, "OfferWall"

    const-string v4, "applicationKey"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsAppKey:Ljava/lang/String;

    const-string v6, "applicationUserId"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsUserId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 3000
    .restart local v13    # "params":Ljava/lang/String;
    const-string v1, "getUserCredits"

    const-string v2, "null"

    const-string v3, "onGetUserCreditsFail"

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    goto :goto_61
.end method

.method private createLocationObject(Ljava/lang/String;Landroid/location/Location;)Lcom/ironsource/sdk/data/SSAObj;
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "location"    # Landroid/location/Location;

    .prologue
    .line 2619
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2620
    .local v0, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    if-eqz p2, :cond_6c

    .line 2621
    const-string v1, "provider"

    invoke-virtual {p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2622
    const-string v1, "latitude"

    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2623
    const-string v1, "longitude"

    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2624
    const-string v1, "altitude"

    invoke-virtual {p2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    const-string v1, "time"

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2626
    const-string v1, "accuracy"

    invoke-virtual {p2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2627
    const-string v1, "bearing"

    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2628
    const-string v1, "speed"

    invoke-virtual {p2}, Landroid/location/Location;->getSpeed()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    :goto_6b
    return-object v0

    .line 2630
    :cond_6c
    const-string v1, "error"

    const-string v2, "location data is not available"

    invoke-virtual {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6b
.end method

.method private createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 13
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "showParams"    # Lorg/json/JSONObject;

    .prologue
    .line 3007
    const-string v5, ""

    .line 3009
    .local v5, "script":Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 3010
    .local v4, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v7, "sessionDepth"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 3011
    .local v6, "sessionDepth":Ljava/lang/String;
    const-string v7, "sessionDepth"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3013
    const-string v7, "demandSourceName"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3014
    .local v1, "demandSourceName":Ljava/lang/String;
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    invoke-virtual {v7, p1, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 3016
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_4f

    .line 3017
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_31

    .line 3018
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 3021
    :cond_31
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3c

    .line 3022
    const-string v7, "demandSourceName"

    invoke-interface {v4, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3028
    :cond_3c
    :goto_3c
    invoke-direct {p0, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 3029
    .local v3, "params":Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/sdk/constants/Constants$JSMethods;->getShowMethodByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/constants/Constants$JSMethods;

    move-result-object v2

    .line 3030
    .local v2, "method":Lcom/ironsource/sdk/constants/Constants$JSMethods;
    iget-object v7, v2, Lcom/ironsource/sdk/constants/Constants$JSMethods;->methodName:Ljava/lang/String;

    iget-object v8, v2, Lcom/ironsource/sdk/constants/Constants$JSMethods;->successCallbackName:Ljava/lang/String;

    iget-object v9, v2, Lcom/ironsource/sdk/constants/Constants$JSMethods;->failureCallbackName:Ljava/lang/String;

    invoke-direct {p0, v7, v3, v8, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3032
    return-object v5

    .line 3024
    .end local v2    # "method":Lcom/ironsource/sdk/constants/Constants$JSMethods;
    .end local v3    # "params":Ljava/lang/String;
    :cond_4f
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object v7

    if-eqz v7, :cond_3c

    .line 3025
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_3c
.end method

.method private evaluateJavascriptKitKat(Ljava/lang/String;)V
    .registers 3
    .param p1, "script"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 3243
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 3244
    return-void
.end method

.method private extractFailFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 3401
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3402
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    sget-object v2, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3404
    .local v0, "funToCall":Ljava/lang/String;
    return-object v0
.end method

.method private extractSuccessFunctionToCall(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "jsonStr"    # Ljava/lang/String;

    .prologue
    .line 3393
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3394
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    sget-object v2, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3396
    .local v0, "funToCall":Ljava/lang/String;
    return-object v0
.end method

.method private flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3036
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3037
    .local v2, "jsObj":Lorg/json/JSONObject;
    if-eqz p1, :cond_50

    .line 3038
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3039
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 3040
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3042
    .local v3, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1b
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_2e} :catch_32

    .line 3046
    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    .line 3043
    :catch_32
    move-exception v0

    .line 3044
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flatMapToJsonAsStringfailed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 3050
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v3    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_50
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private generateJSToInject(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "funToCall"    # Ljava/lang/String;

    .prologue
    .line 4100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4101
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;

    .prologue
    .line 4106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4108
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "successFunc"    # Ljava/lang/String;
    .param p3, "failFunc"    # Ljava/lang/String;

    .prologue
    .line 4114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4116
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4117
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "parameters"    # Ljava/lang/String;
    .param p3, "successFunc"    # Ljava/lang/String;
    .param p4, "failFunc"    # Ljava/lang/String;

    .prologue
    .line 4123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4125
    .local v0, "script":Ljava/lang/StringBuilder;
    const-string v1, "SSA_CORE.SDKController.runFunction(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4126
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?parameters="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4127
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    .registers 3
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 2637
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_7

    .line 2638
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    .line 2643
    :goto_6
    return-object v0

    .line 2639
    :cond_7
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_e

    .line 2640
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    goto :goto_6

    .line 2643
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private getApplicationParams(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 20
    .param p1, "productType"    # Ljava/lang/String;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 3660
    const/4 v5, 0x0

    .line 3662
    .local v5, "fail":Z
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 3664
    .local v6, "jsObj":Lorg/json/JSONObject;
    const-string v1, ""

    .line 3665
    .local v1, "appKey":Ljava/lang/String;
    const-string v11, ""

    .line 3667
    .local v11, "userId":Ljava/lang/String;
    const/4 v7, 0x0

    .line 3670
    .local v7, "productExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f7

    .line 3672
    invoke-direct/range {p0 .. p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v10

    .line 3673
    .local v10, "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    sget-object v12, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v10, v12, :cond_1d

    sget-object v12, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v10, v12, :cond_cf

    .line 3674
    :cond_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mProductParametersCollection:Lcom/ironsource/sdk/controller/ProductParametersCollection;

    invoke-virtual {v12, v10}, Lcom/ironsource/sdk/controller/ProductParametersCollection;->getProductParameters(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/data/ProductParameters;

    move-result-object v8

    .line 3675
    .local v8, "productParameters":Lcom/ironsource/sdk/data/ProductParameters;
    iget-object v1, v8, Lcom/ironsource/sdk/data/ProductParameters;->appKey:Ljava/lang/String;

    .line 3676
    iget-object v11, v8, Lcom/ironsource/sdk/data/ProductParameters;->userId:Ljava/lang/String;

    .line 3677
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-object/from16 v0, p2

    invoke-virtual {v12, v10, v0}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v2

    .line 3678
    .local v2, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v2, :cond_40

    .line 3679
    invoke-virtual {v2}, Lcom/ironsource/sdk/data/DemandSource;->getExtraParams()Ljava/util/Map;

    move-result-object v7

    .line 3680
    const-string v12, "demandSourceName"

    move-object/from16 v0, p2

    invoke-interface {v7, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3690
    .end local v2    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    .end local v8    # "productParameters":Lcom/ironsource/sdk/data/ProductParameters;
    :cond_40
    :goto_40
    :try_start_40
    const-string v12, "productType"

    move-object/from16 v0, p1

    invoke-virtual {v6, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_47} :catch_e1

    .line 3706
    .end local v10    # "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :goto_47
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_110

    .line 3708
    :try_start_4d
    const-string v12, "applicationUserId"

    .line 3709
    invoke-static {v12}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3710
    invoke-static {v11}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3708
    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_4d .. :try_end_5a} :catch_fa

    .line 3721
    :goto_5a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_129

    .line 3723
    :try_start_60
    const-string v12, "applicationKey"

    .line 3724
    invoke-static {v12}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3725
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3723
    invoke-virtual {v6, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6d
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_6d} :catch_113

    .line 3735
    :goto_6d
    if-eqz v7, :cond_12c

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_12c

    .line 3737
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3739
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v14, "sdkWebViewCache"

    invoke-virtual {v12, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a2

    .line 3740
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebviewCache(Ljava/lang/String;)V

    .line 3744
    :cond_a2
    :try_start_a2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b9
    .catch Lorg/json/JSONException; {:try_start_a2 .. :try_end_b9} :catch_ba

    goto :goto_7d

    .line 3745
    :catch_ba
    move-exception v3

    .line 3746
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3747
    new-instance v12, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v12}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "https://www.supersonicads.com/mobile/sdk5/log?method=extraParametersToJson"

    aput-object v16, v14, v15

    invoke-virtual {v12, v14}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_7d

    .line 3683
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v10    # "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :cond_cf
    sget-object v12, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v10, v12, :cond_40

    .line 3684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWAppKey:Ljava/lang/String;

    .line 3685
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWUserId:Ljava/lang/String;

    .line 3686
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    goto/16 :goto_40

    .line 3696
    :catch_e1
    move-exception v3

    .line 3697
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3698
    new-instance v12, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v12}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "https://www.supersonicads.com/mobile/sdk5/log?method=noProductType"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_47

    .line 3702
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v10    # "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :cond_f7
    const/4 v5, 0x1

    goto/16 :goto_47

    .line 3712
    :catch_fa
    move-exception v3

    .line 3713
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3714
    new-instance v12, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v12}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppUserId"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5a

    .line 3717
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_110
    const/4 v5, 0x1

    goto/16 :goto_5a

    .line 3726
    :catch_113
    move-exception v3

    .line 3727
    .restart local v3    # "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3728
    new-instance v12, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v12}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppKey"

    aput-object v15, v13, v14

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6d

    .line 3731
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_129
    const/4 v5, 0x1

    goto/16 :goto_6d

    .line 3752
    :cond_12c
    const/4 v12, 0x2

    new-array v9, v12, [Ljava/lang/Object;

    .line 3753
    .local v9, "result":[Ljava/lang/Object;
    const/4 v12, 0x0

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v9, v12

    .line 3754
    const/4 v12, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v9, v12

    .line 3756
    return-object v9
.end method

.method private getAppsStatus(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 19
    .param p1, "appIds"    # Ljava/lang/String;
    .param p2, "requestId"    # Ljava/lang/String;

    .prologue
    .line 3761
    const/4 v6, 0x0

    .line 3763
    .local v6, "fail":Z
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V

    .line 3766
    .local v13, "result":Lorg/json/JSONObject;
    :try_start_6
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_af

    const-string v14, "null"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_af

    .line 3767
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_a3

    const-string v14, "null"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a3

    .line 3768
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 3769
    .local v4, "ctx":Landroid/content/Context;
    invoke-static {v4}, Lcom/ironsource/environment/DeviceStatus;->getInstalledApplications(Landroid/content/Context;)Ljava/util/List;

    move-result-object v12

    .line 3772
    .local v12, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v2, Lorg/json/JSONArray;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 3774
    .local v2, "appIdsArray":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3776
    .local v3, "bundleIds":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3b
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v9, v14, :cond_85

    .line 3777
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3779
    .local v1, "appId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_82

    .line 3780
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 3781
    .local v10, "isInstalled":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 3783
    .local v8, "found":Z
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_59
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_77

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ApplicationInfo;

    .line 3784
    .local v11, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v15, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_59

    .line 3785
    sget-object v14, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_INSTALLED:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3786
    invoke-virtual {v3, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3787
    const/4 v8, 0x1

    .line 3791
    .end local v11    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    :cond_77
    if-nez v8, :cond_82

    .line 3792
    sget-object v14, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_INSTALLED:Ljava/lang/String;

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3793
    invoke-virtual {v3, v1, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3776
    .end local v8    # "found":Z
    .end local v10    # "isInstalled":Lorg/json/JSONObject;
    :cond_82
    add-int/lit8 v9, v9, 0x1

    goto :goto_3b

    .line 3798
    .end local v1    # "appId":Ljava/lang/String;
    :cond_85
    sget-object v14, Lcom/ironsource/sdk/controller/IronSourceWebView;->RESULT:Ljava/lang/String;

    invoke-virtual {v13, v14, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3799
    sget-object v14, Lcom/ironsource/sdk/controller/IronSourceWebView;->REQUEST_ID:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v13, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_91} :catch_ac

    .line 3813
    .end local v2    # "appIdsArray":Lorg/json/JSONArray;
    .end local v3    # "bundleIds":Lorg/json/JSONObject;
    .end local v4    # "ctx":Landroid/content/Context;
    .end local v9    # "i":I
    .end local v12    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_91
    const/4 v14, 0x2

    new-array v7, v14, [Ljava/lang/Object;

    .line 3814
    .local v7, "finalResult":[Ljava/lang/Object;
    const/4 v14, 0x0

    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v7, v14

    .line 3815
    const/4 v14, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v7, v14

    .line 3817
    return-object v7

    .line 3802
    .end local v7    # "finalResult":[Ljava/lang/Object;
    :cond_a3
    const/4 v6, 0x1

    .line 3803
    :try_start_a4
    const-string v14, "error"

    const-string v15, "requestId is null or empty"

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_91

    .line 3809
    :catch_ac
    move-exception v5

    .line 3810
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x1

    goto :goto_91

    .line 3806
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_af
    const/4 v6, 0x1

    .line 3807
    const-string v14, "error"

    const-string v15, "appIds is null or empty"

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b7} :catch_ac

    goto :goto_91
.end method

.method private getDeviceParams(Landroid/content/Context;)[Ljava/lang/Object;
    .registers 42
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3463
    const/16 v20, 0x0

    .line 3465
    .local v20, "fail":Z
    invoke-static/range {p1 .. p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v15

    .line 3467
    .local v15, "deviceProperties":Lcom/ironsource/sdk/utils/DeviceProperties;
    new-instance v26, Lorg/json/JSONObject;

    invoke-direct/range {v26 .. v26}, Lorg/json/JSONObject;-><init>()V

    .line 3472
    .local v26, "jsObj":Lorg/json/JSONObject;
    :try_start_b
    const-string v34, "appOrientation"

    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v35

    invoke-static/range {v35 .. v35}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3475
    invoke-virtual {v15}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOem()Ljava/lang/String;

    move-result-object v14

    .line 3476
    .local v14, "deviceOem":Ljava/lang/String;
    if-eqz v14, :cond_3b

    .line 3477
    const-string v34, "deviceOEM"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static {v14}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3481
    :cond_3b
    invoke-virtual {v15}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceModel()Ljava/lang/String;

    move-result-object v11

    .line 3482
    .local v11, "deviceModel":Ljava/lang/String;
    if-eqz v11, :cond_3a5

    .line 3483
    const-string v34, "deviceModel"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static {v11}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3489
    :goto_54
    invoke-static/range {p1 .. p1}, Lcom/ironsource/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    .line 3490
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v4

    .line 3491
    .local v4, "advertiserId":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isLimitAdTrackingEnabled()Z

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    .line 3493
    .local v24, "isLAT":Ljava/lang/Boolean;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_ad

    .line 3495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    move-object/from16 v34, v0

    const-string v35, "add AID and LAT"

    invoke-static/range {v34 .. v35}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3498
    const-string v34, "isLimitAdTrackingEnabled"

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3501
    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "deviceIds"

    .line 3502
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "["

    .line 3503
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "AID"

    .line 3504
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    .line 3505
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3507
    .local v5, "aid":Ljava/lang/StringBuilder;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3511
    .end local v5    # "aid":Ljava/lang/StringBuilder;
    :cond_ad
    invoke-virtual {v15}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v12

    .line 3512
    .local v12, "deviceOSType":Ljava/lang/String;
    if-eqz v12, :cond_3a9

    .line 3513
    const-string v34, "deviceOs"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static {v12}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3519
    :goto_c6
    invoke-virtual {v15}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsVersion()Ljava/lang/String;

    move-result-object v13

    .line 3520
    .local v13, "deviceOSVersion":Ljava/lang/String;
    if-eqz v13, :cond_3ad

    .line 3521
    const-string v34, "[^0-9/.]"

    const-string v35, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3522
    const-string v34, "deviceOSVersion"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3528
    :goto_e5
    invoke-virtual {v15}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceApiLevel()I

    move-result v34

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 3529
    .local v8, "deviceApiLevel":Ljava/lang/String;
    if-eqz v8, :cond_3b1

    .line 3530
    const-string v34, "deviceApiLevel"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3536
    :goto_fc
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v32

    .line 3537
    .local v32, "ssaSDKVersion":Ljava/lang/String;
    if-eqz v32, :cond_115

    .line 3538
    const-string v34, "SDKVersion"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v32 .. v32}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3542
    :cond_115
    invoke-virtual {v15}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v34

    if-eqz v34, :cond_13c

    invoke-virtual {v15}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I

    move-result v34

    if-lez v34, :cond_13c

    .line 3543
    const-string v34, "mobileCarrier"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v15}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceCarrier()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3547
    :cond_13c
    invoke-static/range {p1 .. p1}, Lcom/ironsource/environment/ConnectivityService;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 3548
    .local v6, "connectionType":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3b5

    .line 3549
    const-string v34, "connectionType"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3555
    :goto_159
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 3556
    .local v10, "deviceLanguage":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_188

    .line 3557
    const-string v34, "deviceLanguage"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3561
    :cond_188
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v34

    if-eqz v34, :cond_3b9

    .line 3562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/ironsource/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v22

    .line 3563
    .local v22, "freeDiskSize":J
    const-string v34, "diskFreeSize"

    .line 3564
    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3565
    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3563
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3571
    .end local v22    # "freeDiskSize":J
    :goto_1af
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceWidth()I

    move-result v18

    .line 3572
    .local v18, "deviceWidth":I
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v33

    .line 3573
    .local v33, "width":Ljava/lang/String;
    invoke-static/range {v33 .. v33}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_3bd

    .line 3575
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 3576
    .local v27, "key":Ljava/lang/StringBuilder;
    const-string v34, "deviceScreenSize"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "["

    .line 3577
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "width"

    .line 3578
    invoke-static/range {v35 .. v35}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    .line 3579
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3581
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 3582
    invoke-static/range {v33 .. v33}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3581
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3588
    .end local v27    # "key":Ljava/lang/StringBuilder;
    :goto_1f6
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceHeight()I

    move-result v9

    .line 3589
    .local v9, "deviceHeigh":I
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v21

    .line 3591
    .local v21, "height":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    .line 3592
    .restart local v27    # "key":Ljava/lang/StringBuilder;
    const-string v34, "deviceScreenSize"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "["

    .line 3593
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "height"

    .line 3594
    invoke-static/range {v35 .. v35}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    const-string v35, "]"

    .line 3595
    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3597
    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 3598
    invoke-static/range {v21 .. v21}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3597
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3600
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/ironsource/environment/ApplicationContext;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    .line 3601
    .local v28, "packageName":Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_258

    .line 3602
    const-string v34, "bundleId"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v28 .. v28}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3605
    :cond_258
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceDensity()F

    move-result v16

    .line 3606
    .local v16, "deviceScale":F
    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v31

    .line 3607
    .local v31, "scaleStr":Ljava/lang/String;
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_279

    .line 3608
    const-string v34, "deviceScreenScale"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v31 .. v31}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3611
    :cond_279
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->isRootedDevice()Z

    move-result v25

    .line 3612
    .local v25, "isRoot":Z
    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v30

    .line 3613
    .local v30, "rootStr":Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_29a

    .line 3614
    const-string v34, "unLocked"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v30 .. v30}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3617
    :cond_29a
    invoke-static/range {p1 .. p1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceVolume(Landroid/content/Context;)F

    move-result v17

    .line 3618
    .local v17, "deviceVolume":F
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v34

    if-nez v34, :cond_2c0

    .line 3619
    const-string v34, "deviceVolume"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 3621
    :cond_2c0
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v7

    .line 3622
    .local v7, "ctx":Landroid/content/Context;
    sget v34, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v35, 0x13

    move/from16 v0, v34

    move/from16 v1, v35

    if-lt v0, v1, :cond_2ec

    instance-of v0, v7, Landroid/app/Activity;

    move/from16 v34, v0

    if-eqz v34, :cond_2ec

    .line 3623
    const-string v34, "immersiveMode"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object v0, v7

    check-cast v0, Landroid/app/Activity;

    move-object/from16 v34, v0

    .line 3624
    invoke-static/range {v34 .. v34}, Lcom/ironsource/environment/DeviceStatus;->isImmersiveSupported(Landroid/app/Activity;)Z

    move-result v34

    .line 3623
    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 3627
    :cond_2ec
    const-string v34, "batteryLevel"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    invoke-static {v7}, Lcom/ironsource/environment/DeviceStatus;->getBatteryLevel(Landroid/content/Context;)I

    move-result v35

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3629
    const-string v34, "mcc"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3630
    invoke-static {v7}, Lcom/ironsource/environment/ConnectivityService;->getNetworkMCC(Landroid/content/Context;)I

    move-result v35

    .line 3629
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3631
    const-string v34, "mnc"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3632
    invoke-static {v7}, Lcom/ironsource/environment/ConnectivityService;->getNetworkMNC(Landroid/content/Context;)I

    move-result v35

    .line 3631
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3634
    const-string v34, "phoneType"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3635
    invoke-static {v7}, Lcom/ironsource/environment/ConnectivityService;->getPhoneType(Landroid/content/Context;)I

    move-result v35

    .line 3634
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3636
    const-string v34, "simOperator"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3637
    invoke-static {v7}, Lcom/ironsource/environment/ConnectivityService;->getSimOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3636
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3639
    const-string v34, "lastUpdateTime"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3640
    invoke-static {v7}, Lcom/ironsource/environment/ApplicationContext;->getLastUpdateTime(Landroid/content/Context;)J

    move-result-wide v36

    .line 3639
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3641
    const-string v34, "firstInstallTime"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3642
    invoke-static {v7}, Lcom/ironsource/environment/ApplicationContext;->getFirstInstallTime(Landroid/content/Context;)J

    move-result-wide v36

    .line 3641
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-wide/from16 v2, v36

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 3643
    const-string v34, "appVersion"

    invoke-static/range {v34 .. v34}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 3644
    invoke-static {v7}, Lcom/ironsource/environment/ApplicationContext;->getApplicationVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 3643
    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_38c
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_38c} :catch_3c1

    .line 3651
    .end local v4    # "advertiserId":Ljava/lang/String;
    .end local v6    # "connectionType":Ljava/lang/String;
    .end local v7    # "ctx":Landroid/content/Context;
    .end local v8    # "deviceApiLevel":Ljava/lang/String;
    .end local v9    # "deviceHeigh":I
    .end local v10    # "deviceLanguage":Ljava/lang/String;
    .end local v11    # "deviceModel":Ljava/lang/String;
    .end local v12    # "deviceOSType":Ljava/lang/String;
    .end local v13    # "deviceOSVersion":Ljava/lang/String;
    .end local v14    # "deviceOem":Ljava/lang/String;
    .end local v16    # "deviceScale":F
    .end local v17    # "deviceVolume":F
    .end local v18    # "deviceWidth":I
    .end local v21    # "height":Ljava/lang/String;
    .end local v24    # "isLAT":Ljava/lang/Boolean;
    .end local v25    # "isRoot":Z
    .end local v27    # "key":Ljava/lang/StringBuilder;
    .end local v28    # "packageName":Ljava/lang/String;
    .end local v30    # "rootStr":Ljava/lang/String;
    .end local v31    # "scaleStr":Ljava/lang/String;
    .end local v32    # "ssaSDKVersion":Ljava/lang/String;
    .end local v33    # "width":Ljava/lang/String;
    :goto_38c
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    .line 3652
    .local v29, "result":[Ljava/lang/Object;
    const/16 v34, 0x0

    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v29, v34

    .line 3653
    const/16 v34, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v35

    aput-object v35, v29, v34

    .line 3655
    return-object v29

    .line 3485
    .end local v29    # "result":[Ljava/lang/Object;
    .restart local v11    # "deviceModel":Ljava/lang/String;
    .restart local v14    # "deviceOem":Ljava/lang/String;
    :cond_3a5
    const/16 v20, 0x1

    goto/16 :goto_54

    .line 3515
    .restart local v4    # "advertiserId":Ljava/lang/String;
    .restart local v12    # "deviceOSType":Ljava/lang/String;
    .restart local v24    # "isLAT":Ljava/lang/Boolean;
    :cond_3a9
    const/16 v20, 0x1

    goto/16 :goto_c6

    .line 3524
    .restart local v13    # "deviceOSVersion":Ljava/lang/String;
    :cond_3ad
    const/16 v20, 0x1

    goto/16 :goto_e5

    .line 3532
    .restart local v8    # "deviceApiLevel":Ljava/lang/String;
    :cond_3b1
    const/16 v20, 0x1

    goto/16 :goto_fc

    .line 3551
    .restart local v6    # "connectionType":Ljava/lang/String;
    .restart local v32    # "ssaSDKVersion":Ljava/lang/String;
    :cond_3b5
    const/16 v20, 0x1

    goto/16 :goto_159

    .line 3567
    .restart local v10    # "deviceLanguage":Ljava/lang/String;
    :cond_3b9
    const/16 v20, 0x1

    goto/16 :goto_1af

    .line 3584
    .restart local v18    # "deviceWidth":I
    .restart local v33    # "width":Ljava/lang/String;
    :cond_3bd
    const/16 v20, 0x1

    goto/16 :goto_1f6

    .line 3646
    .end local v4    # "advertiserId":Ljava/lang/String;
    .end local v6    # "connectionType":Ljava/lang/String;
    .end local v8    # "deviceApiLevel":Ljava/lang/String;
    .end local v10    # "deviceLanguage":Ljava/lang/String;
    .end local v11    # "deviceModel":Ljava/lang/String;
    .end local v12    # "deviceOSType":Ljava/lang/String;
    .end local v13    # "deviceOSVersion":Ljava/lang/String;
    .end local v14    # "deviceOem":Ljava/lang/String;
    .end local v18    # "deviceWidth":I
    .end local v24    # "isLAT":Ljava/lang/Boolean;
    .end local v32    # "ssaSDKVersion":Ljava/lang/String;
    .end local v33    # "width":Ljava/lang/String;
    :catch_3c1
    move-exception v19

    .line 3647
    .local v19, "e":Lorg/json/JSONException;
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONException;->printStackTrace()V

    .line 3648
    new-instance v34, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct/range {v34 .. v34}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v38

    const/16 v39, 0x0

    aget-object v38, v38, v39

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    aput-object v37, v35, v36

    invoke-virtual/range {v34 .. v35}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_38c
.end method

.method private getExtraParamsByProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Map;
    .registers 3
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_7

    .line 208
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    .line 210
    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private getRequestParameters(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 18
    .param p1, "configObject"    # Lorg/json/JSONObject;

    .prologue
    .line 3262
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v9

    .line 3264
    .local v9, "properties":Lcom/ironsource/sdk/utils/DeviceProperties;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3266
    .local v1, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/ironsource/sdk/utils/DeviceProperties;->getSupersonicSdkVersion()Ljava/lang/String;

    move-result-object v11

    .line 3267
    .local v11, "sdkVer":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2c

    .line 3268
    const-string v13, "SDKVersion"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    .line 3269
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3270
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "&"

    .line 3271
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3274
    :cond_2c
    invoke-virtual {v9}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceOsType()Ljava/lang/String;

    move-result-object v7

    .line 3275
    .local v7, "osType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_45

    .line 3276
    const-string v13, "deviceOs"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    .line 3277
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3278
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3281
    :cond_45
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v12

    .line 3282
    .local v12, "serverControllerUrl":Ljava/lang/String;
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3284
    .local v4, "downloadUri":Landroid/net/Uri;
    if-eqz v4, :cond_108

    .line 3285
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3286
    .local v10, "scheme":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 3287
    .local v6, "host":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/net/Uri;->getPort()I

    move-result v8

    .line 3288
    .local v8, "port":I
    const/4 v13, -0x1

    if-eq v8, v13, :cond_88

    .line 3289
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3292
    :cond_88
    const-string v13, "&"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "protocol"

    .line 3293
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    .line 3294
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3295
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3297
    const-string v13, "&"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "domain"

    .line 3298
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    .line 3299
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3300
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3302
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_ef

    .line 3305
    :try_start_bc
    new-instance v2, Lorg/json/JSONObject;

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "isSecured"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-string v15, "applicationKey"

    aput-object v15, v13, v14

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v13}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    .line 3310
    .local v2, "conf":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3311
    .local v3, "config":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_ef

    .line 3312
    const-string v13, "&"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "controllerConfig"

    .line 3313
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    .line 3314
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3315
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_ef
    .catch Lorg/json/JSONException; {:try_start_bc .. :try_end_ef} :catch_10d

    .line 3323
    .end local v2    # "conf":Lorg/json/JSONObject;
    .end local v3    # "config":Ljava/lang/String;
    :cond_ef
    :goto_ef
    const-string v13, "&"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "debug"

    .line 3324
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    .line 3325
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3326
    invoke-virtual/range {p0 .. p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3329
    .end local v6    # "host":Ljava/lang/String;
    .end local v8    # "port":I
    .end local v10    # "scheme":Ljava/lang/String;
    :cond_108
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    return-object v13

    .line 3318
    .restart local v6    # "host":Ljava/lang/String;
    .restart local v8    # "port":I
    .restart local v10    # "scheme":Ljava/lang/String;
    :catch_10d
    move-exception v5

    .line 3319
    .local v5, "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_ef
.end method

.method private getStringProductTypeAsEnum(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .registers 4
    .param p1, "productType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2647
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2659
    :cond_7
    :goto_7
    return-object v0

    .line 2651
    :cond_8
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 2652
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    goto :goto_7

    .line 2653
    :cond_17
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2654
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    goto :goto_7

    .line 2655
    :cond_26
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2656
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    goto :goto_7
.end method

.method private getWebview()Landroid/webkit/WebView;
    .registers 1

    .prologue
    .line 3339
    return-object p0
.end method

.method private initLayout(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, -0x1

    .line 362
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 367
    .local v0, "coverScreenParams":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    .line 371
    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 372
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 373
    .local v1, "fp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 377
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 378
    .local v3, "mContentView":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 379
    .local v2, "lpChild2":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    invoke-virtual {v3, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 382
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v5, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 384
    return-void
.end method

.method private initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Ljava/lang/String;)V
    .registers 8
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p4, "demandSource"    # Lcom/ironsource/sdk/data/DemandSource;
    .param p5, "action"    # Ljava/lang/String;

    .prologue
    .line 2800
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2801
    :cond_c
    const-string v0, "User id or Application key are missing"

    invoke-virtual {p4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2831
    :cond_15
    :goto_15
    return-void

    .line 2805
    :cond_16
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_32

    .line 2808
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setApplicationKey(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)V

    .line 2809
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setUserID(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)V

    .line 2810
    invoke-direct {p0, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createInitProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    goto :goto_15

    .line 2814
    :cond_32
    invoke-virtual {p0, p3, p4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setMissProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V

    .line 2816
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v0, v1, :cond_49

    .line 2819
    const-string v0, "Initiating Controller"

    .line 2820
    invoke-static {p5, v0}, Lcom/ironsource/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2821
    invoke-virtual {p4}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v1

    .line 2819
    invoke-direct {p0, v0, p3, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_15

    .line 2826
    :cond_49
    iget-boolean v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimeFinish:Z

    if-eqz v0, :cond_15

    .line 2827
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadController()V

    goto :goto_15
.end method

.method private injectJavascript(Ljava/lang/String;)V
    .registers 7
    .param p1, "script"    # Ljava/lang/String;

    .prologue
    .line 3170
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3239
    :goto_6
    return-void

    .line 3175
    :cond_7
    const-string v0, "empty"

    .line 3176
    .local v0, "catchClosure":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v3

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v4

    if-ne v3, v4, :cond_55

    .line 3178
    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    .line 3191
    :cond_17
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3192
    .local v1, "scriptBuilder":Ljava/lang/StringBuilder;
    const-string v3, "try{"

    .line 3193
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3194
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}catch(e){"

    .line 3195
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3196
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    .line 3197
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3199
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javascript:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3201
    .local v2, "url":Ljava/lang/String;
    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$5;

    invoke-direct {v3, p0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$5;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 3180
    .end local v1    # "scriptBuilder":Ljava/lang/StringBuilder;
    .end local v2    # "url":Ljava/lang/String;
    :cond_55
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v3

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v4

    if-lt v3, v4, :cond_17

    .line 3181
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v3

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v4

    if-gt v3, v4, :cond_17

    .line 3183
    const-string v0, "console.log(\"JS exeption: \" + JSON.stringify(e));"

    goto :goto_17
.end method

.method private injectJavascript(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "script"    # Ljava/lang/String;

    .prologue
    .line 3157
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->isControllerStateReady()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->controllerCommandSupportsQueue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3158
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerCommandsQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3162
    :goto_11
    return-void

    .line 3160
    :cond_12
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    goto :goto_11
.end method

.method private invokePendingCommands()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 2611
    :goto_1
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerCommandsQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 2612
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerCommandsQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2613
    .local v0, "command":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2614
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerCommandsQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 2616
    .end local v0    # "command":Ljava/lang/String;
    :cond_1a
    return-void
.end method

.method private isControllerStateReady()Z
    .registers 3

    .prologue
    .line 3165
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private mapToJson(Ljava/util/Map;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 3444
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3446
    .local v1, "jsObj":Lorg/json/JSONObject;
    if-eqz p1, :cond_34

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_34

    .line 3448
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_15
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3449
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3451
    .local v3, "value":Ljava/lang/String;
    :try_start_27
    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2e} :catch_2f

    goto :goto_15

    .line 3452
    :catch_2f
    move-exception v0

    .line 3453
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_15

    .line 3458
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_34
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 21
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/String;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/String;
    .param p5, "key3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/String;
    .param p7, "key4"    # Ljava/lang/String;
    .param p8, "value4"    # Ljava/lang/String;
    .param p9, "key5"    # Ljava/lang/String;
    .param p10, "value5"    # Z

    .prologue
    .line 3410
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 3414
    .local v3, "jsObj":Lorg/json/JSONObject;
    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 3415
    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3418
    :cond_18
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2b

    .line 3419
    invoke-static {p4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3422
    :cond_2b
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 3423
    invoke-static/range {p6 .. p6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3426
    :cond_3e
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_53

    .line 3427
    invoke-static/range {p8 .. p8}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3430
    :cond_53
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_60

    .line 3431
    move-object/from16 v0, p9

    move/from16 v1, p10

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_60} :catch_65

    .line 3439
    :cond_60
    :goto_60
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 3434
    :catch_65
    move-exception v2

    .line 3435
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 3436
    new-instance v4, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v4}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_60
.end method

.method private responseBack(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Z
    .param p3, "errorMessage"    # Ljava/lang/String;
    .param p4, "errorCode"    # Ljava/lang/String;

    .prologue
    .line 3350
    new-instance v4, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v4, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3351
    .local v4, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_SUCCESS:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3352
    .local v5, "success":Ljava/lang/String;
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->JSON_KEY_FAIL:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3354
    .local v0, "fail":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3357
    .local v1, "funToCall":Ljava/lang/String;
    if-eqz p2, :cond_53

    .line 3358
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 3359
    move-object v1, v5

    .line 3368
    :cond_1b
    :goto_1b
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 3370
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_36

    .line 3372
    :try_start_27
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3373
    .local v2, "jsObj":Lorg/json/JSONObject;
    const-string v6, "errMsg"

    invoke-virtual {v2, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_35} :catch_5d

    move-result-object p1

    .line 3378
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_36
    :goto_36
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 3380
    :try_start_3c
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3381
    .restart local v2    # "jsObj":Lorg/json/JSONObject;
    const-string v6, "errCode"

    invoke-virtual {v2, v6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3c .. :try_end_4a} :catch_5b

    move-result-object p1

    .line 3386
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_4b
    :goto_4b
    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3387
    .local v3, "script":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3389
    .end local v3    # "script":Ljava/lang/String;
    :cond_52
    return-void

    .line 3362
    :cond_53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 3363
    move-object v1, v0

    goto :goto_1b

    .line 3382
    :catch_5b
    move-exception v6

    goto :goto_4b

    .line 3374
    :catch_5d
    move-exception v6

    goto :goto_36
.end method

.method private sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .registers 6
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demnadSourceName"    # Ljava/lang/String;

    .prologue
    .line 4053
    const-string v0, ""

    .line 4055
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$8;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_24

    .line 4079
    :goto_d
    const-string v1, "Initiating Controller"

    .line 4080
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->createErrorMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4079
    invoke-direct {p0, v1, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 4082
    return-void

    .line 4058
    :pswitch_17
    const-string v0, "Init RV"

    .line 4059
    goto :goto_d

    .line 4063
    :pswitch_1a
    const-string v0, "Init IS"

    .line 4064
    goto :goto_d

    .line 4068
    :pswitch_1d
    const-string v0, "Init OW"

    .line 4069
    goto :goto_d

    .line 4073
    :pswitch_20
    const-string v0, "Show OW Credits"

    goto :goto_d

    .line 4055
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
    .end packed-switch
.end method

.method private setDisplayZoomControls(Landroid/webkit/WebSettings;)V
    .registers 4
    .param p1, "s"    # Landroid/webkit/WebSettings;

    .prologue
    .line 427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_a

    .line 429
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 431
    :cond_a
    return-void
.end method

.method public static setEXTERNAL_URL(Ljava/lang/String;)V
    .registers 1
    .param p0, "EXTERNAL_URL"    # Ljava/lang/String;

    .prologue
    .line 2663
    sput-object p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    .line 2664
    return-void
.end method

.method private setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    .registers 4
    .param p1, "s"    # Landroid/webkit/WebSettings;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 441
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 443
    :cond_a
    return-void
.end method

.method private setWebDebuggingEnabled()V
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 447
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_a

    .line 448
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 450
    :cond_a
    return-void
.end method

.method private setWebDebuggingEnabled(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "configObject"    # Lorg/json/JSONObject;

    .prologue
    .line 2788
    const-string v0, "inspectWebview"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2789
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebDebuggingEnabled()V

    .line 2791
    :cond_b
    return-void
.end method

.method private setWebViewSettings()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 387
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 389
    .local v1, "s":Landroid/webkit/WebSettings;
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 390
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 391
    invoke-virtual {p0, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setVerticalScrollBarEnabled(Z)V

    .line 392
    invoke-virtual {p0, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 394
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_20

    .line 396
    :try_start_18
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_20} :catch_3e

    .line 403
    :cond_20
    :goto_20
    invoke-virtual {v1, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 405
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 407
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 408
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 411
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 412
    const-string v2, "/data/data/org.itri.html5webview/databases/"

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 419
    :try_start_37
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setDisplayZoomControls(Landroid/webkit/WebSettings;)V

    .line 420
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setMediaPlaybackJellyBean(Landroid/webkit/WebSettings;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_3d} :catch_43

    .line 424
    :goto_3d
    return-void

    .line 397
    :catch_3e
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 421
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_43
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWebSettings - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method

.method private setWebviewBackground(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2678
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2679
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "color"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2681
    .local v1, "keyColor":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2683
    .local v0, "bgColor":I
    const-string v3, "transparent"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 2684
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 2687
    :cond_18
    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setBackgroundColor(I)V

    .line 2688
    return-void
.end method

.method private setWebviewCache(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4015
    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 4017
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 4022
    :goto_10
    return-void

    .line 4020
    :cond_11
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_10
.end method

.method private shouldNotifyDeveloper(Ljava/lang/String;)Z
    .registers 6
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 514
    const/4 v0, 0x0

    .line 517
    .local v0, "shouldNotify":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 518
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v3, "Trying to trigger a listener - no product was found"

    invoke-static {v1, v3}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :goto_10
    return v2

    .line 522
    :cond_11
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 523
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    if-eqz v3, :cond_3e

    move v0, v1

    .line 530
    :cond_22
    :goto_22
    if-nez v0, :cond_3c

    .line 531
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to trigger a listener - no listener was found for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    move v2, v0

    .line 533
    goto :goto_10

    :cond_3e
    move v0, v2

    .line 523
    goto :goto_22

    .line 524
    :cond_40
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 525
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    if-eqz v3, :cond_52

    move v0, v1

    :goto_51
    goto :goto_22

    :cond_52
    move v0, v2

    goto :goto_51

    .line 526
    :cond_54
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6c

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 527
    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 528
    :cond_6c
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    if-eqz v3, :cond_72

    move v0, v1

    :goto_71
    goto :goto_22

    :cond_72
    move v0, v2

    goto :goto_71
.end method

.method private toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3882
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p2}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 3883
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3885
    .local v0, "message":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 3886
    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$6;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3894
    :cond_19
    return-void
.end method

.method private triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p3, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 3068
    invoke-virtual {p2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3069
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$4;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3091
    :cond_12
    return-void
.end method


# virtual methods
.method public addMoatJSInterface(Lcom/ironsource/sdk/controller/MOATJSAdapter;)V
    .registers 2
    .param p1, "moatjsAdapter"    # Lcom/ironsource/sdk/controller/MOATJSAdapter;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mMoatJsAdapter:Lcom/ironsource/sdk/controller/MOATJSAdapter;

    .line 263
    return-void
.end method

.method public addPermissionsJSInterface(Lcom/ironsource/sdk/controller/PermissionsJSAdapter;)V
    .registers 2
    .param p1, "permissionsJSAdapter"    # Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mPermissionsJsAdapter:Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    .line 267
    return-void
.end method

.method public assetCached(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3099
    const-string v1, "file"

    const-string v3, "path"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3100
    .local v11, "params":Ljava/lang/String;
    const-string v0, "assetCached"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3101
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3102
    return-void
.end method

.method public assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 3105
    const-string v1, "file"

    const-string v3, "path"

    const-string v5, "errMsg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3106
    .local v11, "params":Ljava/lang/String;
    const-string v0, "assetCachedFailed"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3107
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3108
    return-void
.end method

.method createJSInterface(Landroid/content/Context;)Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/content/Context;)V

    return-object v0
.end method

.method createMainThreadHandler()Landroid/os/Handler;
    .registers 3

    .prologue
    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method

.method public destroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 4086
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 4088
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    if-eqz v0, :cond_d

    .line 4089
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->release()V

    .line 4091
    :cond_d
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_13

    .line 4092
    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    .line 4094
    :cond_13
    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUiHandler:Landroid/os/Handler;

    .line 4095
    iput-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    .line 4096
    return-void
.end method

.method public deviceStatusChanged(Ljava/lang/String;)V
    .registers 15
    .param p1, "networkType"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3912
    const-string v1, "connectionType"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3913
    .local v11, "params":Ljava/lang/String;
    const-string v0, "deviceStatusChanged"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3914
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3915
    return-void
.end method

.method public downloadController()V
    .registers 10

    .prologue
    .line 455
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    const-string v1, ""

    const-string v2, "mobileController.html"

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 456
    const-string v6, ""

    .line 458
    .local v6, "controllerPath":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v7

    .line 459
    .local v7, "controllerUrl":Ljava/lang/String;
    new-instance v8, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v8, v7, v6}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .local v8, "indexHtml":Lcom/ironsource/sdk/data/SSAFile;
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$1;

    const-wide/32 v2, 0x30d40

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView$1;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;JJ)V

    .line 477
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    .line 479
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->isMobileControllerThreadLive()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 480
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download Mobile Controller: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-virtual {v0, v8}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadMobileControllerFile(Lcom/ironsource/sdk/data/SSAFile;)V

    .line 485
    :goto_4a
    return-void

    .line 483
    :cond_4b
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v1, "Download Mobile Controller: already alive"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a
.end method

.method public engageEnd(Ljava/lang/String;)V
    .registers 15
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3918
    const-string v0, "forceClose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3919
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->closeWebView()V

    .line 3922
    :cond_c
    const-string v1, "action"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3923
    .local v11, "params":Ljava/lang/String;
    const-string v0, "engageEnd"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3924
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3925
    return-void
.end method

.method public enterBackground()V
    .registers 4

    .prologue
    .line 3112
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_f

    .line 3113
    const-string v1, "enterBackground"

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3114
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3116
    .end local v0    # "script":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method public enterForeground()V
    .registers 4

    .prologue
    .line 3120
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_f

    .line 3121
    const-string v1, "enterForeground"

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3122
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3124
    .end local v0    # "script":Ljava/lang/String;
    :cond_f
    return-void
.end method

.method public getControllerKeyPressed()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3903
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 3906
    .local v0, "keyPressed":Ljava/lang/String;
    const-string v1, "interrupt"

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setControllerKeyPressed(Ljava/lang/String;)V

    .line 3908
    return-object v0
.end method

.method public getCurrentActivityContext()Landroid/content/Context;
    .registers 3

    .prologue
    .line 3256
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCurrentActivityContext:Landroid/content/Context;

    check-cast v0, Landroid/content/MutableContextWrapper;

    .line 3257
    .local v0, "mctx":Landroid/content/MutableContextWrapper;
    invoke-virtual {v0}, Landroid/content/MutableContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    return-object v1
.end method

.method public getDebugMode()I
    .registers 2

    .prologue
    .line 508
    sget v0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDebugMode:I

    return v0
.end method

.method getDownloadManager()Lcom/ironsource/sdk/precache/DownloadManager;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/sdk/precache/DownloadManager;->getInstance(Ljava/lang/String;)Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()Landroid/widget/FrameLayout;
    .registers 2

    .prologue
    .line 3997
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .registers 10
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .prologue
    .line 2951
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsAppKey:Ljava/lang/String;

    .line 2952
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsUserId:Ljava/lang/String;

    .line 2953
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mProductParametersCollection:Lcom/ironsource/sdk/controller/ProductParametersCollection;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/sdk/controller/ProductParametersCollection;->setProductParameters(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/data/ProductParameters;

    .line 2955
    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 2957
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const/4 v4, 0x0

    const-string v5, "Show OW Credits"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Ljava/lang/String;)V

    .line 2958
    return-void
.end method

.method public getOrientationState()Ljava/lang/String;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOrientationState:Ljava/lang/String;

    return-object v0
.end method

.method public getSavedState()Lcom/ironsource/sdk/data/AdUnitsState;
    .registers 2

    .prologue
    .line 4132
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    return-object v0
.end method

.method public getState()Lcom/ironsource/sdk/controller/IronSourceWebView$State;
    .registers 2

    .prologue
    .line 4048
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-object v0
.end method

.method public handleSearchKeysURLs(Ljava/lang/String;)Z
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 4025
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSearchKeys()Ljava/util/List;

    move-result-object v2

    .line 4027
    .local v2, "searchKeys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_33

    :try_start_a
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_33

    .line 4029
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4030
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 4031
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/ironsource/environment/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2f

    .line 4032
    const/4 v3, 0x1

    .line 4040
    .end local v1    # "key":Ljava/lang/String;
    :goto_2e
    return v3

    .line 4036
    :catch_2f
    move-exception v0

    .line 4037
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4040
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_33
    const/4 v3, 0x0

    goto :goto_2e
.end method

.method public hideCustomView()V
    .registers 2

    .prologue
    .line 4005
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mWebChromeClient:Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->onHideCustomView()V

    .line 4006
    return-void
.end method

.method public inCustomView()Z
    .registers 2

    .prologue
    .line 4001
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V
    .registers 11
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "demandSource"    # Lcom/ironsource/sdk/data/DemandSource;
    .param p4, "listener"    # Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    .prologue
    .line 2861
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISAppKey:Ljava/lang/String;

    .line 2862
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISUserId:Ljava/lang/String;

    .line 2863
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mProductParametersCollection:Lcom/ironsource/sdk/controller/ProductParametersCollection;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/sdk/controller/ProductParametersCollection;->setProductParameters(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/data/ProductParameters;

    .line 2864
    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    .line 2867
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISAppKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialAppKey(Ljava/lang/String;)V

    .line 2868
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setInterstitialUserId(Ljava/lang/String;)V

    .line 2870
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mISUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const-string v5, "Init IS"

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Ljava/lang/String;)V

    .line 2871
    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V
    .registers 11
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/ironsource/sdk/listeners/OnOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2926
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWAppKey:Ljava/lang/String;

    .line 2927
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWUserId:Ljava/lang/String;

    .line 2928
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mProductParametersCollection:Lcom/ironsource/sdk/controller/ProductParametersCollection;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/sdk/controller/ProductParametersCollection;->setProductParameters(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/data/ProductParameters;

    .line 2929
    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    .line 2930
    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    .line 2932
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferWallExtraParams(Ljava/util/Map;)V

    .line 2934
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 2936
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWAppKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWUserId:Ljava/lang/String;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const/4 v4, 0x0

    const-string v5, "Init OW"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Ljava/lang/String;)V

    .line 2938
    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V
    .registers 11
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "demandSource"    # Lcom/ironsource/sdk/data/DemandSource;
    .param p4, "listener"    # Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    .prologue
    .line 2838
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVAppKey:Ljava/lang/String;

    .line 2839
    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRVUserId:Ljava/lang/String;

    .line 2840
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mProductParametersCollection:Lcom/ironsource/sdk/controller/ProductParametersCollection;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0, v1, p1, p2}, Lcom/ironsource/sdk/controller/ProductParametersCollection;->setProductParameters(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/sdk/data/ProductParameters;

    .line 2841
    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    .line 2842
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/data/AdUnitsState;->setRVAppKey(Ljava/lang/String;)V

    .line 2843
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    invoke-virtual {v0, p2}, Lcom/ironsource/sdk/data/AdUnitsState;->setRVUserId(Ljava/lang/String;)V

    .line 2845
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const-string v5, "Init RV"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initProduct(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;Ljava/lang/String;)V

    .line 2846
    return-void
.end method

.method initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 258
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->initializeCacheDirectory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public interceptedUrlToStore()V
    .registers 3

    .prologue
    .line 3147
    const-string v1, "interceptedUrlToStore"

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3148
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3149
    return-void
.end method

.method public isInterstitialAdAvailable(Ljava/lang/String;)Z
    .registers 5
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 2908
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1, v2, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 2909
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getAvailabilityState()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public load(I)V
    .registers 16
    .param p1, "loadAttemp"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2696
    :try_start_2
    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_7} :catch_a2

    .line 2703
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2705
    .local v8, "controllerPath":Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mCacheDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2706
    .local v11, "file":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_fb

    .line 2709
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v7

    .line 2712
    .local v7, "configObject":Lorg/json/JSONObject;
    invoke-direct {p0, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setWebDebuggingEnabled(Lorg/json/JSONObject;)V

    .line 2715
    invoke-direct {p0, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getRequestParameters(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRequestParameters:Ljava/lang/String;

    .line 2718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mRequestParameters:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2721
    .local v9, "controllerPathWithParams":Ljava/lang/String;
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;

    const-wide/32 v2, 0xc350

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/sdk/controller/IronSourceWebView$2;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;JJI)V

    .line 2769
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mLoadControllerTimer:Landroid/os/CountDownTimer;

    .line 2773
    :try_start_86
    invoke-virtual {p0, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_cf

    .line 2779
    :goto_89
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    .end local v7    # "configObject":Lorg/json/JSONObject;
    .end local v9    # "controllerPathWithParams":Ljava/lang/String;
    :goto_a1
    return-void

    .line 2697
    .end local v8    # "controllerPath":Ljava/lang/String;
    .end local v11    # "file":Ljava/io/File;
    :catch_a2
    move-exception v10

    .line 2698
    .local v10, "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewController:: load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadBlank"

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_7

    .line 2774
    .end local v10    # "e":Ljava/lang/Throwable;
    .restart local v7    # "configObject":Lorg/json/JSONObject;
    .restart local v8    # "controllerPath":Ljava/lang/String;
    .restart local v9    # "controllerPathWithParams":Ljava/lang/String;
    .restart local v11    # "file":Ljava/io/File;
    :catch_cf
    move-exception v10

    .line 2775
    .restart local v10    # "e":Ljava/lang/Throwable;
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewController:: load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadWithPath"

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_89

    .line 2782
    .end local v7    # "configObject":Lorg/json/JSONObject;
    .end local v9    # "controllerPathWithParams":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Throwable;
    :cond_fb
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v1, "load(): Mobile Controller HTML Does not exist"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    new-instance v0, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v0}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v1, v13, [Ljava/lang/String;

    const-string v2, "https://www.supersonicads.com/mobile/sdk5/log?method=htmlControllerDoesNotExistOnFileSystem"

    aput-object v2, v1, v12

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_a1
.end method

.method public loadInterstitial(Ljava/lang/String;)V
    .registers 8
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 2877
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2879
    .local v1, "productParamsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2880
    const-string v3, "demandSourceName"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2883
    :cond_10
    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2885
    .local v0, "params":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->isInterstitialAdAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 2887
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/ironsource/sdk/data/AdUnitsState;->setReportLoadInterstitial(Ljava/lang/String;Z)V

    .line 2889
    const-string v3, "loadInterstitial"

    const-string v4, "onLoadInterstitialSuccess"

    const-string v5, "onLoadInterstitialFail"

    invoke-direct {p0, v3, v0, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2890
    .local v2, "script":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2904
    .end local v2    # "script":Ljava/lang/String;
    :cond_2d
    :goto_2d
    return-void

    .line 2894
    :cond_2e
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->shouldNotifyDeveloper(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2896
    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$3;

    invoke-direct {v3, p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$3;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2d
.end method

.method public nativeNavigationPressed(Ljava/lang/String;)V
    .registers 15
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3136
    const-string v1, "action"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move-object v9, v3

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3137
    .local v11, "params":Ljava/lang/String;
    const-string v0, "nativeNavigationPressed"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3138
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3139
    return-void
.end method

.method public notifyLifeCycle(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "productType"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 270
    const-string v1, "lifeCycleEvent"

    const-string v3, "productType"

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 276
    .local v11, "params":Ljava/lang/String;
    const-string v0, "onNativeLifeCycleEvent"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 277
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "userAgent"    # Ljava/lang/String;
    .param p3, "contentDisposition"    # Ljava/lang/String;
    .param p4, "mimetype"    # Ljava/lang/String;
    .param p5, "contentLength"    # J

    .prologue
    .line 3876
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3878
    return-void
.end method

.method public onFileDownloadFail(Lcom/ironsource/sdk/data/SSAFile;)V
    .registers 9
    .param p1, "file"    # Lcom/ironsource/sdk/data/SSAFile;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3839
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mobileController.html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_76

    .line 3841
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mGlobalControllerTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    .line 3845
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v1

    .line 3846
    .local v1, "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1f
    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 3847
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    if-ne v3, v5, :cond_1f

    .line 3848
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_1f

    .line 3852
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_3b
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v1

    .line 3853
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 3854
    .restart local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    if-ne v3, v5, :cond_47

    .line 3855
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_47

    .line 3859
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_63
    iget-boolean v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWmiss:Z

    if-eqz v2, :cond_6c

    .line 3860
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v2, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 3863
    :cond_6c
    iget-boolean v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsMiss:Z

    if-eqz v2, :cond_75

    .line 3864
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v2, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->sendProductErrorMessage(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 3870
    .end local v1    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    :cond_75
    :goto_75
    return-void

    .line 3868
    :cond_76
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getErrMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->assetCachedFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75
.end method

.method public onFileDownloadSuccess(Lcom/ironsource/sdk/data/SSAFile;)V
    .registers 4
    .param p1, "file"    # Lcom/ironsource/sdk/data/SSAFile;

    .prologue
    .line 3827
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3829
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->load(I)V

    .line 3833
    :goto_10
    return-void

    .line 3831
    :cond_11
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->assetCached(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4225
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    .line 4226
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onBackButtonPressed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4227
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 4233
    :goto_f
    return v0

    .line 4229
    :cond_10
    const/4 v0, 0x1

    goto :goto_f

    .line 4233
    :cond_12
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_f
.end method

.method public pageFinished()V
    .registers 3

    .prologue
    .line 3142
    const-string v1, "pageFinished"

    invoke-direct {p0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3143
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3144
    return-void
.end method

.method public pause()V
    .registers 6

    .prologue
    .line 3965
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_9

    .line 3967
    :try_start_6
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->onPause()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_a

    .line 3975
    :cond_9
    :goto_9
    return-void

    .line 3968
    :catch_a
    move-exception v0

    .line 3969
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: pause() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3970
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewPause"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_9
.end method

.method public registerConnectionReceiver(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3946
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3948
    return-void
.end method

.method public removeVideoEventsListener()V
    .registers 2

    .prologue
    .line 2673
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    .line 2674
    return-void
.end method

.method public restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V
    .registers 16
    .param p1, "state"    # Lcom/ironsource/sdk/data/AdUnitsState;

    .prologue
    const/4 v13, 0x2

    const/4 v12, -0x1

    .line 4137
    iget-object v9, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedStateLocker:Ljava/lang/Object;

    monitor-enter v9

    .line 4139
    :try_start_5
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->shouldRestore()Z

    move-result v8

    if-eqz v8, :cond_185

    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerState:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v10, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_185

    .line 4141
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restoreState(state:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedProduct()I

    move-result v4

    .line 4145
    .local v4, "lastAd":I
    if-eq v4, v12, :cond_10a

    .line 4149
    sget-object v8, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v8

    if-ne v4, v8, :cond_ca

    .line 4150
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v10, "onRVAdClosed()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    sget-object v6, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 4152
    .local v6, "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedDemandSourceName()Ljava/lang/String;

    move-result-object v2

    .line 4153
    .local v2, "demandSourceName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v5

    .line 4154
    .local v5, "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    if-eqz v5, :cond_5d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5d

    .line 4155
    invoke-interface {v5, v6, v2}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 4176
    .end local v2    # "demandSourceName":Ljava/lang/String;
    .end local v5    # "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    .end local v6    # "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :cond_5d
    :goto_5d
    const/4 v8, -0x1

    invoke-virtual {p1, v8}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 4177
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceName(Ljava/lang/String;)V

    .line 4186
    :goto_65
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialAppKey()Ljava/lang/String;

    move-result-object v0

    .line 4187
    .local v0, "appKey":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getInterstitialUserId()Ljava/lang/String;

    move-result-object v7

    .line 4189
    .local v7, "userId":Ljava/lang/String;
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v10, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v3

    .line 4190
    .local v3, "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_79
    :goto_79
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_113

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/sdk/data/DemandSource;

    .line 4191
    .local v1, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v10

    if-ne v10, v13, :cond_79

    .line 4192
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initInterstitial(appKey:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", userId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", demandSource:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSInterstitialListener:Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    invoke-virtual {p0, v0, v7, v1, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    goto :goto_79

    .line 4218
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    .end local v3    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    .end local v4    # "lastAd":I
    .end local v7    # "userId":Ljava/lang/String;
    :catchall_c7
    move-exception v8

    monitor-exit v9
    :try_end_c9
    .catchall {:try_start_5 .. :try_end_c9} :catchall_c7

    throw v8

    .line 4159
    .restart local v4    # "lastAd":I
    :cond_ca
    :try_start_ca
    sget-object v8, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v8

    if-ne v4, v8, :cond_f0

    .line 4160
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v10, "onInterstitialAdClosed()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4161
    sget-object v6, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 4162
    .restart local v6    # "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getDisplayedDemandSourceName()Ljava/lang/String;

    move-result-object v2

    .line 4163
    .restart local v2    # "demandSourceName":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getAdProductListenerByProductType(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v5

    .line 4164
    .restart local v5    # "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    if-eqz v5, :cond_5d

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5d

    .line 4165
    invoke-interface {v5, v6, v2}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto/16 :goto_5d

    .line 4169
    .end local v2    # "demandSourceName":Ljava/lang/String;
    .end local v5    # "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    .end local v6    # "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :cond_f0
    sget-object v8, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v8

    if-ne v4, v8, :cond_5d

    .line 4170
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v10, "onOWAdClosed()"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4171
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    if-eqz v8, :cond_5d

    .line 4172
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOnOfferWallListener:Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    invoke-interface {v8}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    goto/16 :goto_5d

    .line 4179
    :cond_10a
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v10, "No ad was opened"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_65

    .line 4199
    .restart local v0    # "appKey":Ljava/lang/String;
    .restart local v3    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    .restart local v7    # "userId":Ljava/lang/String;
    :cond_113
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getRVAppKey()Ljava/lang/String;

    move-result-object v0

    .line 4200
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/AdUnitsState;->getRVUserId()Ljava/lang/String;

    move-result-object v7

    .line 4202
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDemandSourceManager:Lcom/ironsource/sdk/controller/DemandSourceManager;

    sget-object v10, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v3

    .line 4203
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_127
    :goto_127
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_181

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/sdk/data/DemandSource;

    .line 4204
    .restart local v1    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v10

    if-ne v10, v13, :cond_127

    .line 4205
    invoke-virtual {v1}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v2

    .line 4206
    .restart local v2    # "demandSourceName":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    const-string v11, "onRVNoMoreOffers()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4207
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-interface {v10, v2}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onRVNoMoreOffers(Ljava/lang/String;)V

    .line 4208
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initRewardedVideo(appKey:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", userId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", demandSource:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4209
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDSRewardedVideoListener:Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    invoke-virtual {p0, v0, v7, v1, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V

    goto :goto_127

    .line 4213
    .end local v1    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    .end local v2    # "demandSourceName":Ljava/lang/String;
    :cond_181
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/ironsource/sdk/data/AdUnitsState;->setShouldRestore(Z)V

    .line 4216
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v3    # "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    .end local v4    # "lastAd":I
    .end local v7    # "userId":Ljava/lang/String;
    :cond_185
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mSavedState:Lcom/ironsource/sdk/data/AdUnitsState;

    .line 4218
    monitor-exit v9
    :try_end_188
    .catchall {:try_start_ca .. :try_end_188} :catchall_c7

    .line 4219
    return-void
.end method

.method public resume()V
    .registers 6

    .prologue
    .line 3979
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v1, v2, :cond_9

    .line 3981
    :try_start_6
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->onResume()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_9} :catch_a

    .line 3987
    :cond_9
    :goto_9
    return-void

    .line 3982
    :catch_a
    move-exception v0

    .line 3983
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onResume() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3984
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=webviewResume"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_9
.end method

.method runOnUiThread(Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 4237
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mUiHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4238
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .registers 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 435
    invoke-super {p0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setControllerKeyPressed(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3897
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mControllerKeyPressed:Ljava/lang/String;

    .line 3898
    return-void
.end method

.method public setDebugMode(I)V
    .registers 2
    .param p1, "debugMode"    # I

    .prologue
    .line 488
    sput p1, Lcom/ironsource/sdk/controller/IronSourceWebView;->mDebugMode:I

    .line 489
    return-void
.end method

.method setMissProduct(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lcom/ironsource/sdk/data/DemandSource;)V
    .registers 6
    .param p1, "type"    # Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .param p2, "demandSource"    # Lcom/ironsource/sdk/data/DemandSource;

    .prologue
    const/4 v1, 0x1

    .line 3054
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq p1, v0, :cond_9

    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_2d

    .line 3055
    :cond_9
    if-eqz p2, :cond_e

    .line 3056
    invoke-virtual {p2, v1}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 3063
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMissProduct("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    return-void

    .line 3058
    :cond_2d
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_34

    .line 3059
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWmiss:Z

    goto :goto_e

    .line 3060
    :cond_34
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne p1, v0, :cond_e

    .line 3061
    iput-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWCreditsMiss:Z

    goto :goto_e
.end method

.method public setOnWebViewControllerChangeListener(Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    .prologue
    .line 3993
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mChangeListener:Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    .line 3994
    return-void
.end method

.method public setOrientationState(Ljava/lang/String;)V
    .registers 2
    .param p1, "orientation"    # Ljava/lang/String;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOrientationState:Ljava/lang/String;

    .line 538
    return-void
.end method

.method public setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V
    .registers 2
    .param p1, "state"    # Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    .prologue
    .line 4044
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mState:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    .line 4045
    return-void
.end method

.method public setVideoEventsListener(Lcom/ironsource/sdk/controller/VideoEventsListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/ironsource/sdk/controller/VideoEventsListener;

    .prologue
    .line 2668
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mVideoEventsListener:Lcom/ironsource/sdk/controller/VideoEventsListener;

    .line 2669
    return-void
.end method

.method public showInterstitial(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "showParams"    # Lorg/json/JSONObject;

    .prologue
    .line 2914
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 2915
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2916
    return-void
.end method

.method public showOfferWall(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2941
    .local p1, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mOWExtraParameters:Ljava/util/Map;

    .line 2942
    const-string v1, "showOfferWall"

    const-string v2, "onShowOfferWallSuccess"

    const-string v3, "onShowOfferWallFail"

    invoke-direct {p0, v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2943
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 2944
    return-void
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "showParams"    # Lorg/json/JSONObject;

    .prologue
    .line 3094
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->createShowProductJSMethod(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 3095
    .local v0, "script":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3096
    return-void
.end method

.method public unregisterConnectionReceiver(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 3952
    :try_start_1
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->mConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_6} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_7

    .line 3961
    :goto_6
    return-void

    .line 3955
    :catch_7
    move-exception v0

    .line 3958
    .local v0, "e1":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterConnectionReceiver - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3959
    new-instance v1, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_6

    .line 3953
    .end local v0    # "e1":Ljava/lang/Exception;
    :catch_4b
    move-exception v1

    goto :goto_6
.end method

.method public updateConsentInfo(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "consentParams"    # Lorg/json/JSONObject;

    .prologue
    .line 2964
    const-string v2, "updateConsentInfo"

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_8
    invoke-direct {p0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2965
    .local v0, "script":Ljava/lang/String;
    const-string v1, "updateConsentInfo"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    return-void

    .line 2964
    .end local v0    # "script":Ljava/lang/String;
    :cond_12
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public viewableChange(ZLjava/lang/String;)V
    .registers 16
    .param p1, "visibility"    # Z
    .param p2, "webview"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3127
    const-string v1, "webview"

    const-string v9, "isViewable"

    move-object v0, p0

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    move v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->parseToJson(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    .line 3131
    .local v11, "params":Ljava/lang/String;
    const-string v0, "viewableChange"

    invoke-direct {p0, v0, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->generateJSToInject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3132
    .local v12, "script":Ljava/lang/String;
    invoke-direct {p0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V

    .line 3133
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.AnonymousClass1 (com.ironsource.sdk.controller.IronSourceWebView$1)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$1;
.super Landroid/os/CountDownTimer;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->downloadController()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;JJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 464
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$1;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 473
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$1;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Global Controller Timer Finish"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$1;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$902(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    .line 475
    return-void
.end method

.method public onTick(J)V
    .registers 6
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 468
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$1;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Global Controller Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.AnonymousClass2 (com.ironsource.sdk.controller.IronSourceWebView$2)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$2;
.super Landroid/os/CountDownTimer;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->load(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$loadAttemp:I


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;JJI)V
    .registers 7
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 2723
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput p6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->val$loadAttemp:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2732
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Loading Controller Timer Finish"

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2734
    iget v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->val$loadAttemp:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_96

    .line 2736
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 2740
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v2

    .line 2741
    .local v2, "demandSourcesRV":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 2742
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v4

    if-ne v4, v7, :cond_2b

    .line 2743
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_2b

    .line 2747
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_49
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v1

    .line 2748
    .local v1, "demandSourcesIS":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_59
    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_77

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 2749
    .restart local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v4

    if-ne v4, v7, :cond_59

    .line 2750
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_59

    .line 2754
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_77
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v3

    if-eqz v3, :cond_86

    .line 2755
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v3, v4, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2758
    :cond_86
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 2759
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v3, v4, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2767
    .end local v1    # "demandSourcesIS":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    .end local v2    # "demandSourcesRV":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    :cond_95
    :goto_95
    return-void

    .line 2765
    :cond_96
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->load(I)V

    goto :goto_95
.end method

.method public onTick(J)V
    .registers 6
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$2;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading Controller Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.AnonymousClass3 (com.ironsource.sdk.controller.IronSourceWebView$3)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$3;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->loadInterstitial(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$demandSourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 2896
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2898
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$3;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onInterstitialLoadSuccess(Ljava/lang/String;)V

    .line 2899
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.AnonymousClass4 (com.ironsource.sdk.controller.IronSourceWebView$4)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$4;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->triggerOnControllerInitProductFail(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 3069
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$demandSourceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 3071
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v1, v2, :cond_c

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v1, v2, :cond_59

    .line 3073
    :cond_c
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$demandSourceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 3087
    :cond_14
    :goto_14
    return-void

    .line 3076
    :cond_15
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v0

    .line 3077
    .local v0, "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdProductInitFailed (message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3079
    if-eqz v0, :cond_14

    .line 3080
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$demandSourceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductInitFailed(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 3082
    .end local v0    # "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    :cond_59
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v1, v2, :cond_6b

    .line 3083
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOfferwallInitFail(Ljava/lang/String;)V

    goto :goto_14

    .line 3084
    :cond_6b
    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v1, v2, :cond_14

    .line 3085
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$4;->val$message:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onGetOWCreditsFailed(Ljava/lang/String;)V

    goto :goto_14
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.AnonymousClass5 (com.ironsource.sdk.controller.IronSourceWebView$5)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$5;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->injectJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$scriptBuilder:Ljava/lang/StringBuilder;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 3201
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3203
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3206
    :try_start_d
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_65

    .line 3207
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 3208
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 3237
    :goto_2c
    return-void

    .line 3210
    :cond_2d
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_34} :catch_35

    goto :goto_2c

    .line 3233
    :catch_35
    move-exception v1

    .line 3234
    .local v1, "t":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "injectJavascript: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3235
    new-instance v2, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;

    invoke-direct {v2}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;-><init>()V

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method=injectJavaScript"

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/utils/IronSourceAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2c

    .line 3213
    .end local v1    # "t":Ljava/lang/Throwable;
    :cond_65
    :try_start_65
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_67} :catch_35

    const/16 v3, 0x13

    if-lt v2, v3, :cond_f9

    .line 3216
    :try_start_6b
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$scriptBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6800(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 3217
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6702(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_80
    .catch Ljava/lang/NoSuchMethodError; {:try_start_6b .. :try_end_80} :catch_81
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_80} :catch_bd

    goto :goto_2c

    .line 3218
    :catch_81
    move-exception v0

    .line 3219
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    :try_start_82
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateJavascrip NoSuchMethodError: SDK version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3220
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V

    .line 3221
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6702(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_2c

    .line 3222
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    :catch_bd
    move-exception v0

    .line 3223
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "evaluateJavascrip Exception: SDK version="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3225
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V

    .line 3226
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6702(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_2c

    .line 3229
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_f9
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->val$url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->loadUrl(Ljava/lang/String;)V

    .line 3230
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$5;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6702(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_10a
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_10a} :catch_35

    goto/16 :goto_2c
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.AnonymousClass6 (com.ironsource.sdk.controller.IronSourceWebView$6)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$6;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;->toastingErrMsg(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field final synthetic val$message:Ljava/lang/String;

.field final synthetic val$methodName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 3886
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->val$methodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 3888
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getDebugMode()I

    move-result v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->getValue()I

    move-result v1

    if-ne v0, v1, :cond_37

    .line 3889
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->val$methodName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$6;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3891
    :cond_37
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.AnonymousClass7 (com.ironsource.sdk.controller.IronSourceWebView$7)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$7;
.super Landroid/content/BroadcastReceiver;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;

    .prologue
    .line 3927
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$7;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 3932
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$7;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    if-ne v1, v2, :cond_19

    .line 3933
    const-string v0, "none"

    .line 3934
    .local v0, "networkType":Ljava/lang/String;
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->isConnectedWifi(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3935
    const-string v0, "wifi"

    .line 3940
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$7;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->deviceStatusChanged(Ljava/lang/String;)V

    .line 3942
    .end local v0    # "networkType":Ljava/lang/String;
    :cond_19
    return-void

    .line 3936
    .restart local v0    # "networkType":Ljava/lang/String;
    :cond_1a
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->isConnectedMobile(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3937
    const-string v0, "3g"

    goto :goto_14
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.AnonymousClass8 (com.ironsource.sdk.controller.IronSourceWebView$8)
.class synthetic Lcom/ironsource/sdk/controller/IronSourceWebView$8;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 4055
    invoke-static {}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->values()[Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$8;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    :try_start_9
    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$8;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$8;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$8;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$8;->$SwitchMap$com$ironsource$sdk$data$SSAEnums$ProductType:[I

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.ChromeClient (com.ironsource.sdk.controller.IronSourceWebView$ChromeClient)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .registers 2

    .prologue
    .line 624
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "x1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$1;

    .prologue
    .line 624
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 674
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 675
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 5
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 644
    const-string v0, "MyApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 645
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 646
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .registers 10
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 630
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 631
    .local v0, "childView":Landroid/webkit/WebView;
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 632
    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 633
    iget-object v1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 634
    .local v1, "transport":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 635
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 637
    const-string v2, "onCreateWindow"

    const-string v3, "onCreateWindow"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const/4 v2, 0x1

    return v2
.end method

.method public onHideCustomView()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 683
    const-string v0, "Test"

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_12

    .line 699
    :goto_11
    return-void

    .line 689
    :cond_12
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 692
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 693
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1202(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/view/View;)Landroid/view/View;

    .line 694
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 697
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setVisibility(I)V

    goto :goto_11
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 653
    const-string v0, "Test"

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 659
    const-string v0, "Test"

    const-string v1, "mCustomView != null"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 670
    :goto_20
    return-void

    .line 663
    :cond_21
    const-string v0, "Test"

    const-string v1, "mCustomView == null"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 667
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1202(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/view/View;)Landroid/view/View;

    .line 668
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1402(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 669
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ChromeClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_20
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.FrameBustWebViewClient (com.ironsource.sdk.controller.IronSourceWebView$FrameBustWebViewClient)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameBustWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .registers 2

    .prologue
    .line 702
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "x1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$1;

    .prologue
    .line 702
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 706
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$FrameBustWebViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    .line 708
    .local v0, "ctx":Landroid/content/Context;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 709
    .local v1, "intent":Landroid/content/Intent;
    sget-object v2, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    sget-object v2, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 711
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 713
    const/4 v2, 0x1

    return v2
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface (com.ironsource.sdk.controller.IronSourceWebView$JSInterface)
.class public Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "JSInterface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

.field volatile udiaResults:I


# direct methods
.method public constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 720
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    .line 723
    return-void
.end method

.method private callJavaScriptFunction(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;

    .prologue
    .line 1300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1301
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1302
    .local v0, "script":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 1304
    .end local v0    # "script":Ljava/lang/String;
    :cond_11
    return-void
.end method

.method private injectGetUDIA(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 8
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "jsonArr"    # Lorg/json/JSONArray;

    .prologue
    .line 2287
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2288
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onGetUDIASuccess"

    const-string v4, "onGetUDIAFail"

    invoke-static {v1, p1, v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2289
    .local v0, "script":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 2291
    .end local v0    # "script":Ljava/lang/String;
    :cond_19
    return-void
.end method

.method private sendResults(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 6
    .param p1, "funToCall"    # Ljava/lang/String;
    .param p2, "jsArr"    # Lorg/json/JSONArray;

    .prologue
    .line 2162
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResults: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    iget v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    if-gtz v0, :cond_25

    .line 2165
    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->injectGetUDIA(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 2167
    :cond_25
    return-void
.end method

.method private setInterstitialAvailability(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "demandSourceName"    # Ljava/lang/String;
    .param p2, "isAvailable"    # Z

    .prologue
    .line 1701
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1, v2, p1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 1702
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_11

    .line 1703
    invoke-virtual {v0, p2}, Lcom/ironsource/sdk/data/DemandSource;->setAvailabilityState(Z)V

    .line 1707
    :cond_11
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1708
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onInterstitialAvailability"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with demand "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    :cond_41
    return-void
.end method


# virtual methods
.method public adClicked(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1714
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "adClicked("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    new-instance v4, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v4, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1717
    .local v4, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v5, "productType"

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1718
    .local v3, "productType":Ljava/lang/String;
    const-string v5, "demandSourceName"

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1719
    .local v0, "demandSourceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 1733
    :cond_39
    :goto_39
    return-void

    .line 1723
    :cond_3a
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v1

    .line 1724
    .local v1, "eProductType":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v2

    .line 1726
    .local v2, "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    if-eqz v1, :cond_39

    if-eqz v2, :cond_39

    .line 1727
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v6, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;

    invoke-direct {v6, p0, v2, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_39
.end method

.method public adCredited(Ljava/lang/String;)V
    .registers 27
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1341
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "adCredited("

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v13, ")"

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    new-instance v21, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1344
    .local v21, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "credits"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1345
    .local v15, "creditsStr":Ljava/lang/String;
    if-eqz v15, :cond_b6

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 1347
    .local v6, "credits":I
    :goto_3d
    const-string v2, "total"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1348
    .local v23, "totalCreditsStr":Ljava/lang/String;
    if-eqz v23, :cond_b8

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1350
    .local v8, "totalCredits":I
    :goto_4b
    const-string v2, "demandSourceName"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1352
    .local v5, "demandSourceName":Ljava/lang/String;
    const-string v2, "productType"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1353
    .local v4, "product":Ljava/lang/String;
    const-string v2, "externalPoll"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v16

    .line 1356
    .local v16, "isExternalPoll":Z
    const/16 v22, 0x0

    .line 1357
    .local v22, "totalCreditsFlag":Z
    const/16 v17, 0x0

    .line 1358
    .local v17, "latestCompeltionsTime":Ljava/lang/String;
    const/16 v19, 0x0

    .line 1364
    .local v19, "md5Signature":Z
    if-eqz v16, :cond_ba

    .line 1366
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v11

    .line 1367
    .local v11, "appKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v12

    .line 1375
    .local v12, "userId":Ljava/lang/String;
    :goto_7b
    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_108

    .line 1378
    const-string v2, "signature"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    const-string v2, "timestamp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a5

    const-string v2, "totalCreditsFlag"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_cb

    .line 1380
    :cond_a5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const-string v13, "One of the keys are missing: signature/timestamp/totalCreditsFlag"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v2, v0, v3, v13, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1442
    :cond_b5
    :goto_b5
    return-void

    .line 1345
    .end local v4    # "product":Ljava/lang/String;
    .end local v5    # "demandSourceName":Ljava/lang/String;
    .end local v6    # "credits":I
    .end local v8    # "totalCredits":I
    .end local v11    # "appKey":Ljava/lang/String;
    .end local v12    # "userId":Ljava/lang/String;
    .end local v16    # "isExternalPoll":Z
    .end local v17    # "latestCompeltionsTime":Ljava/lang/String;
    .end local v19    # "md5Signature":Z
    .end local v22    # "totalCreditsFlag":Z
    .end local v23    # "totalCreditsStr":Ljava/lang/String;
    :cond_b6
    const/4 v6, 0x0

    goto :goto_3d

    .line 1348
    .restart local v6    # "credits":I
    .restart local v23    # "totalCreditsStr":Ljava/lang/String;
    :cond_b8
    const/4 v8, 0x0

    goto :goto_4b

    .line 1371
    .restart local v4    # "product":Ljava/lang/String;
    .restart local v5    # "demandSourceName":Ljava/lang/String;
    .restart local v8    # "totalCredits":I
    .restart local v16    # "isExternalPoll":Z
    .restart local v17    # "latestCompeltionsTime":Ljava/lang/String;
    .restart local v19    # "md5Signature":Z
    .restart local v22    # "totalCreditsFlag":Z
    :cond_ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v11

    .line 1372
    .restart local v11    # "appKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "userId":Ljava/lang/String;
    goto :goto_7b

    .line 1385
    :cond_cb
    const-string v2, "signature"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1388
    .local v14, "controllerMD5":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 1390
    .local v20, "sig":Ljava/lang/StringBuilder;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ironsource/sdk/utils/SDKUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1392
    .local v18, "localMD5":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12d

    .line 1394
    const/16 v19, 0x1

    .line 1400
    :goto_f8
    const-string v2, "totalCreditsFlag"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    .line 1403
    const-string v2, "timestamp"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1406
    .end local v14    # "controllerMD5":Ljava/lang/String;
    .end local v18    # "localMD5":Ljava/lang/String;
    .end local v20    # "sig":Ljava/lang/StringBuilder;
    :cond_108
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b5

    .line 1408
    move/from16 v9, v22

    .line 1409
    .local v9, "mTotalCreditsFlag":Z
    move-object/from16 v10, v17

    .line 1410
    .local v10, "mlatestCompeltionsTime":Ljava/lang/String;
    move/from16 v7, v19

    .line 1412
    .local v7, "mMd5Signature":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v24, v0

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;

    move-object/from16 v3, p0

    move-object/from16 v13, p1

    invoke-direct/range {v2 .. v13}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_b5

    .line 1396
    .end local v7    # "mMd5Signature":Z
    .end local v9    # "mTotalCreditsFlag":Z
    .end local v10    # "mlatestCompeltionsTime":Ljava/lang/String;
    .restart local v14    # "controllerMD5":Ljava/lang/String;
    .restart local v18    # "localMD5":Ljava/lang/String;
    .restart local v20    # "sig":Ljava/lang/StringBuilder;
    :cond_12d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const-string v13, "Controller signature is not equal to SDK signature"

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-static {v2, v0, v3, v13, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_f8
.end method

.method public adUnitsReady(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1081
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "adUnitsReady("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    new-instance v3, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1084
    .local v3, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v4, "demandSourceName"

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1086
    .local v1, "demandSourceName":Ljava/lang/String;
    new-instance v0, Lcom/ironsource/sdk/data/AdUnitsReady;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/AdUnitsReady;-><init>(Ljava/lang/String;)V

    .line 1088
    .local v0, "adUnitsReady":Lcom/ironsource/sdk/data/AdUnitsReady;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->isNumOfAdUnitsExist()Z

    move-result v4

    if-nez v4, :cond_42

    .line 1089
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v5, 0x0

    const-string v6, "Num Of Ad Units Do Not Exist"

    invoke-static {v4, p1, v5, v6, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1120
    :cond_41
    :goto_41
    return-void

    .line 1093
    :cond_42
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsReady;->getProductType()Ljava/lang/String;

    move-result-object v2

    .line 1097
    .local v2, "product":Ljava/lang/String;
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 1099
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;

    invoke-direct {v5, p0, v0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Lcom/ironsource/sdk/data/AdUnitsReady;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_41
.end method

.method public addTesterParametersToConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "originalConfiguration"    # Ljava/lang/String;
    .param p2, "testerParameters"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 923
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 924
    .local v0, "config":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 925
    .local v1, "testerParams":Lorg/json/JSONObject;
    const-string v2, "testerABGroup"

    const-string v3, "testerABGroup"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 926
    const-string v2, "testFriendlyName"

    const-string v3, "testFriendlyName"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 928
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public alert(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 835
    return-void
.end method

.method public areTesterParametersValid(Ljava/lang/String;)Z
    .registers 5
    .param p1, "testerParameters"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 933
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "-1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 935
    :try_start_e
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 936
    .local v1, "testerParams":Lorg/json/JSONObject;
    const-string v2, "testerABGroup"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "testFriendlyName"

    .line 937
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_28} :catch_2d

    move-result v2

    if-nez v2, :cond_31

    .line 938
    const/4 v2, 0x1

    .line 944
    .end local v1    # "testerParams":Lorg/json/JSONObject;
    :goto_2c
    return v2

    .line 940
    :catch_2d
    move-exception v0

    .line 941
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 944
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_31
    const/4 v2, 0x0

    goto :goto_2c
.end method

.method public checkInstalledApps(Ljava/lang/String;)V
    .registers 15
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 986
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkInstalledApps("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 989
    .local v9, "successFunToCall":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "failFunToCall":Ljava/lang/String;
    const/4 v3, 0x0

    .line 994
    .local v3, "funToCall":Ljava/lang/String;
    new-instance v8, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v8, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 995
    .local v8, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    sget-object v10, Lcom/ironsource/sdk/controller/IronSourceWebView;->APP_IDS:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 996
    .local v0, "appIdsString":Ljava/lang/String;
    sget-object v10, Lcom/ironsource/sdk/controller/IronSourceWebView;->REQUEST_ID:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1000
    .local v5, "requestIdString":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v0, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4400(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    .line 1002
    .local v6, "resultArr":[Ljava/lang/Object;
    const/4 v10, 0x0

    aget-object v4, v6, v10

    check-cast v4, Ljava/lang/String;

    .line 1003
    .local v4, "params":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v6, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 1005
    .local v2, "failed":Z
    if-eqz v2, :cond_73

    .line 1006
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5d

    .line 1007
    move-object v3, v1

    .line 1015
    :cond_5d
    :goto_5d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_72

    .line 1016
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v11, "onCheckInstalledAppsSuccess"

    const-string v12, "onCheckInstalledAppsFail"

    invoke-static {v10, v3, v4, v11, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1017
    .local v7, "script":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 1019
    .end local v7    # "script":Ljava/lang/String;
    :cond_72
    return-void

    .line 1010
    :cond_73
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5d

    .line 1011
    move-object v3, v9

    goto :goto_5d
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createCalendarEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1138
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFile("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    new-instance v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1142
    .local v0, "file":Lcom/ironsource/sdk/data/SSAFile;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1143
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const-string v4, "File not exist"

    const-string v5, "1"

    invoke-static {v2, p1, v3, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1149
    :goto_42
    return-void

    .line 1146
    :cond_43
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1147
    .local v1, "result":Z
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, p1, v1, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method public deleteFolder(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1124
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteFolder("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1126
    new-instance v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v0, "file":Lcom/ironsource/sdk/data/SSAFile;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 1129
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const-string v4, "Folder not exist"

    const-string v5, "1"

    invoke-static {v2, p1, v3, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1134
    :goto_42
    return-void

    .line 1131
    :cond_43
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 1132
    .local v1, "result":Z
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, p1, v1, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method public displayWebView(Ljava/lang/String;)V
    .registers 18
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1153
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "displayWebView("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v13, v14, v15}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1157
    new-instance v11, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v11, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v12, "display"

    invoke-virtual {v11, v12}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 1159
    .local v4, "display":Z
    const-string v12, "productType"

    invoke-virtual {v11, v12}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1160
    .local v9, "productType":Ljava/lang/String;
    const-string v12, "standaloneView"

    invoke-virtual {v11, v12}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 1161
    .local v7, "isStandaloneView":Z
    const-string v12, "demandSourceName"

    invoke-virtual {v11, v12}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1162
    .local v3, "demandSourceName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1164
    .local v6, "isRewardedVideo":Z
    if-eqz v4, :cond_1fa

    .line 1166
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v13, "immersive"

    invoke-virtual {v11, v13}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4802(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    .line 1167
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v13, "activityThemeTranslucent"

    invoke-virtual {v11, v13}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4902(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    .line 1169
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getState()Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    move-result-object v12

    sget-object v13, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    if-eq v12, v13, :cond_1d2

    .line 1171
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v13, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "State: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    .line 1177
    .local v1, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getOrientationState()Ljava/lang/String;

    move-result-object v8

    .line 1178
    .local v8, "orientation":Ljava/lang/String;
    invoke-static {v1}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v10

    .line 1182
    .local v10, "rotation":I
    if-eqz v7, :cond_dd

    .line 1183
    new-instance v2, Lcom/ironsource/sdk/controller/ControllerView;

    invoke-direct {v2, v1}, Lcom/ironsource/sdk/controller/ControllerView;-><init>(Landroid/content/Context;)V

    .line 1184
    .local v2, "controllerView":Lcom/ironsource/sdk/controller/ControllerView;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/widget/FrameLayout;

    move-result-object v12

    invoke-virtual {v2, v12}, Lcom/ironsource/sdk/controller/ControllerView;->addView(Landroid/view/View;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2, v12}, Lcom/ironsource/sdk/controller/ControllerView;->showInterstitial(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    .line 1240
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controllerView":Lcom/ironsource/sdk/controller/ControllerView;
    .end local v8    # "orientation":Ljava/lang/String;
    .end local v10    # "rotation":I
    :goto_dc
    return-void

    .line 1191
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v8    # "orientation":Ljava/lang/String;
    .restart local v10    # "rotation":I
    :cond_dd
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v12

    if-eqz v12, :cond_17a

    .line 1192
    new-instance v5, Landroid/content/Intent;

    const-class v12, Lcom/ironsource/sdk/controller/InterstitialActivity;

    invoke-direct {v5, v1, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1197
    .local v5, "intent":Landroid/content/Intent;
    :goto_ee
    sget-object v12, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v12}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_183

    .line 1198
    const-string v12, "application"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_112

    .line 1199
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v12

    invoke-static {v12}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v8

    .line 1202
    :cond_112
    const/4 v6, 0x1

    .line 1204
    const-string v12, "productType"

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v13}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1207
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v12

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v13}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceName(Ljava/lang/String;)V

    .line 1220
    :cond_13a
    :goto_13a
    if-eqz v6, :cond_159

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v13}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_159

    .line 1221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v12

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-interface {v12, v13, v3}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onAdProductOpen(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 1224
    :cond_159
    const/high16 v12, 0x20000000

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1225
    const-string v12, "immersive"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1226
    const-string v12, "orientation_set_flag"

    invoke-virtual {v5, v12, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1227
    const-string v12, "rotation_set_flag"

    invoke-virtual {v5, v12, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1229
    invoke-virtual {v1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_dc

    .line 1194
    .end local v5    # "intent":Landroid/content/Intent;
    :cond_17a
    new-instance v5, Landroid/content/Intent;

    const-class v12, Lcom/ironsource/sdk/controller/ControllerActivity;

    invoke-direct {v5, v1, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v5    # "intent":Landroid/content/Intent;
    goto/16 :goto_ee

    .line 1210
    :cond_183
    sget-object v12, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v12}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1ac

    .line 1211
    const-string v12, "productType"

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v13}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1213
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v12

    sget-object v13, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v13}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    goto :goto_13a

    .line 1214
    :cond_1ac
    sget-object v12, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v12}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13a

    .line 1215
    const-string v12, "application"

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_13a

    .line 1216
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/ironsource/environment/DeviceStatus;->getActivityRequestedOrientation(Landroid/content/Context;)I

    move-result v12

    invoke-static {v12}, Lcom/ironsource/sdk/utils/SDKUtils;->translateRequestedOrientation(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_13a

    .line 1233
    .end local v1    # "context":Landroid/content/Context;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v8    # "orientation":Ljava/lang/String;
    .end local v10    # "rotation":I
    :cond_1d2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "State: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_dc

    .line 1237
    :cond_1fa
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v13, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setState(Lcom/ironsource/sdk/controller/IronSourceWebView$State;)V

    .line 1238
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5200(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    goto/16 :goto_dc
.end method

.method public getApplicationInfo(Ljava/lang/String;)V
    .registers 15
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 949
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getApplicationInfo("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 952
    .local v9, "successFunToCall":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 955
    .local v1, "failFunToCall":Ljava/lang/String;
    new-instance v8, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v8, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 956
    .local v8, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v10, "productType"

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 957
    .local v5, "product":Ljava/lang/String;
    const-string v10, "demandSourceName"

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 959
    .local v0, "demandSourceName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 961
    .local v3, "funToCall":Ljava/lang/String;
    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/Object;

    .line 963
    .local v6, "resultArr":[Ljava/lang/Object;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v5, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4300(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v6

    .line 965
    const/4 v10, 0x0

    aget-object v4, v6, v10

    check-cast v4, Ljava/lang/String;

    .line 966
    .local v4, "params":Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v6, v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 968
    .local v2, "failed":Z
    if-eqz v2, :cond_76

    .line 969
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    .line 970
    move-object v3, v1

    .line 978
    :cond_60
    :goto_60
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_75

    .line 979
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v11, "onGetApplicationInfoSuccess"

    const-string v12, "onGetApplicationInfoFail"

    invoke-static {v10, v3, v4, v11, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 980
    .local v7, "script":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 982
    .end local v7    # "script":Ljava/lang/String;
    :cond_75
    return-void

    .line 973
    :cond_76
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_60

    .line 974
    move-object v3, v9

    goto :goto_60
.end method

.method public getAppsInstallTime(Ljava/lang/String;)V
    .registers 15
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2238
    new-instance v8, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v8, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2239
    .local v8, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const/4 v4, 0x1

    .line 2240
    .local v4, "failed":Z
    const/4 v5, 0x0

    .line 2243
    .local v5, "funToCall":Ljava/lang/String;
    :try_start_7
    const-string v10, "systemApps"

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2245
    .local v6, "includeSystemApps":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v11

    invoke-static {v10, v11}, Lcom/ironsource/environment/DeviceStatus;->getAppsInstallTime(Landroid/content/Context;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 2246
    .local v0, "appsInstallTime":Lorg/json/JSONObject;
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_4d

    move-result-object v1

    .line 2247
    .local v1, "dataToSend":Ljava/lang/String;
    const/4 v4, 0x0

    .line 2253
    .end local v0    # "appsInstallTime":Lorg/json/JSONObject;
    .end local v6    # "includeSystemApps":Ljava/lang/String;
    :goto_20
    if-eqz v4, :cond_79

    .line 2254
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2255
    .local v3, "failFunToCall":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2f

    .line 2256
    move-object v5, v3

    .line 2265
    .end local v3    # "failFunToCall":Ljava/lang/String;
    :cond_2f
    :goto_2f
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4c

    .line 2267
    :try_start_35
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_40
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_35 .. :try_end_40} :catch_87

    move-result-object v1

    .line 2271
    :goto_41
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v5, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2272
    .local v7, "script":Ljava/lang/String;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 2274
    .end local v7    # "script":Ljava/lang/String;
    :cond_4c
    return-void

    .line 2248
    .end local v1    # "dataToSend":Ljava/lang/String;
    :catch_4d
    move-exception v2

    .line 2249
    .local v2, "e":Ljava/lang/Exception;
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAppsInstallTime failed("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "dataToSend":Ljava/lang/String;
    goto :goto_20

    .line 2259
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_79
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2260
    .local v9, "successFunToCall":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2f

    .line 2261
    move-object v5, v9

    goto :goto_2f

    .line 2268
    .end local v9    # "successFunToCall":Ljava/lang/String;
    :catch_87
    move-exception v2

    .line 2269
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_41
.end method

.method public getCachedFilesMap(Ljava/lang/String;)V
    .registers 12
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1270
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCachedFilesMap("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1274
    .local v1, "funToCall":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 1276
    new-instance v4, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v4, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1279
    .local v4, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v5, "path"

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 1280
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v6, "path key does not exist"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1297
    .end local v4    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :cond_44
    :goto_44
    return-void

    .line 1284
    .restart local v4    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :cond_45
    const-string v5, "path"

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1287
    .local v2, "mapPath":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isPathExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_61

    .line 1288
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v6, "path file does not exist on disk"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_44

    .line 1292
    :cond_61
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->getCachedFilesMap(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1293
    .local v0, "fileSystmeMap":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v6, "onGetCachedFilesMapSuccess"

    const-string v7, "onGetCachedFilesMapFail"

    invoke-static {v5, v1, v0, v6, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1295
    .local v3, "script":Ljava/lang/String;
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    goto :goto_44
.end method

.method public getControllerConfig(Ljava/lang/String;)V
    .registers 11
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 902
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getControllerConfig("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    new-instance v3, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 904
    .local v3, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4100()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 905
    .local v4, "successFunToCall":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 906
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfig()Ljava/lang/String;

    move-result-object v1

    .line 907
    .local v1, "params":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getTesterParameters()Ljava/lang/String;

    move-result-object v5

    .line 908
    .local v5, "testerParameters":Ljava/lang/String;
    invoke-virtual {p0, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->areTesterParametersValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 910
    :try_start_43
    invoke-virtual {p0, v1, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->addTesterParametersToConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_46
    .catch Lorg/json/JSONException; {:try_start_43 .. :try_end_46} :catch_53

    move-result-object v1

    .line 916
    :cond_47
    :goto_47
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6, v4, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 917
    .local v2, "script":Ljava/lang/String;
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 919
    .end local v1    # "params":Ljava/lang/String;
    .end local v2    # "script":Ljava/lang/String;
    .end local v5    # "testerParameters":Ljava/lang/String;
    :cond_52
    return-void

    .line 912
    .restart local v1    # "params":Ljava/lang/String;
    .restart local v5    # "testerParameters":Ljava/lang/String;
    :catch_53
    move-exception v0

    .line 913
    .local v0, "jsonException":Lorg/json/JSONException;
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getControllerConfig Error while parsing Tester AB Group parameters"

    invoke-static {v6, v7}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method public getDemandSourceState(Ljava/lang/String;)V
    .registers 14
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1308
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getMediationState("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    new-instance v7, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v7, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1311
    .local v7, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v8, "demandSourceName"

    invoke-virtual {v7, v8}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1312
    .local v1, "demandSourceName":Ljava/lang/String;
    const-string v8, "productType"

    invoke-virtual {v7, v8}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1315
    .local v5, "product":Ljava/lang/String;
    if-eqz v5, :cond_76

    if-eqz v1, :cond_76

    .line 1316
    :try_start_37
    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->getProductType(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v6

    .line 1317
    .local v6, "productType":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    if-eqz v6, :cond_76

    .line 1318
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v8

    invoke-virtual {v8, v6, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 1319
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    const/4 v3, 0x0

    .line 1320
    .local v3, "funToCall":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 1321
    .local v4, "obj":Lorg/json/JSONObject;
    const-string v8, "productType"

    invoke-virtual {v4, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1322
    const-string v8, "demandSourceName"

    invoke-virtual {v4, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1323
    if-eqz v0, :cond_77

    const/4 v8, -0x1

    invoke-virtual {v0, v8}, Lcom/ironsource/sdk/data/DemandSource;->isMediationState(I)Z

    move-result v8

    if-nez v8, :cond_77

    .line 1324
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v8, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1325
    const-string v8, "state"

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getMediationState()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1329
    :goto_6f
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v3, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->callJavaScriptFunction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    .end local v3    # "funToCall":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "productType":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :cond_76
    :goto_76
    return-void

    .line 1327
    .restart local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    .restart local v3    # "funToCall":Ljava/lang/String;
    .restart local v4    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "productType":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :cond_77
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v8, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_7c} :catch_7e

    move-result-object v3

    goto :goto_6f

    .line 1332
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    .end local v3    # "funToCall":Ljava/lang/String;
    .end local v4    # "obj":Lorg/json/JSONObject;
    .end local v6    # "productType":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :catch_7e
    move-exception v2

    .line 1333
    .local v2, "ex":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v9, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v8, p1, v9, v10, v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1334
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_76
.end method

.method public getDeviceLocation(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2581
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDeviceLocation("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2583
    :try_start_22
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/environment/LocationService;->getLastLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Landroid/location/Location;)Lcom/ironsource/sdk/data/SSAObj;

    move-result-object v1

    .line 2584
    .local v1, "ret":Lcom/ironsource/sdk/data/SSAObj;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3e} :catch_3f

    .line 2588
    .end local v1    # "ret":Lcom/ironsource/sdk/data/SSAObj;
    :goto_3e
    return-void

    .line 2585
    :catch_3f
    move-exception v0

    .line 2586
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3e
.end method

.method public getDevicePreciseLocation(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2595
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDevicePreciseLocation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    :try_start_22
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$25;

    invoke-direct {v2, p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$25;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/ironsource/environment/LocationService;->getPreciseLocation(Landroid/content/Context;Lcom/ironsource/environment/LocationService$ISLocationListener;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_30} :catch_31

    .line 2607
    :goto_30
    return-void

    .line 2604
    :catch_31
    move-exception v0

    .line 2605
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_30
.end method

.method public getDeviceStatus(Ljava/lang/String;)V
    .registers 12
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 839
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getDeviceStatus("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 842
    .local v6, "successFunToCall":Ljava/lang/String;
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, "failFunToCall":Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/Object;

    .line 845
    .local v4, "resultArr":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3800(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v4

    .line 847
    const/4 v7, 0x0

    aget-object v3, v4, v7

    check-cast v3, Ljava/lang/String;

    .line 848
    .local v3, "params":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v4, v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 850
    .local v1, "failed":Z
    const/4 v2, 0x0

    .line 852
    .local v2, "funToCall":Ljava/lang/String;
    if-eqz v1, :cond_6b

    .line 853
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 854
    move-object v2, v0

    .line 862
    :cond_55
    :goto_55
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6a

    .line 863
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v8, "onGetDeviceStatusSuccess"

    const-string v9, "onGetDeviceStatusFail"

    invoke-static {v7, v2, v3, v8, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 864
    .local v5, "script":Ljava/lang/String;
    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 866
    .end local v5    # "script":Ljava/lang/String;
    :cond_6a
    return-void

    .line 857
    :cond_6b
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_55

    .line 858
    move-object v2, v6

    goto :goto_55
.end method

.method public getDeviceVolume(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2546
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceVolume("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    :try_start_22
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/sdk/utils/DeviceProperties;->getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/utils/DeviceProperties;->getDeviceVolume(Landroid/content/Context;)F

    move-result v0

    .line 2551
    .local v0, "currVolume":F
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2552
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "deviceVolume"

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_50} :catch_51

    .line 2557
    .end local v0    # "currVolume":F
    .end local v2    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :goto_50
    return-void

    .line 2554
    :catch_51
    move-exception v1

    .line 2555
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_50
.end method

.method public getOrientation(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1244
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1245
    .local v0, "funToCall":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/sdk/utils/SDKUtils;->getOrientation(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1247
    .local v1, "params":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1248
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v4, "onGetOrientationSuccess"

    const-string v5, "onGetOrientationFail"

    invoke-static {v3, v0, v1, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1249
    .local v2, "script":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 1251
    .end local v2    # "script":Ljava/lang/String;
    :cond_29
    return-void
.end method

.method public getUDIA(Ljava/lang/String;)V
    .registers 16
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2081
    const/4 v10, 0x0

    iput v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    .line 2083
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getUDIA("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2087
    .local v2, "funToCall":Ljava/lang/String;
    new-instance v8, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v8, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2090
    .local v8, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v10, "getByFlag"

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_42

    .line 2091
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v11, 0x0

    const-string v12, "getByFlag key does not exist"

    const/4 v13, 0x0

    invoke-static {v10, p1, v11, v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2159
    :cond_41
    :goto_41
    return-void

    .line 2096
    :cond_42
    const-string v10, "getByFlag"

    invoke-virtual {v8, v10}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2097
    .local v4, "getByFlagStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2100
    .local v3, "getByFlag":I
    if-eqz v3, :cond_41

    .line 2105
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 2107
    .local v0, "binaryToggle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_62

    .line 2108
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v11, 0x0

    const-string v12, "fialed to convert getByFlag"

    const/4 v13, 0x0

    invoke-static {v10, p1, v11, v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 2113
    :cond_62
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2114
    .local v9, "strBld":Ljava/lang/StringBuilder;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2117
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2120
    .local v1, "binaryToggleArr":[C
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 2123
    .local v5, "jsArr":Lorg/json/JSONArray;
    const/4 v10, 0x3

    aget-char v10, v1, v10

    const/16 v11, 0x30

    if-ne v10, v11, :cond_9b

    .line 2124
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2126
    .local v6, "jsObj":Lorg/json/JSONObject;
    :try_start_84
    const-string v10, "sessions"

    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v11

    invoke-virtual {v11}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSessions()Lorg/json/JSONArray;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2127
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->deleteSessions()V

    .line 2128
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_9b
    .catch Lorg/json/JSONException; {:try_start_84 .. :try_end_9b} :catch_ef

    .line 2134
    .end local v6    # "jsObj":Lorg/json/JSONObject;
    :cond_9b
    :goto_9b
    const/4 v10, 0x2

    aget-char v10, v1, v10

    const/16 v11, 0x31

    if-ne v10, v11, :cond_41

    .line 2136
    iget v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    .line 2139
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/ironsource/environment/LocationService;->getLastLocation(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v7

    .line 2141
    .local v7, "location":Landroid/location/Location;
    if-eqz v7, :cond_e7

    .line 2142
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 2144
    .restart local v6    # "jsObj":Lorg/json/JSONObject;
    :try_start_b9
    const-string v10, "latitude"

    invoke-virtual {v7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v12

    invoke-virtual {v6, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2145
    const-string v10, "longitude"

    invoke-virtual {v7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    invoke-virtual {v6, v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 2146
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 2147
    iget v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    .line 2148
    invoke-direct {p0, v2, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->sendResults(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 2149
    iget-object v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "done location"

    invoke-static {v10, v11}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e2
    .catch Lorg/json/JSONException; {:try_start_b9 .. :try_end_e2} :catch_e4

    goto/16 :goto_41

    .line 2150
    :catch_e4
    move-exception v10

    goto/16 :goto_41

    .line 2154
    .end local v6    # "jsObj":Lorg/json/JSONObject;
    :cond_e7
    iget v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    add-int/lit8 v10, v10, -0x1

    iput v10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->udiaResults:I

    goto/16 :goto_41

    .line 2129
    .end local v7    # "location":Landroid/location/Location;
    .restart local v6    # "jsObj":Lorg/json/JSONObject;
    :catch_ef
    move-exception v10

    goto :goto_9b
.end method

.method public getUserData(Ljava/lang/String;)V
    .registers 18
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2335
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getUserData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2337
    new-instance v15, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2339
    .local v15, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 2340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const-string v5, "key does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2353
    :goto_42
    return-void

    .line 2344
    :cond_43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2345
    .local v12, "failFunToCall":Ljava/lang/String;
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2347
    .local v2, "mKey":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getUserData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2349
    .local v3, "mValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 2351
    .local v13, "params":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v12, v13}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2352
    .local v14, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    goto :goto_42
.end method

.method public getUserUniqueId(Ljava/lang/String;)V
    .registers 18
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2214
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUserUniqueId("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    new-instance v15, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2218
    .local v15, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v1, "productType"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 2219
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x0

    const-string v4, "productType does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v2, v4, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2234
    :cond_42
    :goto_42
    return-void

    .line 2223
    :cond_43
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2225
    .local v12, "funToCall":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_42

    .line 2227
    const-string v1, "productType"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2228
    .local v5, "productType":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getUniqueId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2229
    .local v3, "id":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "userUniqueId"

    const-string v4, "productType"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 2231
    .local v13, "params":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onGetUserUniqueIdSuccess"

    const-string v4, "onGetUserUniqueIdFail"

    invoke-static {v1, v12, v13, v2, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2232
    .local v14, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    goto :goto_42
.end method

.method handleControllerStageFailed()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 807
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1502(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 809
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v1

    .line 810
    .local v1, "demandSources":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 811
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    if-ne v3, v6, :cond_19

    .line 812
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_19

    .line 816
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_37
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v1

    .line 817
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_47
    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 818
    .restart local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v3

    if-ne v3, v6, :cond_47

    .line 819
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    goto :goto_47

    .line 823
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_65
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v2

    if-eqz v2, :cond_74

    .line 824
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v2, v3, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 827
    :cond_74
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 828
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v2, v3, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3500(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 830
    :cond_83
    return-void
.end method

.method handleControllerStageLoaded()V
    .registers 3

    .prologue
    .line 763
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Loaded:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1502(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 764
    return-void
.end method

.method handleControllerStageReady()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 767
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1502(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ControllerState;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 770
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 773
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/CountDownTimer;->cancel()V

    .line 776
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1800(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    .line 780
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v2

    .line 781
    .local v2, "demandSourcesRV":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2f
    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 782
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v4

    if-ne v4, v8, :cond_2f

    .line 783
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;)V

    goto :goto_2f

    .line 787
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_59
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v3

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSources(Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Ljava/util/Collection;

    move-result-object v1

    .line 788
    .local v1, "demandSourcesIS":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/ironsource/sdk/data/DemandSource;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_69
    :goto_69
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/DemandSource;

    .line 789
    .restart local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    invoke-virtual {v0}, Lcom/ironsource/sdk/data/DemandSource;->getDemandSourceInitState()I

    move-result v4

    if-ne v4, v8, :cond_69

    .line 790
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v0, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/data/DemandSource;Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;)V

    goto :goto_69

    .line 794
    .end local v0    # "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    :cond_93
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 795
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    .line 798
    :cond_b8
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v3

    if-eqz v3, :cond_d7

    .line 799
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/sdk/listeners/OnOfferWallListener;)V

    .line 802
    :cond_d7
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->restoreState(Lcom/ironsource/sdk/data/AdUnitsState;)V

    .line 804
    return-void
.end method

.method public initController(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 727
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initController("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 731
    .local v0, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "stage"

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 733
    const-string v2, "stage"

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "stage":Ljava/lang/String;
    const-string v2, "ready"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 736
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->handleControllerStageReady()V

    .line 747
    :goto_40
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$1;

    invoke-direct {v3, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$1;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 760
    .end local v1    # "stage":Ljava/lang/String;
    :cond_4a
    return-void

    .line 737
    .restart local v1    # "stage":Ljava/lang/String;
    :cond_4b
    const-string v2, "loaded"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 738
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->handleControllerStageLoaded()V

    goto :goto_40

    .line 739
    :cond_57
    const-string v2, "failed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 740
    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->handleControllerStageFailed()V

    goto :goto_40

    .line 742
    :cond_63
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "No STAGE mentioned! Should not get here!"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public locationServicesEnabled(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2565
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "locationServicesEnabled("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    :try_start_22
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/environment/LocationService;->locationServicesEnabled(Landroid/content/Context;)Z

    move-result v1

    .line 2568
    .local v1, "locationServicesEnabled":Z
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2569
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "status"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2570
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_46} :catch_47

    .line 2574
    .end local v1    # "locationServicesEnabled":Z
    .end local v2    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :goto_46
    return-void

    .line 2571
    :catch_47
    move-exception v0

    .line 2572
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46
.end method

.method public moatAPI(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;

    invoke-direct {v1, p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2529
    return-void
.end method

.method public onAdWindowsClosed(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2380
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAdWindowsClosed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/AdUnitsState;->adClosed()V

    .line 2384
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceName(Ljava/lang/String;)V

    .line 2387
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2388
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v4, "productType"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2389
    .local v1, "product":Ljava/lang/String;
    const-string v4, "demandSourceName"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2390
    .local v0, "demandSourceName":Ljava/lang/String;
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v3

    .line 2392
    .local v3, "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAdClosed() with type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7c

    .line 2396
    if-eqz v1, :cond_7c

    .line 2397
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;

    invoke-direct {v5, p0, v3, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2412
    :cond_7c
    return-void
.end method

.method public onGenericFunctionFail(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1934
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGenericFunctionFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v2

    if-nez v2, :cond_37

    .line 1937
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "genericFunctionListener was not found"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    :goto_36
    return-void

    .line 1941
    :cond_37
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1942
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1944
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$20;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$20;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1950
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1951
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onGenericFunctionFail"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public onGenericFunctionSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1916
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGenericFunctionSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1918
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    if-nez v0, :cond_37

    .line 1919
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "genericFunctionListener was not found"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1930
    :goto_36
    return-void

    .line 1923
    :cond_37
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$19;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$19;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1929
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method

.method public onGetApplicationInfoFail(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1529
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1532
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetApplicationInfoFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method public onGetApplicationInfoSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1521
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetApplicationInfoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1524
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetApplicationInfoSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    return-void
.end method

.method public onGetCachedFilesMapFail(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1582
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1586
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetCachedFilesMapFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1587
    return-void
.end method

.method public onGetCachedFilesMapSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1573
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetCachedFilesMapSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1577
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetCachedFilesMapSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    return-void
.end method

.method public onGetDeviceStatusFail(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1466
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetDeviceStatusFail"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1471
    return-void
.end method

.method public onGetDeviceStatusSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1457
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetDeviceStatusSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onGetDeviceStatusSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1462
    return-void
.end method

.method public onGetUDIAFail(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2186
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUDIAFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2187
    return-void
.end method

.method public onGetUDIASuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2181
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUDIASuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2182
    return-void
.end method

.method public onGetUserCreditsFail(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2357
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onGetUserCreditsFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2359
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2360
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2362
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 2363
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$21;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$21;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2374
    :cond_46
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2375
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onGetUserCreditsFail"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 2376
    return-void
.end method

.method public onGetUserUniqueIdFail(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserUniqueIdFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2284
    return-void
.end method

.method public onGetUserUniqueIdSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2278
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetUserUniqueIdSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    return-void
.end method

.method public onInitInterstitialFail(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1664
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInitInterstitialFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1666
    new-instance v3, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1667
    .local v3, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1668
    .local v2, "message":Ljava/lang/String;
    const-string v4, "demandSourceName"

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1670
    .local v1, "demandSourceName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 1671
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "onInitInterstitialSuccess failed with no demand source"

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    :goto_45
    return-void

    .line 1674
    :cond_46
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4, v5, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 1676
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_58

    .line 1677
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 1680
    :cond_58
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v5}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 1682
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;

    invoke-direct {v5, p0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1695
    :cond_70
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1696
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v5, "onInitInterstitialFail"

    invoke-static {v4, v5, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45
.end method

.method public onInitInterstitialSuccess(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1638
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onInitInterstitialSuccess()"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1640
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onInitInterstitialSuccess"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1642
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "demandSourceName"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1644
    .local v0, "demandSourceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1645
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onInitInterstitialSuccess failed with no demand source"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1660
    :cond_30
    :goto_30
    return-void

    .line 1649
    :cond_31
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 1651
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$10;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$10;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_30
.end method

.method public onInitOfferWallFail(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1789
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onInitOfferWallFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1792
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallInitSuccess(Z)V

    .line 1794
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1798
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitOfferwall()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1801
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 1803
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 1805
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$15;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$15;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1819
    :cond_65
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v6, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1820
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onInitOfferWallFail"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    return-void
.end method

.method public onInitOfferWallSuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1767
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onInitOfferWallSuccess"

    const-string v2, "true"

    invoke-static {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallInitSuccess(Z)V

    .line 1772
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/AdUnitsState;->reportInitOfferwall()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1774
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/data/AdUnitsState;->setOfferwallReportInit(Z)V

    .line 1775
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 1776
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$14;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$14;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1785
    :cond_41
    return-void
.end method

.method public onInitRewardedVideoFail(Ljava/lang/String;)V
    .registers 10
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1486
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInitRewardedVideoFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1488
    new-instance v3, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v3, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1489
    .local v3, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v4, "errMsg"

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1491
    .local v2, "message":Ljava/lang/String;
    const-string v4, "demandSourceName"

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1493
    .local v1, "demandSourceName":Ljava/lang/String;
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1900(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/DemandSourceManager;

    move-result-object v4

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4, v5, v1}, Lcom/ironsource/sdk/controller/DemandSourceManager;->getDemandSourceByName(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)Lcom/ironsource/sdk/data/DemandSource;

    move-result-object v0

    .line 1494
    .local v0, "demandSource":Lcom/ironsource/sdk/data/DemandSource;
    if-eqz v0, :cond_46

    .line 1496
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/ironsource/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 1499
    :cond_46
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v5, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v5}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 1501
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v5, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;

    invoke-direct {v5, p0, v2, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1515
    :cond_5e
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1516
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v5, "onInitRewardedVideoFail"

    invoke-static {v4, v5, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    return-void
.end method

.method public onInitRewardedVideoSuccess(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1475
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInitRewardedVideoSuccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    new-instance v0, Lcom/ironsource/sdk/data/SSABCParameters;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSABCParameters;-><init>(Ljava/lang/String;)V

    .line 1478
    .local v0, "ssaBCParameters":Lcom/ironsource/sdk/data/SSABCParameters;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setSSABCParameters(Lcom/ironsource/sdk/data/SSABCParameters;)V

    .line 1480
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, v4, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1481
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onInitRewardedVideoSuccess"

    invoke-static {v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1482
    return-void
.end method

.method public onLoadInterstitialFail(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1849
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLoadInterstitialFail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1851
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "errMsg"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1853
    .local v1, "message":Ljava/lang/String;
    const-string v3, "demandSourceName"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1855
    .local v0, "demandSourceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x1

    invoke-static {v3, p1, v4, v6, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1857
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1877
    :goto_40
    return-void

    .line 1862
    :cond_41
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 1864
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v4, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;

    invoke-direct {v4, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1875
    :cond_59
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v4, "onLoadInterstitialFail"

    const-string v5, "true"

    invoke-static {v3, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public onLoadInterstitialSuccess(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1825
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLoadInterstitialSuccess("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "demandSourceName"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1830
    .local v0, "demandSourceName":Ljava/lang/String;
    invoke-direct {p0, v0, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->setInterstitialAvailability(Ljava/lang/String;Z)V

    .line 1831
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, p1, v5, v6, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1834
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 1836
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$16;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$16;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1844
    :cond_4f
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onLoadInterstitialSuccess"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1845
    return-void
.end method

.method public onOfferWallGeneric(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2295
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOfferWallGeneric("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2296
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 2297
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V

    .line 2298
    :cond_3d
    return-void
.end method

.method public onShowInterstitialFail(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1881
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShowInterstitialFail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1884
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "errMsg"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1885
    .local v1, "message":Ljava/lang/String;
    const-string v3, "demandSourceName"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1887
    .local v0, "demandSourceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x1

    invoke-static {v3, p1, v4, v6, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1889
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 1910
    :goto_40
    return-void

    .line 1893
    :cond_41
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->setInterstitialAvailability(Ljava/lang/String;Z)V

    .line 1895
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 1897
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v4, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;

    invoke-direct {v4, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1909
    :cond_5d
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v4, "onShowInterstitialFail"

    invoke-static {v3, v4, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public onShowInterstitialSuccess(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1737
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowInterstitialSuccess("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1741
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "demandSourceName"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1744
    .local v0, "demandSourceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1745
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "onShowInterstitialSuccess called with no demand"

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    :goto_45
    return-void

    .line 1749
    :cond_46
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1750
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ironsource/sdk/data/AdUnitsState;->setDisplayedDemandSourceName(Ljava/lang/String;)V

    .line 1752
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 1754
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1760
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onShowInterstitialSuccess"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    :cond_7d
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->setInterstitialAvailability(Ljava/lang/String;Z)V

    goto :goto_45
.end method

.method public onShowOfferWallFail(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1613
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowOfferWallFail("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1616
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "errMsg"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1618
    .local v0, "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 1619
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$9;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$9;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1630
    :cond_46
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x1

    invoke-static {v2, p1, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1631
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "onShowOfferWallFail"

    invoke-static {v2, v3, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1632
    return-void
.end method

.method public onShowOfferWallSuccess(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1594
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onShowOfferWallSuccess("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1595
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/data/AdUnitsState;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/AdUnitsState;->adOpened(I)V

    .line 1597
    const-string v1, "placementId"

    invoke-static {p1, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->getValueFromJsonObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1599
    .local v0, "placementId":Ljava/lang/String;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_50

    .line 1600
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;

    invoke-direct {v2, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1607
    :cond_50
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2, v4, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1608
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v2, "onShowOfferWallSuccess"

    invoke-static {v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    return-void
.end method

.method public onShowRewardedVideoFail(Ljava/lang/String;)V
    .registers 9
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1545
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShowRewardedVideoFail("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1547
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1548
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "errMsg"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1549
    .local v1, "message":Ljava/lang/String;
    const-string v3, "demandSourceName"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1551
    .local v0, "demandSourceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    sget-object v4, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v4}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 1553
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v4, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;

    invoke-direct {v4, p0, v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1566
    :cond_4c
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x1

    invoke-static {v3, p1, v4, v6, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1567
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v4, "onShowRewardedVideoFail"

    invoke-static {v3, v4, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    return-void
.end method

.method public onShowRewardedVideoSuccess(Ljava/lang/String;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1537
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowRewardedVideoSuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "onShowRewardedVideoSuccess"

    invoke-static {v0, v1, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1541
    return-void
.end method

.method public onUDIAFail(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUDIAFail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    return-void
.end method

.method public onUDIASuccess(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2171
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUDIASuccess("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    return-void
.end method

.method public onVideoStatusChanged(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2416
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVideoStatusChanged("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2418
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "productType"

    invoke-virtual {v1, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2420
    .local v0, "product":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    if-eqz v3, :cond_5e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5e

    .line 2421
    sget-object v3, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 2422
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2423
    .local v2, "status":Ljava/lang/String;
    const-string v3, "started"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 2424
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoStarted()V

    .line 2438
    .end local v2    # "status":Ljava/lang/String;
    :cond_5e
    :goto_5e
    return-void

    .line 2425
    .restart local v2    # "status":Ljava/lang/String;
    :cond_5f
    const-string v3, "paused"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2426
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoPaused()V

    goto :goto_5e

    .line 2427
    :cond_71
    const-string v3, "playing"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    .line 2428
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoResumed()V

    goto :goto_5e

    .line 2429
    :cond_83
    const-string v3, "ended"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_95

    .line 2430
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoEnded()V

    goto :goto_5e

    .line 2431
    :cond_95
    const-string v3, "stopped"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a7

    .line 2432
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6100(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/VideoEventsListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/ironsource/sdk/controller/VideoEventsListener;->onVideoStopped()V

    goto :goto_5e

    .line 2434
    :cond_a7
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onVideoStatusChanged: unknown status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e
.end method

.method public openUrl(Ljava/lang/String;)V
    .registers 12
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1966
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openUrl("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    new-instance v4, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v4, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1969
    .local v4, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v6, "url"

    invoke-virtual {v4, v6}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1970
    .local v5, "url":Ljava/lang/String;
    const-string v6, "method"

    invoke-virtual {v4, v6}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1973
    .local v3, "method":Ljava/lang/String;
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v0

    .line 1975
    .local v0, "context":Landroid/content/Context;
    :try_start_39
    const-string v6, "external_browser"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 1976
    invoke-static {v0, v5}, Lcom/ironsource/environment/UrlHandler;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    .line 1997
    :cond_44
    :goto_44
    return-void

    .line 1977
    :cond_45
    const-string v6, "webview"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 1979
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v2, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1980
    .local v2, "intent":Landroid/content/Intent;
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1981
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1982
    const-string v6, "immersive"

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1983
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_6d} :catch_6e

    goto :goto_44

    .line 1993
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_6e
    move-exception v1

    .line 1994
    .local v1, "ex":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v7, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v6, p1, v7, v8, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1995
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_44

    .line 1985
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_7e
    :try_start_7e
    const-string v6, "store"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 1987
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcom/ironsource/sdk/controller/OpenUrlActivity;

    invoke-direct {v2, v0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1988
    .restart local v2    # "intent":Landroid/content/Intent;
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->EXTERNAL_URL:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1989
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->IS_STORE:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1990
    sget-object v6, Lcom/ironsource/sdk/controller/IronSourceWebView;->SECONDARY_WEB_VIEW:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1991
    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_a1} :catch_6e

    goto :goto_44
.end method

.method public permissionsAPI(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2534
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "permissionsAPI("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2535
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2536
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/PermissionsJSAdapter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    invoke-direct {v4, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v2, v3, v4}, Lcom/ironsource/sdk/controller/PermissionsJSAdapter;->call(Ljava/lang/String;Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 2541
    .end local v1    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :goto_39
    return-void

    .line 2537
    :catch_3a
    move-exception v0

    .line 2538
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2539
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "permissionsAPI failed with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

.method public postAdEventNotification(Ljava/lang/String;)V
    .registers 23
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2443
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postAdEventNotification("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    new-instance v19, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2448
    .local v19, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "eventName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2449
    .local v6, "eventName":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 2450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const-string v5, "eventName does not exist"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3, v5, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2490
    .end local v6    # "eventName":Ljava/lang/String;
    .end local v19    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :goto_4a
    return-void

    .line 2455
    .restart local v6    # "eventName":Ljava/lang/String;
    .restart local v19    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :cond_4b
    const-string v2, "dsName"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2458
    .local v8, "demandSourceName":Ljava/lang/String;
    const-string v2, "extData"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/json/JSONObject;

    .line 2460
    .local v14, "extData":Lorg/json/JSONObject;
    const-string v2, "productType"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2461
    .local v4, "productType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    move-result-object v20

    .line 2463
    .local v20, "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4700(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ca

    .line 2465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2466
    .local v16, "funToCall":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b2

    .line 2467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "productType"

    const-string v5, "eventName"

    const-string v7, "demandSourceName"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    .line 2468
    .local v17, "params":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v3, "postAdEventNotificationSuccess"

    const-string v5, "postAdEventNotificationFail"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v2, v0, v1, v3, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2469
    .local v18, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 2472
    .end local v17    # "params":Ljava/lang/String;
    .end local v18    # "script":Ljava/lang/String;
    :cond_b2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v9, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;

    move-object/from16 v10, p0

    move-object/from16 v11, v20

    move-object v12, v8

    move-object v13, v6

    invoke-direct/range {v9 .. v14}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v2, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c4} :catch_c5

    goto :goto_4a

    .line 2487
    .end local v4    # "productType":Ljava/lang/String;
    .end local v6    # "eventName":Ljava/lang/String;
    .end local v8    # "demandSourceName":Ljava/lang/String;
    .end local v14    # "extData":Lorg/json/JSONObject;
    .end local v16    # "funToCall":Ljava/lang/String;
    .end local v19    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    .end local v20    # "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :catch_c5
    move-exception v15

    .line 2488
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a

    .line 2485
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v4    # "productType":Ljava/lang/String;
    .restart local v6    # "eventName":Ljava/lang/String;
    .restart local v8    # "demandSourceName":Ljava/lang/String;
    .restart local v14    # "extData":Lorg/json/JSONObject;
    .restart local v19    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    .restart local v20    # "type":Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    :cond_ca
    :try_start_ca
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v3, 0x0

    const-string v5, "productType does not exist"

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v2, v0, v3, v5, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d7} :catch_c5

    goto/16 :goto_4a
.end method

.method public removeCloseEventHandler(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCloseEventHandler("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_33

    .line 1449
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1452
    :cond_33
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$702(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    .line 1453
    return-void
.end method

.method public saveFile(Ljava/lang/String;)V
    .registers 14
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1024
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveFile("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    new-instance v5, Lcom/ironsource/sdk/data/SSAFile;

    invoke-direct {v5, p1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v5, "ssaFile":Lcom/ironsource/sdk/data/SSAFile;
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ironsource/environment/DeviceStatus;->getAvailableMemorySizeInMegaBytes(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gtz v6, :cond_41

    .line 1030
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v7, "no_disk_space"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1077
    :goto_40
    return-void

    .line 1034
    :cond_41
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v6

    if-nez v6, :cond_4f

    .line 1036
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v7, "sotrage_unavailable"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 1040
    :cond_4f
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isFileCached(Ljava/lang/String;Lcom/ironsource/sdk/data/SSAFile;)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 1041
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v7, "file_already_exist"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 1045
    :cond_63
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/ironsource/environment/ConnectivityService;->isConnected(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_77

    .line 1047
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v7, "no_network_connection"

    invoke-static {v6, p1, v11, v7, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 1051
    :cond_77
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v7, 0x1

    invoke-static {v6, p1, v7, v10, v10}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {v5}, Lcom/ironsource/sdk/data/SSAFile;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v1

    .line 1055
    .local v1, "lastUpdateTimeObj":Ljava/lang/String;
    if-eqz v1, :cond_af

    .line 1057
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1060
    .local v2, "lastUpdateTimeStr":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_af

    .line 1063
    invoke-virtual {v5}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 1065
    .local v3, "path":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b9

    .line 1066
    invoke-virtual {v5}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1067
    .local v4, "splitArr":[Ljava/lang/String;
    array-length v6, v4

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v4, v6

    .line 1072
    .end local v4    # "splitArr":[Ljava/lang/String;
    .local v0, "folder":Ljava/lang/String;
    :goto_a8
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setCampaignLastUpdate(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    .end local v0    # "folder":Ljava/lang/String;
    .end local v2    # "lastUpdateTimeStr":Ljava/lang/String;
    .end local v3    # "path":Ljava/lang/String;
    :cond_af
    iget-object v6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/precache/DownloadManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/ironsource/sdk/precache/DownloadManager;->downloadFile(Lcom/ironsource/sdk/data/SSAFile;)V

    goto :goto_40

    .line 1069
    .restart local v2    # "lastUpdateTimeStr":Ljava/lang/String;
    .restart local v3    # "path":Ljava/lang/String;
    :cond_b9
    move-object v0, v3

    .restart local v0    # "folder":Ljava/lang/String;
    goto :goto_a8
.end method

.method public setAllowFileAccessFromFileURLs(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 882
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAllowFileAccessFromFileURLs("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 885
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "allowFileAccess"

    invoke-virtual {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 887
    .local v0, "allow":Z
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v3, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;

    invoke-direct {v3, p0, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Z)V

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 898
    return-void
.end method

.method public setBackButtonState(Ljava/lang/String;)V
    .registers 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2016
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBackButtonState("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2019
    .local v0, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v2, "state"

    invoke-virtual {v0, v2}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2021
    .local v1, "state":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setBackButtonState(Ljava/lang/String;)V

    .line 2022
    return-void
.end method

.method public setForceClose(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2001
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setForceClose("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v1, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2005
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "width"

    invoke-virtual {v1, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2006
    .local v2, "width":Ljava/lang/String;
    const-string v3, "height"

    invoke-virtual {v1, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2008
    .local v0, "hight":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$402(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I

    .line 2009
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$502(Lcom/ironsource/sdk/controller/IronSourceWebView;I)I

    .line 2010
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v4, "position"

    invoke-virtual {v1, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$602(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    .line 2012
    return-void
.end method

.method public setMixedContentAlwaysAllow(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 870
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMixedContentAlwaysAllow("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;

    invoke-direct {v1, p0}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 878
    return-void
.end method

.method public setOrientation(Ljava/lang/String;)V
    .registers 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 1255
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setOrientation("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 1258
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1260
    .local v0, "orientation":Ljava/lang/String;
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v3, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->setOrientationState(Ljava/lang/String;)V

    .line 1261
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/ironsource/environment/DeviceStatus;->getApplicationRotation(Landroid/content/Context;)I

    move-result v1

    .line 1263
    .local v1, "rotation":I
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 1264
    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;

    move-result-object v3

    invoke-interface {v3, v0, v1}, Lcom/ironsource/sdk/listeners/OnWebViewChangeListener;->onOrientationChanged(Ljava/lang/String;I)V

    .line 1266
    :cond_4d
    return-void
.end method

.method public setStoreSearchKeys(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2026
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStoreSearchKeys("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2028
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setSearchKeys(Ljava/lang/String;)V

    .line 2029
    return-void
.end method

.method public setUserData(Ljava/lang/String;)V
    .registers 19
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2302
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setUserData("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2304
    new-instance v15, Lcom/ironsource/sdk/data/SSAObj;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2306
    .local v15, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_43

    .line 2307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const-string v5, "key does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2331
    :goto_42
    return-void

    .line 2311
    :cond_43
    const-string v1, "value"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_59

    .line 2312
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const-string v5, "value does not exist"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 2316
    :cond_59
    const-string v1, "key"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2317
    .local v2, "mKey":Ljava/lang/String;
    const-string v1, "value"

    invoke-virtual {v15, v1}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2319
    .local v3, "mValue":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setUserData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 2321
    .local v13, "result":Z
    if-eqz v13, :cond_9b

    .line 2323
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v0, p1

    invoke-static {v1, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2324
    .local v16, "successFunToCall":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v12

    .line 2325
    .local v12, "params":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    move-object/from16 v0, v16

    invoke-static {v1, v0, v12}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4200(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 2326
    .local v14, "script":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1, v14}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4000(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    goto :goto_42

    .line 2329
    .end local v12    # "params":Ljava/lang/String;
    .end local v14    # "script":Ljava/lang/String;
    .end local v16    # "successFunToCall":Ljava/lang/String;
    :cond_9b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v4, 0x0

    const-string v5, "SetUserData failed writing to shared preferences"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v1, v0, v4, v5, v6}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_42
.end method

.method public setUserUniqueId(Ljava/lang/String;)V
    .registers 11
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2191
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setUserUniqueId("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2195
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v4, "userUniqueId"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-string v4, "productType"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_41

    .line 2196
    :cond_39
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v5, "uniqueId or productType does not exist"

    invoke-static {v4, p1, v8, v5, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2210
    :goto_40
    return-void

    .line 2200
    :cond_41
    const-string v4, "userUniqueId"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2201
    .local v3, "uniqueId":Ljava/lang/String;
    const-string v4, "productType"

    invoke-virtual {v2, v4}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2203
    .local v0, "productType":Ljava/lang/String;
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setUniqueId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 2205
    .local v1, "result":Z
    if-eqz v1, :cond_5e

    .line 2206
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v5, 0x1

    invoke-static {v4, p1, v5, v7, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_40

    .line 2208
    :cond_5e
    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v5, "setUserUniqueId failed"

    invoke-static {v4, p1, v8, v5, v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method public setWebviewBackgroundColor(Ljava/lang/String;)V
    .registers 5
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 2033
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWebviewBackgroundColor("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5900(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;)V

    .line 2036
    return-void
.end method

.method public toggleUDIA(Ljava/lang/String;)V
    .registers 12
    .param p1, "value"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 2040
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "toggleUDIA("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2042
    new-instance v2, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v2, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2045
    .local v2, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    const-string v5, "toggle"

    invoke-virtual {v2, v5}, Lcom/ironsource/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_39

    .line 2046
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v6, "toggle key does not exist"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2076
    :cond_38
    :goto_38
    return-void

    .line 2051
    :cond_39
    const-string v5, "toggle"

    invoke-virtual {v2, v5}, Lcom/ironsource/sdk/data/SSAObj;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2052
    .local v4, "toggleStr":Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2055
    .local v3, "toggle":I
    if-eqz v3, :cond_38

    .line 2060
    invoke-static {v3}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v0

    .line 2062
    .local v0, "binaryToggle":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 2063
    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v6, "fialed to convert toggle"

    invoke-static {v5, p1, v8, v6, v9}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_38

    .line 2068
    :cond_57
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 2071
    .local v1, "binaryToggleArr":[C
    const/4 v5, 0x3

    aget-char v5, v1, v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_6b

    .line 2072
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setShouldRegisterSessions(Z)V

    goto :goto_38

    .line 2074
    :cond_6b
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setShouldRegisterSessions(Z)V

    goto :goto_38
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass1 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$1)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$1;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->initController(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V
    .registers 2
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 749
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_12

    .line 751
    :try_start_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_13

    .line 756
    :cond_12
    :goto_12
    return-void

    .line 752
    :catch_13
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass10 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$10)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$10;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onInitInterstitialSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1651
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$10;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$10;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$10;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onInterstitialInitSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$10;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$10;->val$demandSourceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onAdProductInitSuccess(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/AdUnitsReady;)V

    .line 1655
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass11 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$11)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onInitInterstitialFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1682
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1684
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->val$message:Ljava/lang/String;

    .line 1685
    .local v0, "toSend":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 1686
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 1688
    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterstitialInitFail(message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$11;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onAdProductInitFailed(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1690
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass12 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$12)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->adClicked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$eProductType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

.field final synthetic val$listener:Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;->val$listener:Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;->val$eProductType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;->val$listener:Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;->val$eProductType:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$12;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClick(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 1730
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass13 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$13)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onShowInterstitialSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1754
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v0

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onAdProductOpen(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 1757
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$13;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onInterstitialShowSuccess(Ljava/lang/String;)V

    .line 1758
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass14 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$14)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$14;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onInitOfferWallSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V
    .registers 2
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1776
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$14;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$14;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOfferWallInitSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$14;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOfferwallInitSuccess()V

    .line 1781
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass15 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$15)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$15;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onInitOfferWallFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1805
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$15;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$15;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1807
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$15;->val$message:Ljava/lang/String;

    .line 1808
    .local v0, "toSend":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 1809
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 1811
    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$15;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferWallInitFail(message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$15;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOfferwallInitFail(Ljava/lang/String;)V

    .line 1813
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass16 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$16)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$16;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onLoadInterstitialSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1836
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$16;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$16;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1838
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$16;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$16;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onInterstitialLoadSuccess(Ljava/lang/String;)V

    .line 1839
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass17 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$17)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onLoadInterstitialFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1864
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;->val$message:Ljava/lang/String;

    .line 1867
    .local v0, "toSend":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 1868
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 1870
    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$17;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onInterstitialLoadFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass18 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$18)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onShowInterstitialFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1897
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1899
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;->val$message:Ljava/lang/String;

    .line 1900
    .local v0, "toSend":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 1901
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 1903
    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2500(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$18;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ironsource/sdk/listeners/internals/DSInterstitialListener;->onInterstitialShowFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass19 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$19)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$19;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onGenericFunctionSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V
    .registers 2
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1923
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$19;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$19;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;->onGFSuccess()V

    .line 1926
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass2 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$2)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->setMixedContentAlwaysAllow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V
    .registers 2
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 871
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 873
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_12

    .line 874
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$2;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 876
    :cond_12
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass20 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$20)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$20;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onGenericFunctionFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1944
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$20;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$20;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$20;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$20;->val$message:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnGenericFunctionListener;->onGFFail(Ljava/lang/String;)V

    .line 1947
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass21 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$21)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$21;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onGetUserCreditsFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 2363
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$21;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$21;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2365
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$21;->val$message:Ljava/lang/String;

    .line 2366
    .local v0, "toSend":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 2367
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 2369
    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$21;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onGetOWCreditsFailed(Ljava/lang/String;)V

    .line 2370
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass22 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$22)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onAdWindowsClosed(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 2397
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 2399
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v1, v2, :cond_20

    .line 2400
    :cond_c
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v0

    .line 2401
    .local v0, "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    if-eqz v0, :cond_1f

    .line 2402
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductClose(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;)V

    .line 2407
    .end local v0    # "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    :cond_1f
    :goto_1f
    return-void

    .line 2404
    :cond_20
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v1, v2, :cond_1f

    .line 2405
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$22;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWAdClosed()V

    goto :goto_1f
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass23 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$23)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->postAdEventNotification(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$eventName:Ljava/lang/String;

.field final synthetic val$extData:Lorg/json/JSONObject;

.field final synthetic val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 2472
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$demandSourceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$eventName:Ljava/lang/String;

    iput-object p5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$extData:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 2474
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-eq v1, v2, :cond_c

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v1, v2, :cond_24

    .line 2475
    :cond_c
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$5700(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/data/SSAEnums$ProductType;)Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;

    move-result-object v0

    .line 2476
    .local v0, "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    if-eqz v0, :cond_23

    .line 2477
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$demandSourceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$eventName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$extData:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;->onAdProductEventNotificationReceived(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2482
    .end local v0    # "listener":Lcom/ironsource/sdk/listeners/internals/DSAdProductListener;
    :cond_23
    :goto_23
    return-void

    .line 2479
    :cond_24
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$type:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    if-ne v1, v2, :cond_23

    .line 2480
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$eventName:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$23;->val$extData:Lorg/json/JSONObject;

    invoke-interface {v1, v2, v3}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOfferwallEventNotificationReceived(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_23
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass24 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$24)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->moatAPI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 2516
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 2520
    :try_start_0
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v2, v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moatAPI("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;->val$value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    new-instance v1, Lcom/ironsource/sdk/data/SSAObj;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;->val$value:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 2522
    .local v1, "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v2, v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6400(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/controller/MOATJSAdapter;

    move-result-object v2

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    invoke-direct {v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V

    iget-object v5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v5, v5, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/webkit/WebView;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/sdk/controller/MOATJSAdapter;->call(Ljava/lang/String;Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;Landroid/webkit/WebView;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4b} :catch_4c

    .line 2527
    .end local v1    # "ssaObj":Lcom/ironsource/sdk/data/SSAObj;
    :goto_4b
    return-void

    .line 2523
    :catch_4c
    move-exception v0

    .line 2524
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2525
    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$24;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v2, v2, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moatAPI failed with exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass25 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$25)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$25;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Lcom/ironsource/environment/LocationService$ISLocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->getDevicePreciseLocation(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 2597
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$25;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$25;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v4, 0x0

    .line 2600
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$25;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$25;->val$value:Ljava/lang/String;

    invoke-static {v1, v2, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6600(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;Landroid/location/Location;)Lcom/ironsource/sdk/data/SSAObj;

    move-result-object v0

    .line 2601
    .local v0, "ret":Lcom/ironsource/sdk/data/SSAObj;
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$25;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v4, v4}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2602
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass3 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$3)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->setAllowFileAccessFromFileURLs(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$allow:Z


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Z)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 887
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-boolean p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$allow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 889
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_13

    .line 891
    :try_start_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$3;->val$allow:Z

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_14

    .line 896
    :cond_13
    :goto_13
    return-void

    .line 892
    :catch_14
    move-exception v0

    .line 893
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass4 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$4)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->adUnitsReady(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$product:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Lcom/ironsource/sdk/data/AdUnitsReady;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->val$product:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1102
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

    invoke-virtual {v1}, Lcom/ironsource/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1104
    .local v0, "adUnits":I
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->val$product:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 1106
    if-lez v0, :cond_39

    .line 1107
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRVInitSuccess()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->val$demandSourceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->val$adUnitsReady:Lcom/ironsource/sdk/data/AdUnitsReady;

    invoke-interface {v1, v2, v3, v4}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onAdProductInitSuccess(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Lcom/ironsource/sdk/data/AdUnitsReady;)V

    .line 1116
    :cond_38
    :goto_38
    return-void

    .line 1111
    :cond_39
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$4;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onRVNoMoreOffers(Ljava/lang/String;)V

    goto :goto_38
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass5 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$5)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->adCredited(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$appKey:Ljava/lang/String;

.field final synthetic val$credits:I

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$mMd5Signature:Z

.field final synthetic val$mTotalCreditsFlag:Z

.field final synthetic val$mlatestCompeltionsTime:Ljava/lang/String;

.field final synthetic val$product:Ljava/lang/String;

.field final synthetic val$totalCredits:I

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1412
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$product:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$demandSourceName:Ljava/lang/String;

    iput p4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$credits:I

    iput-boolean p5, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$mMd5Signature:Z

    iput p6, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$totalCredits:I

    iput-boolean p7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$mTotalCreditsFlag:Z

    iput-object p8, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$mlatestCompeltionsTime:Ljava/lang/String;

    iput-object p9, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$appKey:Ljava/lang/String;

    iput-object p10, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$userId:Ljava/lang/String;

    iput-object p11, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1416
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$product:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 1418
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$demandSourceName:Ljava/lang/String;

    iget v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$credits:I

    invoke-interface {v1, v2, v3}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onRVAdCredited(Ljava/lang/String;I)V

    .line 1439
    :cond_1e
    :goto_1e
    return-void

    .line 1420
    :cond_1f
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$product:Ljava/lang/String;

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1422
    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$mMd5Signature:Z

    if-eqz v1, :cond_1e

    .line 1424
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    iget v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$credits:I

    iget v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$totalCredits:I

    iget-boolean v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$mTotalCreditsFlag:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWAdCredited(IIZ)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1426
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$mlatestCompeltionsTime:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1428
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$mlatestCompeltionsTime:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$appKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->setLatestCompeltionsTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1430
    .local v0, "result":Z
    if-eqz v0, :cond_68

    .line 1431
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$value:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v5, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1433
    :cond_68
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$5;->val$value:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Time Stamp could not be stored"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass6 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$6)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onInitRewardedVideoFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1501
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;->val$message:Ljava/lang/String;

    .line 1504
    .local v0, "toSend":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 1505
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 1507
    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRVInitFail(message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$6;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onAdProductInitFailed(Lcom/ironsource/sdk/data/SSAEnums$ProductType;Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass7 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$7)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onShowRewardedVideoFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$demandSourceName:Ljava/lang/String;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1553
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;->val$message:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;->val$demandSourceName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 1555
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;->val$message:Ljava/lang/String;

    .line 1556
    .local v0, "toSend":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 1557
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 1559
    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRVShowFail(message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;->val$message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$2200(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$7;->val$demandSourceName:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/ironsource/sdk/listeners/internals/DSRewardedVideoListener;->onRVShowFail(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass8 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$8)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onShowOfferWallSuccess(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1600
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;->val$placementId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$8;->val$placementId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWShowSuccess(Ljava/lang/String;)V

    .line 1603
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.AnonymousClass9 (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$9)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$9;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->onShowOfferWallFail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 1619
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$9;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$9;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$9;->val$message:Ljava/lang/String;

    .line 1622
    .local v0, "toSend":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 1623
    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    .line 1625
    :cond_6
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$9;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$3000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Lcom/ironsource/sdk/listeners/OnOfferWallListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/listeners/OnOfferWallListener;->onOWShowFail(Ljava/lang/String;)V

    .line 1626
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.JSInterface.JSCallbackTask (com.ironsource.sdk.controller.IronSourceWebView$JSInterface$JSCallbackTask)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "JSCallbackTask"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;)V
    .registers 2
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    .prologue
    .line 2495
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method sendMessage(ZLjava/lang/String;Lcom/ironsource/sdk/data/SSAObj;)V
    .registers 7
    .param p1, "isSuccess"    # Z
    .param p2, "callbackFunction"    # Ljava/lang/String;
    .param p3, "messageData"    # Lcom/ironsource/sdk/data/SSAObj;

    .prologue
    const/4 v2, 0x0

    .line 2509
    if-eqz p1, :cond_16

    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4100()Ljava/lang/String;

    move-result-object v0

    :goto_7
    invoke-virtual {p3, v0, p2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2510
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {p3}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, v2, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2511
    return-void

    .line 2509
    :cond_16
    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6200()Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method sendMessage(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "isSuccess"    # Z
    .param p2, "callbackFunction"    # Ljava/lang/String;
    .param p3, "messageData"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2502
    new-instance v0, Lcom/ironsource/sdk/data/SSAObj;

    invoke-direct {v0}, Lcom/ironsource/sdk/data/SSAObj;-><init>()V

    .line 2503
    .local v0, "res":Lcom/ironsource/sdk/data/SSAObj;
    if-eqz p1, :cond_20

    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4100()Ljava/lang/String;

    move-result-object v1

    :goto_c
    invoke-virtual {v0, v1, p2}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2504
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Lcom/ironsource/sdk/data/SSAObj;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2505
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface$JSCallbackTask;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;

    iget-object v1, v1, Lcom/ironsource/sdk/controller/IronSourceWebView$JSInterface;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/data/SSAObj;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1, v3, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$4500(Lcom/ironsource/sdk/controller/IronSourceWebView;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2506
    return-void

    .line 2503
    :cond_20
    invoke-static {}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$6200()Ljava/lang/String;

    move-result-object v1

    goto :goto_c
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.State (com.ironsource.sdk.controller.IronSourceWebView$State)
.class public final enum Lcom/ironsource/sdk/controller/IronSourceWebView$State;
.super Ljava/lang/Enum;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/sdk/controller/IronSourceWebView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/controller/IronSourceWebView$State;

.field public static final enum Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

.field public static final enum Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4009
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    const-string v1, "Display"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/controller/IronSourceWebView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    .line 4010
    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    const-string v1, "Gone"

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/controller/IronSourceWebView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    .line 4008
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Display:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->Gone:Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->$VALUES:[Lcom/ironsource/sdk/controller/IronSourceWebView$State;

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
    .line 4008
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/controller/IronSourceWebView$State;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4008
    const-class v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/sdk/controller/IronSourceWebView$State;
    .registers 1

    .prologue
    .line 4008
    sget-object v0, Lcom/ironsource/sdk/controller/IronSourceWebView$State;->$VALUES:[Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/controller/IronSourceWebView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/controller/IronSourceWebView$State;

    return-object v0
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.SupersonicWebViewTouchListener (com.ironsource.sdk.controller.IronSourceWebView$SupersonicWebViewTouchListener)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;
.super Ljava/lang/Object;
.source "IronSourceWebView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupersonicWebViewTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .registers 2

    .prologue
    .line 280
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "x1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$1;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 284
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_bd

    .line 286
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 287
    .local v12, "xTouch":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 289
    .local v13, "yTouch":F
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "X:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Y:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    float-to-int v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceWidth()I

    move-result v11

    .line 292
    .local v11, "width":I
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceHeight()I

    move-result v10

    .line 294
    .local v10, "height":I
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$400(Lcom/ironsource/sdk/controller/IronSourceWebView;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->dpToPx(J)I

    move-result v8

    .line 298
    .local v8, "boundsTouchAreaX":I
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$500(Lcom/ironsource/sdk/controller/IronSourceWebView;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/SDKUtils;->dpToPx(J)I

    move-result v9

    .line 299
    .local v9, "boundsTouchAreaY":I
    const/4 v6, 0x0

    .line 300
    .local v6, "actualTouchX":I
    const/4 v7, 0x0

    .line 302
    .local v7, "actualTouchY":I
    const-string v0, "top-right"

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bf

    .line 304
    float-to-int v0, v12

    sub-int v6, v11, v0

    .line 305
    float-to-int v7, v13

    .line 323
    :cond_8f
    :goto_8f
    if-gt v6, v8, :cond_bd

    if-gt v7, v9, :cond_bd

    .line 326
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$702(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    .line 331
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 332
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$800(Lcom/ironsource/sdk/controller/IronSourceWebView;)Landroid/os/CountDownTimer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 335
    :cond_aa
    iget-object v14, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    new-instance v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;JJ)V

    .line 352
    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    .line 335
    invoke-static {v14, v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$802(Lcom/ironsource/sdk/controller/IronSourceWebView;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    .line 356
    .end local v6    # "actualTouchX":I
    .end local v7    # "actualTouchY":I
    .end local v8    # "boundsTouchAreaX":I
    .end local v9    # "boundsTouchAreaY":I
    .end local v10    # "height":I
    .end local v11    # "width":I
    .end local v12    # "xTouch":F
    .end local v13    # "yTouch":F
    :cond_bd
    const/4 v0, 0x0

    return v0

    .line 307
    .restart local v6    # "actualTouchX":I
    .restart local v7    # "actualTouchY":I
    .restart local v8    # "boundsTouchAreaX":I
    .restart local v9    # "boundsTouchAreaY":I
    .restart local v10    # "height":I
    .restart local v11    # "width":I
    .restart local v12    # "xTouch":F
    .restart local v13    # "yTouch":F
    :cond_bf
    const-string v0, "top-left"

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 309
    float-to-int v6, v12

    .line 310
    float-to-int v7, v13

    goto :goto_8f

    .line 312
    :cond_d0
    const-string v0, "bottom-right"

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 314
    float-to-int v0, v12

    sub-int v6, v11, v0

    .line 315
    float-to-int v0, v13

    sub-int v7, v10, v0

    goto :goto_8f

    .line 317
    :cond_e5
    const-string v0, "bottom-left"

    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$600(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 319
    float-to-int v6, v12

    .line 320
    float-to-int v0, v13

    sub-int v7, v10, v0

    goto :goto_8f
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.SupersonicWebViewTouchListener.AnonymousClass1 (com.ironsource.sdk.controller.IronSourceWebView$SupersonicWebViewTouchListener$1)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;
.super Landroid/os/CountDownTimer;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;JJ)V
    .registers 6
    .param p1, "this$1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 335
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 344
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Close Event Timer Finish"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$700(Lcom/ironsource/sdk/controller/IronSourceWebView;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 347
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$702(Lcom/ironsource/sdk/controller/IronSourceWebView;Z)Z

    .line 351
    :goto_1f
    return-void

    .line 349
    :cond_20
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    const-string v1, "forceClose"

    invoke-virtual {v0, v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->engageEnd(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public onTick(J)V
    .registers 6
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 339
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener$1;->this$1:Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;

    iget-object v0, v0, Lcom/ironsource/sdk/controller/IronSourceWebView$SupersonicWebViewTouchListener;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$300(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Close Event Timer Tick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    return-void
.end method

###### Class com.ironsource.sdk.controller.IronSourceWebView.ViewClient (com.ironsource.sdk.controller.IronSourceWebView$ViewClient)
.class Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;
.super Landroid/webkit/WebViewClient;
.source "IronSourceWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/controller/IronSourceWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;


# direct methods
.method private constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V
    .registers 2

    .prologue
    .line 544
    iput-object p1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ironsource/sdk/controller/IronSourceWebView;Lcom/ironsource/sdk/controller/IronSourceWebView$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/ironsource/sdk/controller/IronSourceWebView;
    .param p2, "x1"    # Lcom/ironsource/sdk/controller/IronSourceWebView$1;

    .prologue
    .line 544
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;-><init>(Lcom/ironsource/sdk/controller/IronSourceWebView;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 554
    const-string v0, "onPageFinished"

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v0, "adUnit"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "index.html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 557
    :cond_15
    iget-object v0, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/IronSourceWebView;->pageFinished()V

    .line 559
    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "favicon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 548
    const-string v0, "onPageStarted"

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 550
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 566
    const-string v0, "onReceivedError"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 13
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 589
    const-string v6, "shouldInterceptRequest"

    invoke-static {v6, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const/4 v4, 0x0

    .line 594
    .local v4, "mraidCall":Z
    :try_start_6
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 596
    .local v3, "mUrl":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, "file":Ljava/lang/String;
    const-string v6, "mraid.js"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_14
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_14} :catch_61

    move-result v6

    if-eqz v6, :cond_18

    .line 599
    const/4 v4, 0x1

    .line 605
    .end local v0    # "file":Ljava/lang/String;
    .end local v3    # "mUrl":Ljava/net/URL;
    :cond_18
    :goto_18
    if-eqz v4, :cond_5c

    .line 607
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-static {v7}, Lcom/ironsource/sdk/controller/IronSourceWebView;->access$1000(Lcom/ironsource/sdk/controller/IronSourceWebView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "mraid.js"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "filePath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 613
    .local v5, "mraidFile":Ljava/io/File;
    :try_start_44
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 615
    .local v2, "fis":Ljava/io/FileInputStream;
    new-instance v6, Landroid/webkit/WebResourceResponse;

    const-string v7, "text/javascript"

    const-string v8, "UTF-8"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_5a
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_5a} :catch_5b

    .line 620
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "mraidFile":Ljava/io/File;
    :goto_5a
    return-object v6

    .line 617
    .restart local v1    # "filePath":Ljava/lang/String;
    .restart local v5    # "mraidFile":Ljava/io/File;
    :catch_5b
    move-exception v6

    .line 620
    .end local v1    # "filePath":Ljava/lang/String;
    .end local v5    # "mraidFile":Ljava/io/File;
    :cond_5c
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v6

    goto :goto_5a

    .line 602
    :catch_61
    move-exception v6

    goto :goto_18
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 573
    const-string v1, "shouldOverrideUrlLoading"

    invoke-static {v1, p2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :try_start_5
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1, p2}, Lcom/ironsource/sdk/controller/IronSourceWebView;->handleSearchKeysURLs(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 576
    iget-object v1, p0, Lcom/ironsource/sdk/controller/IronSourceWebView$ViewClient;->this$0:Lcom/ironsource/sdk/controller/IronSourceWebView;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/IronSourceWebView;->interceptedUrlToStore()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_14

    .line 577
    const/4 v1, 0x1

    .line 583
    :goto_13
    return v1

    .line 579
    :catch_14
    move-exception v0

    .line 580
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 583
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    goto :goto_13
.end method
