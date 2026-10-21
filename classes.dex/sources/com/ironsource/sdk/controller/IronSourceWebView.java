package com.ironsource.sdk.controller;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.MutableContextWrapper;
import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.DownloadListener;
import android.webkit.JavascriptInterface;
import android.webkit.WebBackForwardList;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.Toast;
import com.facebook.GraphResponse;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.ironsource.environment.ApplicationContext;
import com.ironsource.environment.ConnectivityService;
import com.ironsource.environment.DeviceStatus;
import com.ironsource.environment.LocationService;
import com.ironsource.environment.UrlHandler;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.constants.LocationConst;
import com.ironsource.sdk.data.AdUnitsReady;
import com.ironsource.sdk.data.AdUnitsState;
import com.ironsource.sdk.data.DemandSource;
import com.ironsource.sdk.data.ProductParameters;
import com.ironsource.sdk.data.SSABCParameters;
import com.ironsource.sdk.data.SSAEnums;
import com.ironsource.sdk.data.SSAFile;
import com.ironsource.sdk.data.SSAObj;
import com.ironsource.sdk.listeners.OnGenericFunctionListener;
import com.ironsource.sdk.listeners.OnOfferWallListener;
import com.ironsource.sdk.listeners.OnWebViewChangeListener;
import com.ironsource.sdk.listeners.internals.DSAdProductListener;
import com.ironsource.sdk.listeners.internals.DSInterstitialListener;
import com.ironsource.sdk.listeners.internals.DSRewardedVideoListener;
import com.ironsource.sdk.precache.DownloadManager;
import com.ironsource.sdk.utils.DeviceProperties;
import com.ironsource.sdk.utils.IronSourceAsyncHttpRequestTask;
import com.ironsource.sdk.utils.IronSourceSharedPrefHelper;
import com.ironsource.sdk.utils.IronSourceStorageUtils;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceWebView extends WebView implements DownloadManager.OnPreCacheCompletion, DownloadListener {
    private final String GENERIC_MESSAGE;
    private String PUB_TAG;
    private String TAG;
    private DownloadManager downloadManager;
    private Boolean isKitkatAndAbove;
    private boolean isRemoveCloseEventHandler;
    private String mCacheDirectory;
    private OnWebViewChangeListener mChangeListener;
    private CountDownTimer mCloseEventTimer;
    private BroadcastReceiver mConnectionReceiver;
    private ArrayList<String> mControllerCommandsQueue;
    private String mControllerKeyPressed;
    private FrameLayout mControllerLayout;
    private SSAEnums.ControllerState mControllerState;
    Context mCurrentActivityContext;
    private View mCustomView;
    private WebChromeClient.CustomViewCallback mCustomViewCallback;
    private FrameLayout mCustomViewContainer;
    private DSInterstitialListener mDSInterstitialListener;
    private DSRewardedVideoListener mDSRewardedVideoListener;
    private DemandSourceManager mDemandSourceManager;
    private boolean mGlobalControllerTimeFinish;
    private CountDownTimer mGlobalControllerTimer;
    private int mHiddenForceCloseHeight;
    private String mHiddenForceCloseLocation;
    private int mHiddenForceCloseWidth;
    private String mISAppKey;
    private String mISUserId;
    private boolean mIsActivityThemeTranslucent;
    private boolean mIsImmersive;
    private CountDownTimer mLoadControllerTimer;
    private MOATJSAdapter mMoatJsAdapter;
    private String mOWAppKey;
    private String mOWCreditsAppKey;
    private boolean mOWCreditsMiss;
    private String mOWCreditsUserId;
    private Map<String, String> mOWExtraParameters;
    private String mOWUserId;
    private boolean mOWmiss;
    private OnGenericFunctionListener mOnGenericFunctionListener;
    private OnOfferWallListener mOnOfferWallListener;
    private String mOrientationState;
    private PermissionsJSAdapter mPermissionsJsAdapter;
    private ProductParametersCollection mProductParametersCollection;
    private String mRVAppKey;
    private String mRVUserId;
    private String mRequestParameters;
    private AdUnitsState mSavedState;
    private Object mSavedStateLocker;
    private State mState;
    Handler mUiHandler;
    private Uri mUri;
    private VideoEventsListener mVideoEventsListener;
    private ChromeClient mWebChromeClient;
    public static int mDebugMode = 0;
    public static String IS_STORE = "is_store";
    public static String IS_STORE_CLOSE = "is_store_close";
    public static String WEBVIEW_TYPE = "webview_type";
    public static String EXTERNAL_URL = "external_url";
    public static String SECONDARY_WEB_VIEW = "secondary_web_view";
    public static int DISPLAY_WEB_VIEW_INTENT = 0;
    public static int OPEN_URL_INTENT = 1;
    public static String APP_IDS = "appIds";
    public static String REQUEST_ID = "requestId";
    public static String IS_INSTALLED = "isInstalled";
    public static String RESULT = "result";
    private static String JSON_KEY_SUCCESS = GraphResponse.SUCCESS_KEY;
    private static String JSON_KEY_FAIL = "fail";

    public enum State {
        Display,
        Gone
    }

    private Map<String, String> getExtraParamsByProduct(SSAEnums.ProductType type) {
        if (type == SSAEnums.ProductType.OfferWall) {
            return this.mOWExtraParameters;
        }
        return null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public IronSourceWebView(Context context, DemandSourceManager demandSourceManager) {
        super(context.getApplicationContext());
        this.TAG = IronSourceWebView.class.getSimpleName();
        this.PUB_TAG = "IronSource";
        this.GENERIC_MESSAGE = "We're sorry, some error occurred. we will investigate it";
        this.mControllerKeyPressed = "interrupt";
        this.mHiddenForceCloseWidth = 50;
        this.mHiddenForceCloseHeight = 50;
        this.mHiddenForceCloseLocation = Constants.ForceClosePosition.TOP_RIGHT;
        this.mControllerState = SSAEnums.ControllerState.None;
        this.isKitkatAndAbove = null;
        this.mSavedStateLocker = new Object();
        this.mIsImmersive = false;
        this.mIsActivityThemeTranslucent = false;
        this.mProductParametersCollection = new ProductParametersCollection();
        this.mConnectionReceiver = new BroadcastReceiver() { // from class: com.ironsource.sdk.controller.IronSourceWebView.7
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                if (IronSourceWebView.this.mControllerState == SSAEnums.ControllerState.Ready) {
                    String networkType = Constants.ParametersKeys.ORIENTATION_NONE;
                    if (ConnectivityService.isConnectedWifi(context2)) {
                        networkType = ConnectivityService.NETWORK_TYPE_WIFI;
                    } else if (ConnectivityService.isConnectedMobile(context2)) {
                        networkType = ConnectivityService.NETWORK_TYPE_3G;
                    }
                    IronSourceWebView.this.deviceStatusChanged(networkType);
                }
            }
        };
        Logger.i(this.TAG, "C'tor");
        this.mControllerCommandsQueue = new ArrayList<>();
        this.mCacheDirectory = initializeCacheDirectory(context.getApplicationContext());
        this.mCurrentActivityContext = context;
        this.mDemandSourceManager = demandSourceManager;
        initLayout(this.mCurrentActivityContext);
        this.mSavedState = new AdUnitsState();
        this.downloadManager = getDownloadManager();
        this.downloadManager.setOnPreCacheCompletion(this);
        this.mWebChromeClient = new ChromeClient();
        setWebViewClient(new ViewClient());
        setWebChromeClient(this.mWebChromeClient);
        setWebViewSettings();
        addJavascriptInterface(createJSInterface(context), Constants.JAVASCRIPT_INTERFACE_NAME);
        setDownloadListener(this);
        setOnTouchListener(new SupersonicWebViewTouchListener());
        this.mUiHandler = createMainThreadHandler();
    }

    JSInterface createJSInterface(Context context) {
        return new JSInterface(context);
    }

    Handler createMainThreadHandler() {
        return new Handler(Looper.getMainLooper());
    }

    DownloadManager getDownloadManager() {
        return DownloadManager.getInstance(this.mCacheDirectory);
    }

    String initializeCacheDirectory(Context context) {
        return IronSourceStorageUtils.initializeCacheDirectory(context.getApplicationContext());
    }

    public void addMoatJSInterface(MOATJSAdapter moatjsAdapter) {
        this.mMoatJsAdapter = moatjsAdapter;
    }

    public void addPermissionsJSInterface(PermissionsJSAdapter permissionsJSAdapter) {
        this.mPermissionsJsAdapter = permissionsJSAdapter;
    }

    public void notifyLifeCycle(String productType, String event) {
        String params = parseToJson(Constants.ParametersKeys.LIFE_CYCLE_EVENT, event, Constants.ParametersKeys.PRODUCT_TYPE, productType, null, null, null, null, null, false);
        String script = generateJSToInject(Constants.JSMethods.ON_NATIVE_LIFE_CYCLE_EVENT, params);
        injectJavascript(script);
    }

    private class SupersonicWebViewTouchListener implements View.OnTouchListener {
        private SupersonicWebViewTouchListener() {
        }

        /* JADX WARN: Type inference failed for: r0v28, types: [com.ironsource.sdk.controller.IronSourceWebView$SupersonicWebViewTouchListener$1] */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v, MotionEvent event) {
            if (event.getAction() == 1) {
                float xTouch = event.getX();
                float yTouch = event.getY();
                Logger.i(IronSourceWebView.this.TAG, "X:" + ((int) xTouch) + " Y:" + ((int) yTouch));
                int width = DeviceStatus.getDeviceWidth();
                int height = DeviceStatus.getDeviceHeight();
                Logger.i(IronSourceWebView.this.TAG, "Width:" + width + " Height:" + height);
                int boundsTouchAreaX = SDKUtils.dpToPx(IronSourceWebView.this.mHiddenForceCloseWidth);
                int boundsTouchAreaY = SDKUtils.dpToPx(IronSourceWebView.this.mHiddenForceCloseHeight);
                int actualTouchX = 0;
                int actualTouchY = 0;
                if (Constants.ForceClosePosition.TOP_RIGHT.equalsIgnoreCase(IronSourceWebView.this.mHiddenForceCloseLocation)) {
                    actualTouchX = width - ((int) xTouch);
                    actualTouchY = (int) yTouch;
                } else if (Constants.ForceClosePosition.TOP_LEFT.equalsIgnoreCase(IronSourceWebView.this.mHiddenForceCloseLocation)) {
                    actualTouchX = (int) xTouch;
                    actualTouchY = (int) yTouch;
                } else if (Constants.ForceClosePosition.BOTTOM_RIGHT.equalsIgnoreCase(IronSourceWebView.this.mHiddenForceCloseLocation)) {
                    actualTouchX = width - ((int) xTouch);
                    actualTouchY = height - ((int) yTouch);
                } else if (Constants.ForceClosePosition.BOTTOM_LEFT.equalsIgnoreCase(IronSourceWebView.this.mHiddenForceCloseLocation)) {
                    actualTouchX = (int) xTouch;
                    actualTouchY = height - ((int) yTouch);
                }
                if (actualTouchX <= boundsTouchAreaX && actualTouchY <= boundsTouchAreaY) {
                    IronSourceWebView.this.isRemoveCloseEventHandler = false;
                    if (IronSourceWebView.this.mCloseEventTimer != null) {
                        IronSourceWebView.this.mCloseEventTimer.cancel();
                    }
                    IronSourceWebView.this.mCloseEventTimer = new CountDownTimer(2000L, 500L) { // from class: com.ironsource.sdk.controller.IronSourceWebView.SupersonicWebViewTouchListener.1
                        @Override // android.os.CountDownTimer
                        public void onTick(long millisUntilFinished) {
                            Logger.i(IronSourceWebView.this.TAG, "Close Event Timer Tick " + millisUntilFinished);
                        }

                        @Override // android.os.CountDownTimer
                        public void onFinish() {
                            Logger.i(IronSourceWebView.this.TAG, "Close Event Timer Finish");
                            if (IronSourceWebView.this.isRemoveCloseEventHandler) {
                                IronSourceWebView.this.isRemoveCloseEventHandler = false;
                            } else {
                                IronSourceWebView.this.engageEnd(Constants.ParametersKeys.FORCE_CLOSE);
                            }
                        }
                    }.start();
                    return false;
                }
                return false;
            }
            return false;
        }
    }

    private void initLayout(Context context) {
        FrameLayout.LayoutParams coverScreenParams = new FrameLayout.LayoutParams(-1, -1);
        this.mControllerLayout = new FrameLayout(context);
        this.mCustomViewContainer = new FrameLayout(context);
        FrameLayout.LayoutParams fp = new FrameLayout.LayoutParams(-1, -1);
        this.mCustomViewContainer.setLayoutParams(fp);
        this.mCustomViewContainer.setVisibility(8);
        FrameLayout mContentView = new FrameLayout(context);
        FrameLayout.LayoutParams lpChild2 = new FrameLayout.LayoutParams(-1, -1);
        mContentView.setLayoutParams(lpChild2);
        mContentView.addView(this);
        this.mControllerLayout.addView(this.mCustomViewContainer, coverScreenParams);
        this.mControllerLayout.addView(mContentView);
    }

    private void setWebViewSettings() {
        WebSettings s = getSettings();
        s.setLoadWithOverviewMode(true);
        s.setUseWideViewPort(true);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                getSettings().setAllowFileAccessFromFileURLs(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        s.setBuiltInZoomControls(false);
        s.setJavaScriptEnabled(true);
        s.setSupportMultipleWindows(true);
        s.setJavaScriptCanOpenWindowsAutomatically(true);
        s.setGeolocationEnabled(true);
        s.setGeolocationDatabasePath("/data/data/org.itri.html5webview/databases/");
        s.setDomStorageEnabled(true);
        try {
            setDisplayZoomControls(s);
            setMediaPlaybackJellyBean(s);
        } catch (Throwable e2) {
            Logger.e(this.TAG, "setWebSettings - " + e2.toString());
        }
    }

    private void setDisplayZoomControls(WebSettings s) {
        if (Build.VERSION.SDK_INT > 11) {
            s.setDisplayZoomControls(false);
        }
    }

    @Override // android.webkit.WebView
    public WebBackForwardList saveState(Bundle outState) {
        return super.saveState(outState);
    }

    @SuppressLint({"NewApi"})
    private void setMediaPlaybackJellyBean(WebSettings s) {
        if (Build.VERSION.SDK_INT >= 17) {
            s.setMediaPlaybackRequiresUserGesture(false);
        }
    }

    @SuppressLint({"NewApi"})
    private void setWebDebuggingEnabled() {
        if (Build.VERSION.SDK_INT >= 19) {
            setWebContentsDebuggingEnabled(true);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.ironsource.sdk.controller.IronSourceWebView$1] */
    public void downloadController() {
        IronSourceStorageUtils.deleteFile(this.mCacheDirectory, "", Constants.MOBILE_CONTROLLER_HTML);
        String controllerUrl = SDKUtils.getControllerUrl();
        SSAFile indexHtml = new SSAFile(controllerUrl, "");
        this.mGlobalControllerTimer = new CountDownTimer(200000L, 1000L) { // from class: com.ironsource.sdk.controller.IronSourceWebView.1
            @Override // android.os.CountDownTimer
            public void onTick(long millisUntilFinished) {
                Logger.i(IronSourceWebView.this.TAG, "Global Controller Timer Tick " + millisUntilFinished);
            }

            @Override // android.os.CountDownTimer
            public void onFinish() {
                Logger.i(IronSourceWebView.this.TAG, "Global Controller Timer Finish");
                IronSourceWebView.this.mGlobalControllerTimeFinish = true;
            }
        }.start();
        if (!this.downloadManager.isMobileControllerThreadLive()) {
            Logger.i(this.TAG, "Download Mobile Controller: " + controllerUrl);
            this.downloadManager.downloadMobileControllerFile(indexHtml);
        } else {
            Logger.i(this.TAG, "Download Mobile Controller: already alive");
        }
    }

    public void setDebugMode(int debugMode) {
        mDebugMode = debugMode;
    }

    public int getDebugMode() {
        return mDebugMode;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean shouldNotifyDeveloper(String product) {
        boolean shouldNotify = false;
        if (TextUtils.isEmpty(product)) {
            Logger.d(this.TAG, "Trying to trigger a listener - no product was found");
            return false;
        }
        if (product.equalsIgnoreCase(SSAEnums.ProductType.Interstitial.toString())) {
            shouldNotify = this.mDSInterstitialListener != null;
        } else if (product.equalsIgnoreCase(SSAEnums.ProductType.RewardedVideo.toString())) {
            shouldNotify = this.mDSRewardedVideoListener != null;
        } else if (product.equalsIgnoreCase(SSAEnums.ProductType.OfferWall.toString()) || product.equalsIgnoreCase(SSAEnums.ProductType.OfferWallCredits.toString())) {
            shouldNotify = this.mOnOfferWallListener != null;
        }
        if (!shouldNotify) {
            Logger.d(this.TAG, "Trying to trigger a listener - no listener was found for product " + product);
        }
        return shouldNotify;
    }

    public void setOrientationState(String orientation) {
        this.mOrientationState = orientation;
    }

    public String getOrientationState() {
        return this.mOrientationState;
    }

    private class ViewClient extends WebViewClient {
        private ViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView view, String url, Bitmap favicon) {
            Logger.i("onPageStarted", url);
            super.onPageStarted(view, url, favicon);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            Logger.i("onPageFinished", url);
            if (url.contains("adUnit") || url.contains("index.html")) {
                IronSourceWebView.this.pageFinished();
            }
            super.onPageFinished(view, url);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            Logger.i("onReceivedError", failingUrl + " " + description);
            super.onReceivedError(view, errorCode, description, failingUrl);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            Logger.i("shouldOverrideUrlLoading", url);
            try {
                if (IronSourceWebView.this.handleSearchKeysURLs(url)) {
                    IronSourceWebView.this.interceptedUrlToStore();
                    return true;
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
            return super.shouldOverrideUrlLoading(view, url);
        }

        @Override // android.webkit.WebViewClient
        public WebResourceResponse shouldInterceptRequest(WebView view, String url) {
            Logger.i("shouldInterceptRequest", url);
            boolean mraidCall = false;
            try {
                URL mUrl = new URL(url);
                String file = mUrl.getFile();
                if (file.contains("mraid.js")) {
                    mraidCall = true;
                }
            } catch (MalformedURLException e) {
            }
            if (mraidCall) {
                String filePath = "file://" + IronSourceWebView.this.mCacheDirectory + File.separator + "mraid.js";
                File mraidFile = new File(filePath);
                try {
                    new FileInputStream(mraidFile);
                    return new WebResourceResponse("text/javascript", DownloadManager.UTF8_CHARSET, getClass().getResourceAsStream(filePath));
                } catch (FileNotFoundException e2) {
                }
            }
            return super.shouldInterceptRequest(view, url);
        }
    }

    private class ChromeClient extends WebChromeClient {
        private ChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView view, boolean isDialog, boolean isUserGesture, Message resultMsg) {
            WebView childView = new WebView(view.getContext());
            childView.setWebChromeClient(this);
            childView.setWebViewClient(new FrameBustWebViewClient());
            WebView.WebViewTransport transport = (WebView.WebViewTransport) resultMsg.obj;
            transport.setWebView(childView);
            resultMsg.sendToTarget();
            Logger.i("onCreateWindow", "onCreateWindow");
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            Logger.i("MyApplication", consoleMessage.message() + " -- From line " + consoleMessage.lineNumber() + " of " + consoleMessage.sourceId());
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
            Logger.i("Test", "onShowCustomView");
            IronSourceWebView.this.setVisibility(8);
            if (IronSourceWebView.this.mCustomView != null) {
                Logger.i("Test", "mCustomView != null");
                callback.onCustomViewHidden();
                return;
            }
            Logger.i("Test", "mCustomView == null");
            IronSourceWebView.this.mCustomViewContainer.addView(view);
            IronSourceWebView.this.mCustomView = view;
            IronSourceWebView.this.mCustomViewCallback = callback;
            IronSourceWebView.this.mCustomViewContainer.setVisibility(0);
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            FrameLayout frameLayout = new FrameLayout(IronSourceWebView.this.getCurrentActivityContext());
            frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            return frameLayout;
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            Logger.i("Test", "onHideCustomView");
            if (IronSourceWebView.this.mCustomView != null) {
                IronSourceWebView.this.mCustomView.setVisibility(8);
                IronSourceWebView.this.mCustomViewContainer.removeView(IronSourceWebView.this.mCustomView);
                IronSourceWebView.this.mCustomView = null;
                IronSourceWebView.this.mCustomViewContainer.setVisibility(8);
                IronSourceWebView.this.mCustomViewCallback.onCustomViewHidden();
                IronSourceWebView.this.setVisibility(0);
            }
        }
    }

    private class FrameBustWebViewClient extends WebViewClient {
        private FrameBustWebViewClient() {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView view, String url) {
            Context ctx = IronSourceWebView.this.getCurrentActivityContext();
            Intent intent = new Intent(ctx, (Class<?>) OpenUrlActivity.class);
            intent.putExtra(IronSourceWebView.EXTERNAL_URL, url);
            intent.putExtra(IronSourceWebView.SECONDARY_WEB_VIEW, false);
            ctx.startActivity(intent);
            return true;
        }
    }

    public class JSInterface {
        volatile int udiaResults = 0;

        public JSInterface(Context context) {
        }

        @JavascriptInterface
        public void initController(String value) {
            Logger.i(IronSourceWebView.this.TAG, "initController(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            if (ssaObj.containsKey(Constants.ParametersKeys.STAGE)) {
                String stage = ssaObj.getString(Constants.ParametersKeys.STAGE);
                if (Constants.ParametersKeys.READY.equalsIgnoreCase(stage)) {
                    handleControllerStageReady();
                } else if (Constants.ParametersKeys.LOADED.equalsIgnoreCase(stage)) {
                    handleControllerStageLoaded();
                } else if (!Constants.ParametersKeys.FAILED.equalsIgnoreCase(stage)) {
                    Logger.i(IronSourceWebView.this.TAG, "No STAGE mentioned! Should not get here!");
                } else {
                    handleControllerStageFailed();
                }
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Build.VERSION.SDK_INT >= 16) {
                            try {
                                IronSourceWebView.this.getSettings().setAllowFileAccessFromFileURLs(false);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        }
                    }
                });
            }
        }

        void handleControllerStageLoaded() {
            IronSourceWebView.this.mControllerState = SSAEnums.ControllerState.Loaded;
        }

        void handleControllerStageReady() {
            IronSourceWebView.this.mControllerState = SSAEnums.ControllerState.Ready;
            IronSourceWebView.this.mGlobalControllerTimer.cancel();
            IronSourceWebView.this.mLoadControllerTimer.cancel();
            IronSourceWebView.this.invokePendingCommands();
            Collection<DemandSource> demandSourcesRV = IronSourceWebView.this.mDemandSourceManager.getDemandSources(SSAEnums.ProductType.RewardedVideo);
            for (DemandSource demandSource : demandSourcesRV) {
                if (demandSource.getDemandSourceInitState() == 1) {
                    IronSourceWebView.this.initRewardedVideo(IronSourceWebView.this.mRVAppKey, IronSourceWebView.this.mRVUserId, demandSource, IronSourceWebView.this.mDSRewardedVideoListener);
                }
            }
            Collection<DemandSource> demandSourcesIS = IronSourceWebView.this.mDemandSourceManager.getDemandSources(SSAEnums.ProductType.Interstitial);
            for (DemandSource demandSource2 : demandSourcesIS) {
                if (demandSource2.getDemandSourceInitState() == 1) {
                    IronSourceWebView.this.initInterstitial(IronSourceWebView.this.mISAppKey, IronSourceWebView.this.mISUserId, demandSource2, IronSourceWebView.this.mDSInterstitialListener);
                }
            }
            if (IronSourceWebView.this.mOWmiss) {
                IronSourceWebView.this.initOfferWall(IronSourceWebView.this.mOWAppKey, IronSourceWebView.this.mOWUserId, IronSourceWebView.this.mOWExtraParameters, IronSourceWebView.this.mOnOfferWallListener);
            }
            if (IronSourceWebView.this.mOWCreditsMiss) {
                IronSourceWebView.this.getOfferWallCredits(IronSourceWebView.this.mOWCreditsAppKey, IronSourceWebView.this.mOWCreditsUserId, IronSourceWebView.this.mOnOfferWallListener);
            }
            IronSourceWebView.this.restoreState(IronSourceWebView.this.mSavedState);
        }

        void handleControllerStageFailed() {
            IronSourceWebView.this.mControllerState = SSAEnums.ControllerState.Failed;
            Collection<DemandSource> demandSources = IronSourceWebView.this.mDemandSourceManager.getDemandSources(SSAEnums.ProductType.RewardedVideo);
            for (DemandSource demandSource : demandSources) {
                if (demandSource.getDemandSourceInitState() == 1) {
                    IronSourceWebView.this.sendProductErrorMessage(SSAEnums.ProductType.RewardedVideo, demandSource.getDemandSourceName());
                }
            }
            Collection<DemandSource> demandSources2 = IronSourceWebView.this.mDemandSourceManager.getDemandSources(SSAEnums.ProductType.Interstitial);
            for (DemandSource demandSource2 : demandSources2) {
                if (demandSource2.getDemandSourceInitState() == 1) {
                    IronSourceWebView.this.sendProductErrorMessage(SSAEnums.ProductType.Interstitial, demandSource2.getDemandSourceName());
                }
            }
            if (IronSourceWebView.this.mOWmiss) {
                IronSourceWebView.this.sendProductErrorMessage(SSAEnums.ProductType.OfferWall, null);
            }
            if (IronSourceWebView.this.mOWCreditsMiss) {
                IronSourceWebView.this.sendProductErrorMessage(SSAEnums.ProductType.OfferWallCredits, null);
            }
        }

        @JavascriptInterface
        public void alert(String message) {
        }

        @JavascriptInterface
        public void getDeviceStatus(String value) {
            Logger.i(IronSourceWebView.this.TAG, "getDeviceStatus(" + value + ")");
            String successFunToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
            String failFunToCall = IronSourceWebView.this.extractFailFunctionToCall(value);
            Object[] objArr = new Object[2];
            Object[] resultArr = IronSourceWebView.this.getDeviceParams(IronSourceWebView.this.getContext());
            String params = (String) resultArr[0];
            boolean failed = ((Boolean) resultArr[1]).booleanValue();
            String funToCall = null;
            if (failed) {
                if (!TextUtils.isEmpty(failFunToCall)) {
                    funToCall = failFunToCall;
                }
            } else if (!TextUtils.isEmpty(successFunToCall)) {
                funToCall = successFunToCall;
            }
            if (!TextUtils.isEmpty(funToCall)) {
                String script = IronSourceWebView.this.generateJSToInject(funToCall, params, Constants.JSMethods.ON_GET_DEVICE_STATUS_SUCCESS, Constants.JSMethods.ON_GET_DEVICE_STATUS_FAIL);
                IronSourceWebView.this.injectJavascript(script);
            }
        }

        @JavascriptInterface
        public void setMixedContentAlwaysAllow(String value) {
            Logger.i(IronSourceWebView.this.TAG, "setMixedContentAlwaysAllow(" + value + ")");
            IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.2
                @Override // java.lang.Runnable
                public void run() {
                    if (Build.VERSION.SDK_INT >= 21) {
                        IronSourceWebView.this.getSettings().setMixedContentMode(0);
                    }
                }
            });
        }

        @JavascriptInterface
        public void setAllowFileAccessFromFileURLs(String value) {
            Logger.i(IronSourceWebView.this.TAG, "setAllowFileAccessFromFileURLs(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            final boolean allow = ssaObj.getBoolean(Constants.ParametersKeys.ALLOW_FILE_ACCESS);
            IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.3
                @Override // java.lang.Runnable
                public void run() {
                    if (Build.VERSION.SDK_INT >= 16) {
                        try {
                            IronSourceWebView.this.getSettings().setAllowFileAccessFromFileURLs(allow);
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
            });
        }

        @JavascriptInterface
        public void getControllerConfig(String value) {
            Logger.i(IronSourceWebView.this.TAG, "getControllerConfig(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            String successFunToCall = ssaObj.getString(IronSourceWebView.JSON_KEY_SUCCESS);
            if (!TextUtils.isEmpty(successFunToCall)) {
                String params = SDKUtils.getControllerConfig();
                String testerParameters = SDKUtils.getTesterParameters();
                if (areTesterParametersValid(testerParameters)) {
                    try {
                        params = addTesterParametersToConfig(params, testerParameters);
                    } catch (JSONException e) {
                        Logger.d(IronSourceWebView.this.TAG, "getControllerConfig Error while parsing Tester AB Group parameters");
                    }
                }
                String script = IronSourceWebView.this.generateJSToInject(successFunToCall, params);
                IronSourceWebView.this.injectJavascript(script);
            }
        }

        @JavascriptInterface
        public String addTesterParametersToConfig(String originalConfiguration, String testerParameters) throws JSONException {
            JSONObject config = new JSONObject(originalConfiguration);
            JSONObject testerParams = new JSONObject(testerParameters);
            config.putOpt("testerABGroup", testerParams.get("testerABGroup"));
            config.putOpt("testFriendlyName", testerParams.get("testFriendlyName"));
            return config.toString();
        }

        @JavascriptInterface
        public boolean areTesterParametersValid(String testerParameters) {
            if (!TextUtils.isEmpty(testerParameters) && !testerParameters.contains("-1")) {
                try {
                    JSONObject testerParams = new JSONObject(testerParameters);
                    if (!testerParams.getString("testerABGroup").isEmpty()) {
                        if (!testerParams.getString("testFriendlyName").isEmpty()) {
                            return true;
                        }
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            return false;
        }

        @JavascriptInterface
        public void getApplicationInfo(String value) {
            Logger.i(IronSourceWebView.this.TAG, "getApplicationInfo(" + value + ")");
            String successFunToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
            String failFunToCall = IronSourceWebView.this.extractFailFunctionToCall(value);
            SSAObj ssaObj = new SSAObj(value);
            String product = ssaObj.getString(Constants.ParametersKeys.PRODUCT_TYPE);
            String demandSourceName = ssaObj.getString("demandSourceName");
            String funToCall = null;
            Object[] objArr = new Object[2];
            Object[] resultArr = IronSourceWebView.this.getApplicationParams(product, demandSourceName);
            String params = (String) resultArr[0];
            boolean failed = ((Boolean) resultArr[1]).booleanValue();
            if (failed) {
                if (!TextUtils.isEmpty(failFunToCall)) {
                    funToCall = failFunToCall;
                }
            } else if (!TextUtils.isEmpty(successFunToCall)) {
                funToCall = successFunToCall;
            }
            if (!TextUtils.isEmpty(funToCall)) {
                String script = IronSourceWebView.this.generateJSToInject(funToCall, params, Constants.JSMethods.ON_GET_APPLICATION_INFO_SUCCESS, Constants.JSMethods.ON_GET_APPLICATION_INFO_FAIL);
                IronSourceWebView.this.injectJavascript(script);
            }
        }

        @JavascriptInterface
        public void checkInstalledApps(String value) {
            Logger.i(IronSourceWebView.this.TAG, "checkInstalledApps(" + value + ")");
            String successFunToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
            String failFunToCall = IronSourceWebView.this.extractFailFunctionToCall(value);
            String funToCall = null;
            SSAObj ssaObj = new SSAObj(value);
            String appIdsString = ssaObj.getString(IronSourceWebView.APP_IDS);
            String requestIdString = ssaObj.getString(IronSourceWebView.REQUEST_ID);
            Object[] resultArr = IronSourceWebView.this.getAppsStatus(appIdsString, requestIdString);
            String params = (String) resultArr[0];
            boolean failed = ((Boolean) resultArr[1]).booleanValue();
            if (failed) {
                if (!TextUtils.isEmpty(failFunToCall)) {
                    funToCall = failFunToCall;
                }
            } else if (!TextUtils.isEmpty(successFunToCall)) {
                funToCall = successFunToCall;
            }
            if (!TextUtils.isEmpty(funToCall)) {
                String script = IronSourceWebView.this.generateJSToInject(funToCall, params, Constants.JSMethods.ON_CHECK_INSTALLED_APPS_SUCCESS, Constants.JSMethods.ON_CHECK_INSTALLED_APPS_FAIL);
                IronSourceWebView.this.injectJavascript(script);
            }
        }

        @JavascriptInterface
        public void saveFile(String value) {
            String folder;
            Logger.i(IronSourceWebView.this.TAG, "saveFile(" + value + ")");
            SSAFile ssaFile = new SSAFile(value);
            if (DeviceStatus.getAvailableMemorySizeInMegaBytes(IronSourceWebView.this.mCacheDirectory) <= 0) {
                IronSourceWebView.this.responseBack(value, false, DownloadManager.NO_DISK_SPACE, null);
                return;
            }
            if (!SDKUtils.isExternalStorageAvailable()) {
                IronSourceWebView.this.responseBack(value, false, DownloadManager.STORAGE_UNAVAILABLE, null);
                return;
            }
            if (IronSourceStorageUtils.isFileCached(IronSourceWebView.this.mCacheDirectory, ssaFile)) {
                IronSourceWebView.this.responseBack(value, false, DownloadManager.FILE_ALREADY_EXIST, null);
                return;
            }
            if (!ConnectivityService.isConnected(IronSourceWebView.this.getContext())) {
                IronSourceWebView.this.responseBack(value, false, DownloadManager.NO_NETWORK_CONNECTION, null);
                return;
            }
            IronSourceWebView.this.responseBack(value, true, null, null);
            String lastUpdateTimeObj = ssaFile.getLastUpdateTime();
            if (lastUpdateTimeObj != null) {
                String lastUpdateTimeStr = String.valueOf(lastUpdateTimeObj);
                if (!TextUtils.isEmpty(lastUpdateTimeStr)) {
                    String path = ssaFile.getPath();
                    if (path.contains("/")) {
                        String[] splitArr = ssaFile.getPath().split("/");
                        folder = splitArr[splitArr.length - 1];
                    } else {
                        folder = path;
                    }
                    IronSourceSharedPrefHelper.getSupersonicPrefHelper().setCampaignLastUpdate(folder, lastUpdateTimeStr);
                }
            }
            IronSourceWebView.this.downloadManager.downloadFile(ssaFile);
        }

        @JavascriptInterface
        public void adUnitsReady(String value) {
            Logger.i(IronSourceWebView.this.TAG, "adUnitsReady(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            final AdUnitsReady adUnitsReady = new AdUnitsReady(value);
            if (!adUnitsReady.isNumOfAdUnitsExist()) {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.NUM_OF_AD_UNITS_DO_NOT_EXIST, null);
                return;
            }
            IronSourceWebView.this.responseBack(value, true, null, null);
            final String product = adUnitsReady.getProductType();
            if (IronSourceWebView.this.shouldNotifyDeveloper(product)) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.4
                    @Override // java.lang.Runnable
                    public void run() {
                        int adUnits = Integer.parseInt(adUnitsReady.getNumOfAdUnits());
                        if (product.equalsIgnoreCase(SSAEnums.ProductType.RewardedVideo.toString())) {
                            if (adUnits > 0) {
                                Log.d(IronSourceWebView.this.TAG, "onRVInitSuccess()");
                                IronSourceWebView.this.mDSRewardedVideoListener.onAdProductInitSuccess(SSAEnums.ProductType.RewardedVideo, demandSourceName, adUnitsReady);
                            } else {
                                IronSourceWebView.this.mDSRewardedVideoListener.onRVNoMoreOffers(demandSourceName);
                            }
                        }
                    }
                });
            }
        }

        @JavascriptInterface
        public void deleteFolder(String value) {
            Logger.i(IronSourceWebView.this.TAG, "deleteFolder(" + value + ")");
            SSAFile file = new SSAFile(value);
            if (!IronSourceStorageUtils.isPathExist(IronSourceWebView.this.mCacheDirectory, file.getPath())) {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.FOLDER_NOT_EXIST_MSG, "1");
            } else {
                boolean result = IronSourceStorageUtils.deleteFolder(IronSourceWebView.this.mCacheDirectory, file.getPath());
                IronSourceWebView.this.responseBack(value, result, null, null);
            }
        }

        @JavascriptInterface
        public void deleteFile(String value) {
            Logger.i(IronSourceWebView.this.TAG, "deleteFile(" + value + ")");
            SSAFile file = new SSAFile(value);
            if (!IronSourceStorageUtils.isPathExist(IronSourceWebView.this.mCacheDirectory, file.getPath())) {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.FILE_NOT_EXIST_MSG, "1");
            } else {
                boolean result = IronSourceStorageUtils.deleteFile(IronSourceWebView.this.mCacheDirectory, file.getPath(), file.getFile());
                IronSourceWebView.this.responseBack(value, result, null, null);
            }
        }

        @JavascriptInterface
        public void displayWebView(String value) {
            Intent intent;
            Logger.i(IronSourceWebView.this.TAG, "displayWebView(" + value + ")");
            IronSourceWebView.this.responseBack(value, true, null, null);
            SSAObj ssaObj = new SSAObj(value);
            boolean display = ((Boolean) ssaObj.get("display")).booleanValue();
            String productType = ssaObj.getString(Constants.ParametersKeys.PRODUCT_TYPE);
            boolean isStandaloneView = ssaObj.getBoolean(Constants.ParametersKeys.IS_STANDALONE_VIEW);
            String demandSourceName = ssaObj.getString("demandSourceName");
            boolean isRewardedVideo = false;
            if (display) {
                IronSourceWebView.this.mIsImmersive = ssaObj.getBoolean(Constants.ParametersKeys.IMMERSIVE);
                IronSourceWebView.this.mIsActivityThemeTranslucent = ssaObj.getBoolean(Constants.ParametersKeys.ACTIVITY_THEME_TRANSLUCENT);
                if (IronSourceWebView.this.getState() == State.Display) {
                    Logger.i(IronSourceWebView.this.TAG, "State: " + IronSourceWebView.this.mState);
                    return;
                }
                IronSourceWebView.this.setState(State.Display);
                Logger.i(IronSourceWebView.this.TAG, "State: " + IronSourceWebView.this.mState);
                Context context = IronSourceWebView.this.getCurrentActivityContext();
                String orientation = IronSourceWebView.this.getOrientationState();
                int rotation = DeviceStatus.getApplicationRotation(context);
                if (!isStandaloneView) {
                    if (IronSourceWebView.this.mIsActivityThemeTranslucent) {
                        intent = new Intent(context, (Class<?>) InterstitialActivity.class);
                    } else {
                        intent = new Intent(context, (Class<?>) ControllerActivity.class);
                    }
                    if (SSAEnums.ProductType.RewardedVideo.toString().equalsIgnoreCase(productType)) {
                        if (Constants.ParametersKeys.ORIENTATION_APPLICATION.equals(orientation)) {
                            orientation = SDKUtils.translateRequestedOrientation(DeviceStatus.getActivityRequestedOrientation(IronSourceWebView.this.getCurrentActivityContext()));
                        }
                        isRewardedVideo = true;
                        intent.putExtra(Constants.ParametersKeys.PRODUCT_TYPE, SSAEnums.ProductType.RewardedVideo.toString());
                        IronSourceWebView.this.mSavedState.adOpened(SSAEnums.ProductType.RewardedVideo.ordinal());
                        IronSourceWebView.this.mSavedState.setDisplayedDemandSourceName(demandSourceName);
                    } else if (SSAEnums.ProductType.OfferWall.toString().equalsIgnoreCase(productType)) {
                        intent.putExtra(Constants.ParametersKeys.PRODUCT_TYPE, SSAEnums.ProductType.OfferWall.toString());
                        IronSourceWebView.this.mSavedState.adOpened(SSAEnums.ProductType.OfferWall.ordinal());
                    } else if (SSAEnums.ProductType.Interstitial.toString().equalsIgnoreCase(productType) && Constants.ParametersKeys.ORIENTATION_APPLICATION.equals(orientation)) {
                        orientation = SDKUtils.translateRequestedOrientation(DeviceStatus.getActivityRequestedOrientation(IronSourceWebView.this.getCurrentActivityContext()));
                    }
                    if (isRewardedVideo && IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.RewardedVideo.toString())) {
                        IronSourceWebView.this.mDSRewardedVideoListener.onAdProductOpen(SSAEnums.ProductType.RewardedVideo, demandSourceName);
                    }
                    intent.setFlags(536870912);
                    intent.putExtra(Constants.ParametersKeys.IMMERSIVE, IronSourceWebView.this.mIsImmersive);
                    intent.putExtra(Constants.ParametersKeys.ORIENTATION_SET_FLAG, orientation);
                    intent.putExtra(Constants.ParametersKeys.ROTATION_SET_FLAG, rotation);
                    context.startActivity(intent);
                    return;
                }
                ControllerView controllerView = new ControllerView(context);
                controllerView.addView(IronSourceWebView.this.mControllerLayout);
                controllerView.showInterstitial(IronSourceWebView.this);
                return;
            }
            IronSourceWebView.this.setState(State.Gone);
            IronSourceWebView.this.closeWebView();
        }

        @JavascriptInterface
        public void getOrientation(String value) {
            String funToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
            String params = SDKUtils.getOrientation(IronSourceWebView.this.getCurrentActivityContext()).toString();
            if (!TextUtils.isEmpty(funToCall)) {
                String script = IronSourceWebView.this.generateJSToInject(funToCall, params, Constants.JSMethods.ON_GET_ORIENTATION_SUCCESS, Constants.JSMethods.ON_GET_ORIENTATION_FAIL);
                IronSourceWebView.this.injectJavascript(script);
            }
        }

        @JavascriptInterface
        public void setOrientation(String value) {
            Logger.i(IronSourceWebView.this.TAG, "setOrientation(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            String orientation = ssaObj.getString("orientation");
            IronSourceWebView.this.setOrientationState(orientation);
            int rotation = DeviceStatus.getApplicationRotation(IronSourceWebView.this.getCurrentActivityContext());
            if (IronSourceWebView.this.mChangeListener != null) {
                IronSourceWebView.this.mChangeListener.onOrientationChanged(orientation, rotation);
            }
        }

        @JavascriptInterface
        public void getCachedFilesMap(String value) {
            Logger.i(IronSourceWebView.this.TAG, "getCachedFilesMap(" + value + ")");
            String funToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
            if (!TextUtils.isEmpty(funToCall)) {
                SSAObj ssaObj = new SSAObj(value);
                if (!ssaObj.containsKey("path")) {
                    IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.PATH_KEY_DOES_NOT_EXIST, null);
                    return;
                }
                String mapPath = (String) ssaObj.get("path");
                if (!IronSourceStorageUtils.isPathExist(IronSourceWebView.this.mCacheDirectory, mapPath)) {
                    IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.PATH_FILE_DOES_NOT_EXIST_ON_DISK, null);
                    return;
                }
                String fileSystmeMap = IronSourceStorageUtils.getCachedFilesMap(IronSourceWebView.this.mCacheDirectory, mapPath);
                String script = IronSourceWebView.this.generateJSToInject(funToCall, fileSystmeMap, Constants.JSMethods.ON_GET_CACHED_FILES_MAP_SUCCESS, Constants.JSMethods.ON_GET_CACHED_FILES_MAP_FAIL);
                IronSourceWebView.this.injectJavascript(script);
            }
        }

        private void callJavaScriptFunction(String funToCall, String params) {
            if (!TextUtils.isEmpty(funToCall)) {
                String script = IronSourceWebView.this.generateJSToInject(funToCall, params);
                IronSourceWebView.this.injectJavascript(script);
            }
        }

        @JavascriptInterface
        public void getDemandSourceState(String value) {
            String funToCall;
            Logger.i(IronSourceWebView.this.TAG, "getMediationState(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            String demandSourceName = ssaObj.getString("demandSourceName");
            String product = ssaObj.getString(Constants.ParametersKeys.PRODUCT_TYPE);
            if (product != null && demandSourceName != null) {
                try {
                    SSAEnums.ProductType productType = SDKUtils.getProductType(product);
                    if (productType != null) {
                        DemandSource demandSource = IronSourceWebView.this.mDemandSourceManager.getDemandSourceByName(productType, demandSourceName);
                        JSONObject obj = new JSONObject();
                        obj.put(Constants.ParametersKeys.PRODUCT_TYPE, product);
                        obj.put("demandSourceName", demandSourceName);
                        if (demandSource == null || demandSource.isMediationState(-1)) {
                            funToCall = IronSourceWebView.this.extractFailFunctionToCall(value);
                        } else {
                            funToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
                            obj.put("state", demandSource.getMediationState());
                        }
                        callJavaScriptFunction(funToCall, obj.toString());
                    }
                } catch (Exception ex) {
                    IronSourceWebView.this.responseBack(value, false, ex.getMessage(), null);
                    ex.printStackTrace();
                }
            }
        }

        @JavascriptInterface
        public void adCredited(final String value) {
            final String appKey;
            final String userId;
            Log.d(IronSourceWebView.this.PUB_TAG, "adCredited(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            String creditsStr = ssaObj.getString(Constants.ParametersKeys.CREDITS);
            final int credits = creditsStr != null ? Integer.parseInt(creditsStr) : 0;
            String totalCreditsStr = ssaObj.getString(Constants.ParametersKeys.TOTAL);
            final int totalCredits = totalCreditsStr != null ? Integer.parseInt(totalCreditsStr) : 0;
            final String demandSourceName = ssaObj.getString("demandSourceName");
            final String product = ssaObj.getString(Constants.ParametersKeys.PRODUCT_TYPE);
            boolean isExternalPoll = ssaObj.getBoolean("externalPoll");
            boolean totalCreditsFlag = false;
            String latestCompeltionsTime = null;
            boolean md5Signature = false;
            if (isExternalPoll) {
                appKey = IronSourceWebView.this.mOWCreditsAppKey;
                userId = IronSourceWebView.this.mOWCreditsUserId;
            } else {
                appKey = IronSourceWebView.this.mOWAppKey;
                userId = IronSourceWebView.this.mOWUserId;
            }
            if (product.equalsIgnoreCase(SSAEnums.ProductType.OfferWall.toString())) {
                if (ssaObj.isNull(InAppPurchaseMetaData.KEY_SIGNATURE) || ssaObj.isNull(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP) || ssaObj.isNull("totalCreditsFlag")) {
                    IronSourceWebView.this.responseBack(value, false, "One of the keys are missing: signature/timestamp/totalCreditsFlag", null);
                    return;
                }
                String controllerMD5 = ssaObj.getString(InAppPurchaseMetaData.KEY_SIGNATURE);
                StringBuilder sig = new StringBuilder().append(totalCreditsStr).append(appKey).append(userId);
                String localMD5 = SDKUtils.getMD5(sig.toString());
                if (!controllerMD5.equalsIgnoreCase(localMD5)) {
                    IronSourceWebView.this.responseBack(value, false, "Controller signature is not equal to SDK signature", null);
                } else {
                    md5Signature = true;
                }
                totalCreditsFlag = ssaObj.getBoolean("totalCreditsFlag");
                latestCompeltionsTime = ssaObj.getString(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP);
            }
            if (IronSourceWebView.this.shouldNotifyDeveloper(product)) {
                final boolean mTotalCreditsFlag = totalCreditsFlag;
                final String mlatestCompeltionsTime = latestCompeltionsTime;
                final boolean mMd5Signature = md5Signature;
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.5
                    @Override // java.lang.Runnable
                    public void run() {
                        if (product.equalsIgnoreCase(SSAEnums.ProductType.RewardedVideo.toString())) {
                            IronSourceWebView.this.mDSRewardedVideoListener.onRVAdCredited(demandSourceName, credits);
                            return;
                        }
                        if (product.equalsIgnoreCase(SSAEnums.ProductType.OfferWall.toString()) && mMd5Signature && IronSourceWebView.this.mOnOfferWallListener.onOWAdCredited(credits, totalCredits, mTotalCreditsFlag) && !TextUtils.isEmpty(mlatestCompeltionsTime)) {
                            boolean result = IronSourceSharedPrefHelper.getSupersonicPrefHelper().setLatestCompeltionsTime(mlatestCompeltionsTime, appKey, userId);
                            if (result) {
                                IronSourceWebView.this.responseBack(value, true, null, null);
                            } else {
                                IronSourceWebView.this.responseBack(value, false, "Time Stamp could not be stored", null);
                            }
                        }
                    }
                });
            }
        }

        @JavascriptInterface
        public void removeCloseEventHandler(String value) {
            Logger.i(IronSourceWebView.this.TAG, "removeCloseEventHandler(" + value + ")");
            if (IronSourceWebView.this.mCloseEventTimer != null) {
                IronSourceWebView.this.mCloseEventTimer.cancel();
            }
            IronSourceWebView.this.isRemoveCloseEventHandler = true;
        }

        @JavascriptInterface
        public void onGetDeviceStatusSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetDeviceStatusSuccess(" + value + ")");
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_GET_DEVICE_STATUS_SUCCESS, value);
        }

        @JavascriptInterface
        public void onGetDeviceStatusFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetDeviceStatusFail(" + value + ")");
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_GET_DEVICE_STATUS_FAIL, value);
        }

        @JavascriptInterface
        public void onInitRewardedVideoSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onInitRewardedVideoSuccess(" + value + ")");
            SSABCParameters ssaBCParameters = new SSABCParameters(value);
            IronSourceSharedPrefHelper.getSupersonicPrefHelper().setSSABCParameters(ssaBCParameters);
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_INIT_REWARDED_VIDEO_SUCCESS, value);
        }

        @JavascriptInterface
        public void onInitRewardedVideoFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onInitRewardedVideoFail(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            final String message = ssaObj.getString(Constants.ParametersKeys.ERR_MSG);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            DemandSource demandSource = IronSourceWebView.this.mDemandSourceManager.getDemandSourceByName(SSAEnums.ProductType.RewardedVideo, demandSourceName);
            if (demandSource != null) {
                demandSource.setDemandSourceInitState(3);
            }
            if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.RewardedVideo.toString())) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.6
                    @Override // java.lang.Runnable
                    public void run() {
                        String toSend = message;
                        if (toSend == null) {
                            toSend = "We're sorry, some error occurred. we will investigate it";
                        }
                        Log.d(IronSourceWebView.this.TAG, "onRVInitFail(message:" + toSend + ")");
                        IronSourceWebView.this.mDSRewardedVideoListener.onAdProductInitFailed(SSAEnums.ProductType.RewardedVideo, demandSourceName, toSend);
                    }
                });
            }
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_INIT_REWARDED_VIDEO_FAIL, value);
        }

        @JavascriptInterface
        public void onGetApplicationInfoSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetApplicationInfoSuccess(" + value + ")");
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_GET_APPLICATION_INFO_SUCCESS, value);
        }

        @JavascriptInterface
        public void onGetApplicationInfoFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetApplicationInfoFail(" + value + ")");
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_GET_APPLICATION_INFO_FAIL, value);
        }

        @JavascriptInterface
        public void onShowRewardedVideoSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onShowRewardedVideoSuccess(" + value + ")");
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_SHOW_REWARDED_VIDEO_SUCCESS, value);
        }

        @JavascriptInterface
        public void onShowRewardedVideoFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onShowRewardedVideoFail(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            final String message = ssaObj.getString(Constants.ParametersKeys.ERR_MSG);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.RewardedVideo.toString())) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.7
                    @Override // java.lang.Runnable
                    public void run() {
                        String toSend = message;
                        if (toSend == null) {
                            toSend = "We're sorry, some error occurred. we will investigate it";
                        }
                        Log.d(IronSourceWebView.this.TAG, "onRVShowFail(message:" + message + ")");
                        IronSourceWebView.this.mDSRewardedVideoListener.onRVShowFail(demandSourceName, toSend);
                    }
                });
            }
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_SHOW_REWARDED_VIDEO_FAIL, value);
        }

        @JavascriptInterface
        public void onGetCachedFilesMapSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetCachedFilesMapSuccess(" + value + ")");
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_GET_CACHED_FILES_MAP_SUCCESS, value);
        }

        @JavascriptInterface
        public void onGetCachedFilesMapFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetCachedFilesMapFail(" + value + ")");
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_GET_CACHED_FILES_MAP_FAIL, value);
        }

        @JavascriptInterface
        public void onShowOfferWallSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onShowOfferWallSuccess(" + value + ")");
            IronSourceWebView.this.mSavedState.adOpened(SSAEnums.ProductType.OfferWall.ordinal());
            final String placementId = SDKUtils.getValueFromJsonObject(value, "placementId");
            if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.OfferWall.toString())) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.8
                    @Override // java.lang.Runnable
                    public void run() {
                        IronSourceWebView.this.mOnOfferWallListener.onOWShowSuccess(placementId);
                    }
                });
            }
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_SHOW_OFFER_WALL_SUCCESS, value);
        }

        @JavascriptInterface
        public void onShowOfferWallFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onShowOfferWallFail(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            final String message = ssaObj.getString(Constants.ParametersKeys.ERR_MSG);
            if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.OfferWall.toString())) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.9
                    @Override // java.lang.Runnable
                    public void run() {
                        String toSend = message;
                        if (toSend == null) {
                            toSend = "We're sorry, some error occurred. we will investigate it";
                        }
                        IronSourceWebView.this.mOnOfferWallListener.onOWShowFail(toSend);
                    }
                });
            }
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_SHOW_OFFER_WALL_FAIL, value);
        }

        @JavascriptInterface
        public void onInitInterstitialSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onInitInterstitialSuccess()");
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_INIT_INTERSTITIAL_SUCCESS, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            SSAObj ssaObj = new SSAObj(value);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            if (TextUtils.isEmpty(demandSourceName)) {
                Logger.i(IronSourceWebView.this.TAG, "onInitInterstitialSuccess failed with no demand source");
            } else if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.Interstitial.toString())) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.10
                    @Override // java.lang.Runnable
                    public void run() {
                        Log.d(IronSourceWebView.this.TAG, "onInterstitialInitSuccess()");
                        IronSourceWebView.this.mDSInterstitialListener.onAdProductInitSuccess(SSAEnums.ProductType.Interstitial, demandSourceName, null);
                    }
                });
            }
        }

        @JavascriptInterface
        public void onInitInterstitialFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onInitInterstitialFail(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            final String message = ssaObj.getString(Constants.ParametersKeys.ERR_MSG);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            if (TextUtils.isEmpty(demandSourceName)) {
                Logger.i(IronSourceWebView.this.TAG, "onInitInterstitialSuccess failed with no demand source");
                return;
            }
            DemandSource demandSource = IronSourceWebView.this.mDemandSourceManager.getDemandSourceByName(SSAEnums.ProductType.Interstitial, demandSourceName);
            if (demandSource != null) {
                demandSource.setDemandSourceInitState(3);
            }
            if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.Interstitial.toString())) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.11
                    @Override // java.lang.Runnable
                    public void run() {
                        String toSend = message;
                        if (toSend == null) {
                            toSend = "We're sorry, some error occurred. we will investigate it";
                        }
                        Log.d(IronSourceWebView.this.TAG, "onInterstitialInitFail(message:" + toSend + ")");
                        IronSourceWebView.this.mDSInterstitialListener.onAdProductInitFailed(SSAEnums.ProductType.Interstitial, demandSourceName, toSend);
                    }
                });
            }
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_INIT_INTERSTITIAL_FAIL, value);
        }

        private void setInterstitialAvailability(String demandSourceName, boolean isAvailable) {
            DemandSource demandSource = IronSourceWebView.this.mDemandSourceManager.getDemandSourceByName(SSAEnums.ProductType.Interstitial, demandSourceName);
            if (demandSource != null) {
                demandSource.setAvailabilityState(isAvailable);
            }
            if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.Interstitial.toString())) {
                IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_INTERSTITIAL_AVAILABILITY, String.valueOf(isAvailable + " with demand " + demandSourceName));
            }
        }

        @JavascriptInterface
        public void adClicked(String value) {
            Logger.i(IronSourceWebView.this.TAG, "adClicked(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            String productType = ssaObj.getString(Constants.ParametersKeys.PRODUCT_TYPE);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            if (!TextUtils.isEmpty(demandSourceName)) {
                final SSAEnums.ProductType eProductType = IronSourceWebView.this.getStringProductTypeAsEnum(productType);
                final DSAdProductListener listener = IronSourceWebView.this.getAdProductListenerByProductType(eProductType);
                if (eProductType != null && listener != null) {
                    IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.12
                        @Override // java.lang.Runnable
                        public void run() {
                            listener.onAdProductClick(eProductType, demandSourceName);
                        }
                    });
                }
            }
        }

        @JavascriptInterface
        public void onShowInterstitialSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onShowInterstitialSuccess(" + value + ")");
            IronSourceWebView.this.responseBack(value, true, null, null);
            SSAObj ssaObj = new SSAObj(value);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            if (TextUtils.isEmpty(demandSourceName)) {
                Logger.i(IronSourceWebView.this.TAG, "onShowInterstitialSuccess called with no demand");
                return;
            }
            IronSourceWebView.this.mSavedState.adOpened(SSAEnums.ProductType.Interstitial.ordinal());
            IronSourceWebView.this.mSavedState.setDisplayedDemandSourceName(demandSourceName);
            if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.Interstitial.toString())) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.13
                    @Override // java.lang.Runnable
                    public void run() {
                        IronSourceWebView.this.mDSInterstitialListener.onAdProductOpen(SSAEnums.ProductType.Interstitial, demandSourceName);
                        IronSourceWebView.this.mDSInterstitialListener.onInterstitialShowSuccess(demandSourceName);
                    }
                });
                IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_SHOW_INTERSTITIAL_SUCCESS, value);
            }
            setInterstitialAvailability(demandSourceName, false);
        }

        @JavascriptInterface
        public void onInitOfferWallSuccess(String value) {
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_INIT_OFFERWALL_SUCCESS, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            IronSourceWebView.this.mSavedState.setOfferwallInitSuccess(true);
            if (IronSourceWebView.this.mSavedState.reportInitOfferwall()) {
                IronSourceWebView.this.mSavedState.setOfferwallReportInit(false);
                if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.OfferWall.toString())) {
                    IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.14
                        @Override // java.lang.Runnable
                        public void run() {
                            Log.d(IronSourceWebView.this.TAG, "onOfferWallInitSuccess()");
                            IronSourceWebView.this.mOnOfferWallListener.onOfferwallInitSuccess();
                        }
                    });
                }
            }
        }

        @JavascriptInterface
        public void onInitOfferWallFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onInitOfferWallFail(" + value + ")");
            IronSourceWebView.this.mSavedState.setOfferwallInitSuccess(false);
            SSAObj ssaObj = new SSAObj(value);
            final String message = ssaObj.getString(Constants.ParametersKeys.ERR_MSG);
            if (IronSourceWebView.this.mSavedState.reportInitOfferwall()) {
                IronSourceWebView.this.mSavedState.setOfferwallReportInit(false);
                if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.OfferWall.toString())) {
                    IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.15
                        @Override // java.lang.Runnable
                        public void run() {
                            String toSend = message;
                            if (toSend == null) {
                                toSend = "We're sorry, some error occurred. we will investigate it";
                            }
                            Log.d(IronSourceWebView.this.TAG, "onOfferWallInitFail(message:" + toSend + ")");
                            IronSourceWebView.this.mOnOfferWallListener.onOfferwallInitFail(toSend);
                        }
                    });
                }
            }
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_INIT_OFFERWALL_FAIL, value);
        }

        @JavascriptInterface
        public void onLoadInterstitialSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onLoadInterstitialSuccess(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            setInterstitialAvailability(demandSourceName, true);
            IronSourceWebView.this.responseBack(value, true, null, null);
            if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.Interstitial.toString())) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.16
                    @Override // java.lang.Runnable
                    public void run() {
                        IronSourceWebView.this.mDSInterstitialListener.onInterstitialLoadSuccess(demandSourceName);
                    }
                });
            }
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_LOAD_INTERSTITIAL_SUCCESS, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }

        @JavascriptInterface
        public void onLoadInterstitialFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onLoadInterstitialFail(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            final String message = ssaObj.getString(Constants.ParametersKeys.ERR_MSG);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            IronSourceWebView.this.responseBack(value, true, null, null);
            if (!TextUtils.isEmpty(demandSourceName)) {
                if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.Interstitial.toString())) {
                    IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.17
                        @Override // java.lang.Runnable
                        public void run() {
                            String toSend = message;
                            if (toSend == null) {
                                toSend = "We're sorry, some error occurred. we will investigate it";
                            }
                            IronSourceWebView.this.mDSInterstitialListener.onInterstitialLoadFailed(demandSourceName, toSend);
                        }
                    });
                }
                IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_LOAD_INTERSTITIAL_FAIL, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            }
        }

        @JavascriptInterface
        public void onShowInterstitialFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onShowInterstitialFail(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            final String message = ssaObj.getString(Constants.ParametersKeys.ERR_MSG);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            IronSourceWebView.this.responseBack(value, true, null, null);
            if (!TextUtils.isEmpty(demandSourceName)) {
                setInterstitialAvailability(demandSourceName, false);
                if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.Interstitial.toString())) {
                    IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.18
                        @Override // java.lang.Runnable
                        public void run() {
                            String toSend = message;
                            if (toSend == null) {
                                toSend = "We're sorry, some error occurred. we will investigate it";
                            }
                            IronSourceWebView.this.mDSInterstitialListener.onInterstitialShowFailed(demandSourceName, toSend);
                        }
                    });
                }
                IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_SHOW_INTERSTITIAL_FAIL, value);
            }
        }

        @JavascriptInterface
        public void onGenericFunctionSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGenericFunctionSuccess(" + value + ")");
            if (IronSourceWebView.this.mOnGenericFunctionListener == null) {
                Logger.d(IronSourceWebView.this.TAG, "genericFunctionListener was not found");
            } else {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.19
                    @Override // java.lang.Runnable
                    public void run() {
                        IronSourceWebView.this.mOnGenericFunctionListener.onGFSuccess();
                    }
                });
                IronSourceWebView.this.responseBack(value, true, null, null);
            }
        }

        @JavascriptInterface
        public void onGenericFunctionFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGenericFunctionFail(" + value + ")");
            if (IronSourceWebView.this.mOnGenericFunctionListener == null) {
                Logger.d(IronSourceWebView.this.TAG, "genericFunctionListener was not found");
                return;
            }
            SSAObj ssaObj = new SSAObj(value);
            final String message = ssaObj.getString(Constants.ParametersKeys.ERR_MSG);
            IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.20
                @Override // java.lang.Runnable
                public void run() {
                    IronSourceWebView.this.mOnGenericFunctionListener.onGFFail(message);
                }
            });
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_GENERIC_FUNCTION_FAIL, value);
        }

        @JavascriptInterface
        public void createCalendarEvent(String value) {
            Logger.i(IronSourceWebView.this.TAG, "createCalendarEvent(" + value + ")");
        }

        @JavascriptInterface
        public void openUrl(String value) {
            Logger.i(IronSourceWebView.this.TAG, "openUrl(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            String url = ssaObj.getString("url");
            String method = ssaObj.getString(Constants.ParametersKeys.METHOD);
            Context context = IronSourceWebView.this.getCurrentActivityContext();
            try {
                if (method.equalsIgnoreCase(Constants.ParametersKeys.EXTERNAL_BROWSER)) {
                    UrlHandler.openUrl(context, url);
                } else if (method.equalsIgnoreCase(Constants.ParametersKeys.WEB_VIEW)) {
                    Intent intent = new Intent(context, (Class<?>) OpenUrlActivity.class);
                    intent.putExtra(IronSourceWebView.EXTERNAL_URL, url);
                    intent.putExtra(IronSourceWebView.SECONDARY_WEB_VIEW, true);
                    intent.putExtra(Constants.ParametersKeys.IMMERSIVE, IronSourceWebView.this.mIsImmersive);
                    context.startActivity(intent);
                } else if (method.equalsIgnoreCase(Constants.ParametersKeys.STORE)) {
                    Intent intent2 = new Intent(context, (Class<?>) OpenUrlActivity.class);
                    intent2.putExtra(IronSourceWebView.EXTERNAL_URL, url);
                    intent2.putExtra(IronSourceWebView.IS_STORE, true);
                    intent2.putExtra(IronSourceWebView.SECONDARY_WEB_VIEW, true);
                    context.startActivity(intent2);
                }
            } catch (Exception ex) {
                IronSourceWebView.this.responseBack(value, false, ex.getMessage(), null);
                ex.printStackTrace();
            }
        }

        @JavascriptInterface
        public void setForceClose(String value) {
            Logger.i(IronSourceWebView.this.TAG, "setForceClose(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            String width = ssaObj.getString("width");
            String hight = ssaObj.getString("height");
            IronSourceWebView.this.mHiddenForceCloseWidth = Integer.parseInt(width);
            IronSourceWebView.this.mHiddenForceCloseHeight = Integer.parseInt(hight);
            IronSourceWebView.this.mHiddenForceCloseLocation = ssaObj.getString(Constants.ParametersKeys.POSITION);
        }

        @JavascriptInterface
        public void setBackButtonState(String value) {
            Logger.i(IronSourceWebView.this.TAG, "setBackButtonState(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            String state = ssaObj.getString("state");
            IronSourceSharedPrefHelper.getSupersonicPrefHelper().setBackButtonState(state);
        }

        @JavascriptInterface
        public void setStoreSearchKeys(String value) {
            Logger.i(IronSourceWebView.this.TAG, "setStoreSearchKeys(" + value + ")");
            IronSourceSharedPrefHelper.getSupersonicPrefHelper().setSearchKeys(value);
        }

        @JavascriptInterface
        public void setWebviewBackgroundColor(String value) {
            Logger.i(IronSourceWebView.this.TAG, "setWebviewBackgroundColor(" + value + ")");
            IronSourceWebView.this.setWebviewBackground(value);
        }

        @JavascriptInterface
        public void toggleUDIA(String value) {
            Logger.i(IronSourceWebView.this.TAG, "toggleUDIA(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            if (!ssaObj.containsKey(Constants.ParametersKeys.TOGGLE)) {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.TOGGLE_KEY_DOES_NOT_EXIST, null);
                return;
            }
            String toggleStr = ssaObj.getString(Constants.ParametersKeys.TOGGLE);
            int toggle = Integer.parseInt(toggleStr);
            if (toggle != 0) {
                String binaryToggle = Integer.toBinaryString(toggle);
                if (TextUtils.isEmpty(binaryToggle)) {
                    IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.FIALED_TO_CONVERT_TOGGLE, null);
                    return;
                }
                char[] binaryToggleArr = binaryToggle.toCharArray();
                if (binaryToggleArr[3] == '0') {
                    IronSourceSharedPrefHelper.getSupersonicPrefHelper().setShouldRegisterSessions(true);
                } else {
                    IronSourceSharedPrefHelper.getSupersonicPrefHelper().setShouldRegisterSessions(false);
                }
            }
        }

        @JavascriptInterface
        public void getUDIA(String value) {
            this.udiaResults = 0;
            Logger.i(IronSourceWebView.this.TAG, "getUDIA(" + value + ")");
            String funToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
            SSAObj ssaObj = new SSAObj(value);
            if (!ssaObj.containsKey(Constants.ParametersKeys.GET_BY_FLAG)) {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.GET_BY_FLAG_KEY_DOES_NOT_EXIST, null);
                return;
            }
            String getByFlagStr = ssaObj.getString(Constants.ParametersKeys.GET_BY_FLAG);
            int getByFlag = Integer.parseInt(getByFlagStr);
            if (getByFlag != 0) {
                String binaryToggle = Integer.toBinaryString(getByFlag);
                if (TextUtils.isEmpty(binaryToggle)) {
                    IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.FIALED_TO_CONVERT_GET_BY_FLAG, null);
                    return;
                }
                StringBuilder strBld = new StringBuilder(binaryToggle).reverse();
                char[] binaryToggleArr = strBld.toString().toCharArray();
                JSONArray jsArr = new JSONArray();
                if (binaryToggleArr[3] == '0') {
                    JSONObject jsObj = new JSONObject();
                    try {
                        jsObj.put("sessions", IronSourceSharedPrefHelper.getSupersonicPrefHelper().getSessions());
                        IronSourceSharedPrefHelper.getSupersonicPrefHelper().deleteSessions();
                        jsArr.put(jsObj);
                    } catch (JSONException e) {
                    }
                }
                if (binaryToggleArr[2] == '1') {
                    this.udiaResults++;
                    Location location = LocationService.getLastLocation(IronSourceWebView.this.getContext());
                    if (location != null) {
                        JSONObject jsObj2 = new JSONObject();
                        try {
                            jsObj2.put(LocationConst.LATITUDE, location.getLatitude());
                            jsObj2.put(LocationConst.LONGITUDE, location.getLongitude());
                            jsArr.put(jsObj2);
                            this.udiaResults--;
                            sendResults(funToCall, jsArr);
                            Logger.i(IronSourceWebView.this.TAG, "done location");
                            return;
                        } catch (JSONException e2) {
                            return;
                        }
                    }
                    this.udiaResults--;
                }
            }
        }

        private void sendResults(String funToCall, JSONArray jsArr) {
            Logger.i(IronSourceWebView.this.TAG, "sendResults: " + this.udiaResults);
            if (this.udiaResults <= 0) {
                injectGetUDIA(funToCall, jsArr);
            }
        }

        @JavascriptInterface
        public void onUDIASuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onUDIASuccess(" + value + ")");
        }

        @JavascriptInterface
        public void onUDIAFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onUDIAFail(" + value + ")");
        }

        @JavascriptInterface
        public void onGetUDIASuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetUDIASuccess(" + value + ")");
        }

        @JavascriptInterface
        public void onGetUDIAFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetUDIAFail(" + value + ")");
        }

        @JavascriptInterface
        public void setUserUniqueId(String value) {
            Logger.i(IronSourceWebView.this.TAG, "setUserUniqueId(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            if (!ssaObj.containsKey(Constants.ParametersKeys.USER_UNIQUE_ID) || !ssaObj.containsKey(Constants.ParametersKeys.PRODUCT_TYPE)) {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.UNIQUE_ID_OR_PRODUCT_TYPE_DOES_NOT_EXIST, null);
                return;
            }
            String uniqueId = ssaObj.getString(Constants.ParametersKeys.USER_UNIQUE_ID);
            String productType = ssaObj.getString(Constants.ParametersKeys.PRODUCT_TYPE);
            boolean result = IronSourceSharedPrefHelper.getSupersonicPrefHelper().setUniqueId(uniqueId, productType);
            if (result) {
                IronSourceWebView.this.responseBack(value, true, null, null);
            } else {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.SET_USER_UNIQUE_ID_FAILED, null);
            }
        }

        @JavascriptInterface
        public void getUserUniqueId(String value) {
            Logger.i(IronSourceWebView.this.TAG, "getUserUniqueId(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            if (!ssaObj.containsKey(Constants.ParametersKeys.PRODUCT_TYPE)) {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.PRODUCT_TYPE_DOES_NOT_EXIST, null);
                return;
            }
            String funToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
            if (!TextUtils.isEmpty(funToCall)) {
                String productType = ssaObj.getString(Constants.ParametersKeys.PRODUCT_TYPE);
                String id = IronSourceSharedPrefHelper.getSupersonicPrefHelper().getUniqueId(productType);
                String params = IronSourceWebView.this.parseToJson(Constants.ParametersKeys.USER_UNIQUE_ID, id, Constants.ParametersKeys.PRODUCT_TYPE, productType, null, null, null, null, null, false);
                String script = IronSourceWebView.this.generateJSToInject(funToCall, params, Constants.JSMethods.ON_GET_USER_UNIQUE_ID_SUCCESS, Constants.JSMethods.ON_GET_USER_UNIQUE_ID_FAIL);
                IronSourceWebView.this.injectJavascript(script);
            }
        }

        @JavascriptInterface
        public void getAppsInstallTime(String value) {
            String dataToSend;
            SSAObj ssaObj = new SSAObj(value);
            boolean failed = true;
            String funToCall = null;
            try {
                String includeSystemApps = ssaObj.getString(Constants.ParametersKeys.INCLUDE_SYSTEM_APPS);
                JSONObject appsInstallTime = DeviceStatus.getAppsInstallTime(IronSourceWebView.this.getContext(), Boolean.parseBoolean(includeSystemApps));
                dataToSend = appsInstallTime.toString();
                failed = false;
            } catch (Exception e) {
                Logger.i(IronSourceWebView.this.TAG, "getAppsInstallTime failed(" + e.getLocalizedMessage() + ")");
                dataToSend = e.getLocalizedMessage();
            }
            if (failed) {
                String failFunToCall = IronSourceWebView.this.extractFailFunctionToCall(value);
                if (!TextUtils.isEmpty(failFunToCall)) {
                    funToCall = failFunToCall;
                }
            } else {
                String successFunToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
                if (!TextUtils.isEmpty(successFunToCall)) {
                    funToCall = successFunToCall;
                }
            }
            if (!TextUtils.isEmpty(funToCall)) {
                try {
                    dataToSend = URLDecoder.decode(dataToSend, Charset.defaultCharset().name());
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
                String script = IronSourceWebView.this.generateJSToInject(funToCall, dataToSend);
                IronSourceWebView.this.injectJavascript(script);
            }
        }

        @JavascriptInterface
        public void onGetUserUniqueIdSuccess(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetUserUniqueIdSuccess(" + value + ")");
        }

        @JavascriptInterface
        public void onGetUserUniqueIdFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetUserUniqueIdFail(" + value + ")");
        }

        private void injectGetUDIA(String funToCall, JSONArray jsonArr) {
            if (!TextUtils.isEmpty(funToCall)) {
                String script = IronSourceWebView.this.generateJSToInject(funToCall, jsonArr.toString(), Constants.JSMethods.ON_GET_UDIA_SUCCESS, Constants.JSMethods.ON_GET_UDIA_FAIL);
                IronSourceWebView.this.injectJavascript(script);
            }
        }

        @JavascriptInterface
        public void onOfferWallGeneric(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onOfferWallGeneric(" + value + ")");
            if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.OfferWall.toString())) {
                IronSourceWebView.this.mOnOfferWallListener.onOWGeneric("", "");
            }
        }

        @JavascriptInterface
        public void setUserData(String value) {
            Logger.i(IronSourceWebView.this.TAG, "setUserData(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            if (!ssaObj.containsKey(Constants.ParametersKeys.KEY)) {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.KEY_DOES_NOT_EXIST, null);
                return;
            }
            if (!ssaObj.containsKey(Constants.ParametersKeys.VALUE)) {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.VALUE_DOES_NOT_EXIST, null);
                return;
            }
            String mKey = ssaObj.getString(Constants.ParametersKeys.KEY);
            String mValue = ssaObj.getString(Constants.ParametersKeys.VALUE);
            boolean result = IronSourceSharedPrefHelper.getSupersonicPrefHelper().setUserData(mKey, mValue);
            if (result) {
                String successFunToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
                String params = IronSourceWebView.this.parseToJson(mKey, mValue, null, null, null, null, null, null, null, false);
                String script = IronSourceWebView.this.generateJSToInject(successFunToCall, params);
                IronSourceWebView.this.injectJavascript(script);
                return;
            }
            IronSourceWebView.this.responseBack(value, false, "SetUserData failed writing to shared preferences", null);
        }

        @JavascriptInterface
        public void getUserData(String value) {
            Logger.i(IronSourceWebView.this.TAG, "getUserData(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            if (!ssaObj.containsKey(Constants.ParametersKeys.KEY)) {
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.KEY_DOES_NOT_EXIST, null);
                return;
            }
            String failFunToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
            String mKey = ssaObj.getString(Constants.ParametersKeys.KEY);
            String mValue = IronSourceSharedPrefHelper.getSupersonicPrefHelper().getUserData(mKey);
            String params = IronSourceWebView.this.parseToJson(mKey, mValue, null, null, null, null, null, null, null, false);
            String script = IronSourceWebView.this.generateJSToInject(failFunToCall, params);
            IronSourceWebView.this.injectJavascript(script);
        }

        @JavascriptInterface
        public void onGetUserCreditsFail(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onGetUserCreditsFail(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            final String message = ssaObj.getString(Constants.ParametersKeys.ERR_MSG);
            if (IronSourceWebView.this.shouldNotifyDeveloper(SSAEnums.ProductType.OfferWall.toString())) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.21
                    @Override // java.lang.Runnable
                    public void run() {
                        String toSend = message;
                        if (toSend == null) {
                            toSend = "We're sorry, some error occurred. we will investigate it";
                        }
                        IronSourceWebView.this.mOnOfferWallListener.onGetOWCreditsFailed(toSend);
                    }
                });
            }
            IronSourceWebView.this.responseBack(value, true, null, null);
            IronSourceWebView.this.toastingErrMsg(Constants.JSMethods.ON_GET_USER_CREDITS_FAILED, value);
        }

        @JavascriptInterface
        public void onAdWindowsClosed(String value) {
            Logger.i(IronSourceWebView.this.TAG, "onAdWindowsClosed(" + value + ")");
            IronSourceWebView.this.mSavedState.adClosed();
            IronSourceWebView.this.mSavedState.setDisplayedDemandSourceName(null);
            SSAObj ssaObj = new SSAObj(value);
            String product = ssaObj.getString(Constants.ParametersKeys.PRODUCT_TYPE);
            final String demandSourceName = ssaObj.getString("demandSourceName");
            final SSAEnums.ProductType type = IronSourceWebView.this.getStringProductTypeAsEnum(product);
            Log.d(IronSourceWebView.this.PUB_TAG, "onAdClosed() with type " + type);
            if (IronSourceWebView.this.shouldNotifyDeveloper(product) && product != null) {
                IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.22
                    @Override // java.lang.Runnable
                    public void run() {
                        if (type == SSAEnums.ProductType.RewardedVideo || type == SSAEnums.ProductType.Interstitial) {
                            DSAdProductListener listener = IronSourceWebView.this.getAdProductListenerByProductType(type);
                            if (listener != null) {
                                listener.onAdProductClose(type, demandSourceName);
                                return;
                            }
                            return;
                        }
                        if (type == SSAEnums.ProductType.OfferWall) {
                            IronSourceWebView.this.mOnOfferWallListener.onOWAdClosed();
                        }
                    }
                });
            }
        }

        @JavascriptInterface
        public void onVideoStatusChanged(String value) {
            Log.d(IronSourceWebView.this.TAG, "onVideoStatusChanged(" + value + ")");
            SSAObj ssaObj = new SSAObj(value);
            String product = ssaObj.getString(Constants.ParametersKeys.PRODUCT_TYPE);
            if (IronSourceWebView.this.mVideoEventsListener != null && !TextUtils.isEmpty(product) && SSAEnums.ProductType.RewardedVideo.toString().equalsIgnoreCase(product)) {
                String status = ssaObj.getString("status");
                if (Constants.ParametersKeys.VIDEO_STATUS_STARTED.equalsIgnoreCase(status)) {
                    IronSourceWebView.this.mVideoEventsListener.onVideoStarted();
                    return;
                }
                if (Constants.ParametersKeys.VIDEO_STATUS_PAUSED.equalsIgnoreCase(status)) {
                    IronSourceWebView.this.mVideoEventsListener.onVideoPaused();
                    return;
                }
                if (Constants.ParametersKeys.VIDEO_STATUS_PLAYING.equalsIgnoreCase(status)) {
                    IronSourceWebView.this.mVideoEventsListener.onVideoResumed();
                    return;
                }
                if (Constants.ParametersKeys.VIDEO_STATUS_ENDED.equalsIgnoreCase(status)) {
                    IronSourceWebView.this.mVideoEventsListener.onVideoEnded();
                } else if (Constants.ParametersKeys.VIDEO_STATUS_STOPPED.equalsIgnoreCase(status)) {
                    IronSourceWebView.this.mVideoEventsListener.onVideoStopped();
                } else {
                    Logger.i(IronSourceWebView.this.TAG, "onVideoStatusChanged: unknown status: " + status);
                }
            }
        }

        @JavascriptInterface
        public void postAdEventNotification(String value) {
            try {
                Logger.i(IronSourceWebView.this.TAG, "postAdEventNotification(" + value + ")");
                SSAObj ssaObj = new SSAObj(value);
                final String eventName = ssaObj.getString(Constants.ParametersKeys.EVENT_NAME);
                if (TextUtils.isEmpty(eventName)) {
                    IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.EVENT_NAME_DOES_NOT_EXIST, null);
                    return;
                }
                final String demandSourceName = ssaObj.getString(Constants.ParametersKeys.NOTIFICATION_DEMAND_SOURCE_NAME);
                final JSONObject extData = (JSONObject) ssaObj.get(Constants.ParametersKeys.EXTRA_DATA);
                String productType = ssaObj.getString(Constants.ParametersKeys.PRODUCT_TYPE);
                final SSAEnums.ProductType type = IronSourceWebView.this.getStringProductTypeAsEnum(productType);
                if (IronSourceWebView.this.shouldNotifyDeveloper(productType)) {
                    String funToCall = IronSourceWebView.this.extractSuccessFunctionToCall(value);
                    if (!TextUtils.isEmpty(funToCall)) {
                        String params = IronSourceWebView.this.parseToJson(Constants.ParametersKeys.PRODUCT_TYPE, productType, Constants.ParametersKeys.EVENT_NAME, eventName, "demandSourceName", demandSourceName, null, null, null, false);
                        String script = IronSourceWebView.this.generateJSToInject(funToCall, params, Constants.JSMethods.POST_AD_EVENT_NOTIFICATION_SUCCESS, Constants.JSMethods.POST_AD_EVENT_NOTIFICATION_FAIL);
                        IronSourceWebView.this.injectJavascript(script);
                    }
                    IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.23
                        @Override // java.lang.Runnable
                        public void run() {
                            if (type == SSAEnums.ProductType.Interstitial || type == SSAEnums.ProductType.RewardedVideo) {
                                DSAdProductListener listener = IronSourceWebView.this.getAdProductListenerByProductType(type);
                                if (listener != null) {
                                    listener.onAdProductEventNotificationReceived(type, demandSourceName, eventName, extData);
                                    return;
                                }
                                return;
                            }
                            if (type == SSAEnums.ProductType.OfferWall) {
                                IronSourceWebView.this.mOnOfferWallListener.onOfferwallEventNotificationReceived(eventName, extData);
                            }
                        }
                    });
                    return;
                }
                IronSourceWebView.this.responseBack(value, false, Constants.ErrorCodes.PRODUCT_TYPE_DOES_NOT_EXIST, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        class JSCallbackTask {
            JSCallbackTask() {
            }

            void sendMessage(boolean isSuccess, String callbackFunction, String messageData) {
                SSAObj res = new SSAObj();
                res.put(isSuccess ? IronSourceWebView.JSON_KEY_SUCCESS : IronSourceWebView.JSON_KEY_FAIL, callbackFunction);
                res.put("data", messageData);
                IronSourceWebView.this.responseBack(res.toString(), isSuccess, null, null);
            }

            void sendMessage(boolean isSuccess, String callbackFunction, SSAObj messageData) {
                messageData.put(isSuccess ? IronSourceWebView.JSON_KEY_SUCCESS : IronSourceWebView.JSON_KEY_FAIL, callbackFunction);
                IronSourceWebView.this.responseBack(messageData.toString(), isSuccess, null, null);
            }
        }

        @JavascriptInterface
        public void moatAPI(final String value) {
            IronSourceWebView.this.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.24
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        Logger.i(IronSourceWebView.this.TAG, "moatAPI(" + value + ")");
                        SSAObj ssaObj = new SSAObj(value);
                        IronSourceWebView.this.mMoatJsAdapter.call(ssaObj.toString(), JSInterface.this.new JSCallbackTask(), IronSourceWebView.this.getWebview());
                    } catch (Exception e) {
                        e.printStackTrace();
                        Logger.i(IronSourceWebView.this.TAG, "moatAPI failed with exception " + e.getMessage());
                    }
                }
            });
        }

        @JavascriptInterface
        public void permissionsAPI(String value) {
            try {
                Logger.i(IronSourceWebView.this.TAG, "permissionsAPI(" + value + ")");
                SSAObj ssaObj = new SSAObj(value);
                IronSourceWebView.this.mPermissionsJsAdapter.call(ssaObj.toString(), new JSCallbackTask());
            } catch (Exception e) {
                e.printStackTrace();
                Logger.i(IronSourceWebView.this.TAG, "permissionsAPI failed with exception " + e.getMessage());
            }
        }

        @JavascriptInterface
        public void getDeviceVolume(String value) {
            Logger.i(IronSourceWebView.this.TAG, "getDeviceVolume(" + value + ")");
            try {
                float currVolume = DeviceProperties.getInstance(IronSourceWebView.this.getCurrentActivityContext()).getDeviceVolume(IronSourceWebView.this.getCurrentActivityContext());
                SSAObj ssaObj = new SSAObj(value);
                ssaObj.put(Constants.RequestParameters.DEVICE_VOLUME, String.valueOf(currVolume));
                IronSourceWebView.this.responseBack(ssaObj.toString(), true, null, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @JavascriptInterface
        public void locationServicesEnabled(String value) {
            Logger.i(IronSourceWebView.this.TAG, "locationServicesEnabled(" + value + ")");
            try {
                boolean locationServicesEnabled = LocationService.locationServicesEnabled(IronSourceWebView.this.getContext());
                SSAObj ssaObj = new SSAObj(value);
                ssaObj.put("status", String.valueOf(locationServicesEnabled));
                IronSourceWebView.this.responseBack(ssaObj.toString(), true, null, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @JavascriptInterface
        public void getDeviceLocation(String value) {
            Logger.i(IronSourceWebView.this.TAG, "getDeviceLocation(" + value + ")");
            try {
                SSAObj ret = IronSourceWebView.this.createLocationObject(value, LocationService.getLastLocation(IronSourceWebView.this.getContext()));
                IronSourceWebView.this.responseBack(ret.toString(), true, null, null);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        @JavascriptInterface
        public void getDevicePreciseLocation(final String value) {
            Logger.i(IronSourceWebView.this.TAG, "getDevicePreciseLocation(" + value + ")");
            try {
                LocationService.getPreciseLocation(IronSourceWebView.this.getContext(), new LocationService.ISLocationListener() { // from class: com.ironsource.sdk.controller.IronSourceWebView.JSInterface.25
                    @Override // com.ironsource.environment.LocationService.ISLocationListener
                    public void onLocationChanged(Location location) {
                        SSAObj ret = IronSourceWebView.this.createLocationObject(value, location);
                        IronSourceWebView.this.responseBack(ret.toString(), true, null, null);
                    }
                });
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invokePendingCommands() {
        while (this.mControllerCommandsQueue.size() > 0) {
            String command = this.mControllerCommandsQueue.get(0);
            injectJavascript(command);
            this.mControllerCommandsQueue.remove(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SSAObj createLocationObject(String value, Location location) {
        SSAObj ssaObj = new SSAObj(value);
        if (location != null) {
            ssaObj.put(LocationConst.PROVIDER, location.getProvider());
            ssaObj.put(LocationConst.LATITUDE, Double.toString(location.getLatitude()));
            ssaObj.put(LocationConst.LONGITUDE, Double.toString(location.getLongitude()));
            ssaObj.put(LocationConst.ALTITUDE, Double.toString(location.getAltitude()));
            ssaObj.put(LocationConst.TIME, Long.toString(location.getTime()));
            ssaObj.put(LocationConst.ACCURACY, Float.toString(location.getAccuracy()));
            ssaObj.put(LocationConst.BEARING, Float.toString(location.getBearing()));
            ssaObj.put(LocationConst.SPEED, Float.toString(location.getSpeed()));
        } else {
            ssaObj.put("error", "location data is not available");
        }
        return ssaObj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DSAdProductListener getAdProductListenerByProductType(SSAEnums.ProductType type) {
        if (type == SSAEnums.ProductType.Interstitial) {
            return this.mDSInterstitialListener;
        }
        if (type == SSAEnums.ProductType.RewardedVideo) {
            return this.mDSRewardedVideoListener;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public SSAEnums.ProductType getStringProductTypeAsEnum(String productType) {
        if (TextUtils.isEmpty(productType)) {
            return null;
        }
        if (productType.equalsIgnoreCase(SSAEnums.ProductType.Interstitial.toString())) {
            return SSAEnums.ProductType.Interstitial;
        }
        if (productType.equalsIgnoreCase(SSAEnums.ProductType.RewardedVideo.toString())) {
            return SSAEnums.ProductType.RewardedVideo;
        }
        if (productType.equalsIgnoreCase(SSAEnums.ProductType.OfferWall.toString())) {
            return SSAEnums.ProductType.OfferWall;
        }
        return null;
    }

    public static void setEXTERNAL_URL(String EXTERNAL_URL2) {
        EXTERNAL_URL = EXTERNAL_URL2;
    }

    public void setVideoEventsListener(VideoEventsListener listener) {
        this.mVideoEventsListener = listener;
    }

    public void removeVideoEventsListener() {
        this.mVideoEventsListener = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWebviewBackground(String value) {
        SSAObj ssaObj = new SSAObj(value);
        String keyColor = ssaObj.getString(Constants.ParametersKeys.COLOR);
        int bgColor = 0;
        if (!Constants.ParametersKeys.TRANSPARENT.equalsIgnoreCase(keyColor)) {
            bgColor = Color.parseColor(keyColor);
        }
        setBackgroundColor(bgColor);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [com.ironsource.sdk.controller.IronSourceWebView$2] */
    public void load(final int loadAttemp) {
        try {
            loadUrl("about:blank");
        } catch (Throwable e) {
            Logger.e(this.TAG, "WebViewController:: load: " + e.toString());
            new IronSourceAsyncHttpRequestTask().execute("https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadBlank");
        }
        String controllerPath = "file://" + this.mCacheDirectory + File.separator + Constants.MOBILE_CONTROLLER_HTML;
        File file = new File(this.mCacheDirectory + File.separator + Constants.MOBILE_CONTROLLER_HTML);
        if (file.exists()) {
            JSONObject configObject = SDKUtils.getControllerConfigAsJSONObject();
            setWebDebuggingEnabled(configObject);
            this.mRequestParameters = getRequestParameters(configObject);
            String controllerPathWithParams = controllerPath + "?" + this.mRequestParameters;
            this.mLoadControllerTimer = new CountDownTimer(50000L, 1000L) { // from class: com.ironsource.sdk.controller.IronSourceWebView.2
                @Override // android.os.CountDownTimer
                public void onTick(long millisUntilFinished) {
                    Logger.i(IronSourceWebView.this.TAG, "Loading Controller Timer Tick " + millisUntilFinished);
                }

                @Override // android.os.CountDownTimer
                public void onFinish() {
                    Logger.i(IronSourceWebView.this.TAG, "Loading Controller Timer Finish");
                    if (loadAttemp == 3) {
                        IronSourceWebView.this.mGlobalControllerTimer.cancel();
                        Collection<DemandSource> demandSourcesRV = IronSourceWebView.this.mDemandSourceManager.getDemandSources(SSAEnums.ProductType.RewardedVideo);
                        for (DemandSource demandSource : demandSourcesRV) {
                            if (demandSource.getDemandSourceInitState() == 1) {
                                IronSourceWebView.this.sendProductErrorMessage(SSAEnums.ProductType.RewardedVideo, demandSource.getDemandSourceName());
                            }
                        }
                        Collection<DemandSource> demandSourcesIS = IronSourceWebView.this.mDemandSourceManager.getDemandSources(SSAEnums.ProductType.Interstitial);
                        for (DemandSource demandSource2 : demandSourcesIS) {
                            if (demandSource2.getDemandSourceInitState() == 1) {
                                IronSourceWebView.this.sendProductErrorMessage(SSAEnums.ProductType.Interstitial, demandSource2.getDemandSourceName());
                            }
                        }
                        if (IronSourceWebView.this.mOWmiss) {
                            IronSourceWebView.this.sendProductErrorMessage(SSAEnums.ProductType.OfferWall, null);
                        }
                        if (IronSourceWebView.this.mOWCreditsMiss) {
                            IronSourceWebView.this.sendProductErrorMessage(SSAEnums.ProductType.OfferWallCredits, null);
                            return;
                        }
                        return;
                    }
                    IronSourceWebView.this.load(2);
                }
            }.start();
            try {
                loadUrl(controllerPathWithParams);
            } catch (Throwable e2) {
                Logger.e(this.TAG, "WebViewController:: load: " + e2.toString());
                new IronSourceAsyncHttpRequestTask().execute("https://www.supersonicads.com/mobile/sdk5/log?method=webviewLoadWithPath");
            }
            Logger.i(this.TAG, "load(): " + controllerPathWithParams);
            return;
        }
        Logger.i(this.TAG, "load(): Mobile Controller HTML Does not exist");
        new IronSourceAsyncHttpRequestTask().execute("https://www.supersonicads.com/mobile/sdk5/log?method=htmlControllerDoesNotExistOnFileSystem");
    }

    private void setWebDebuggingEnabled(JSONObject configObject) {
        if (configObject.optBoolean("inspectWebview")) {
            setWebDebuggingEnabled();
        }
    }

    private void initProduct(String applicationKey, String userId, SSAEnums.ProductType type, DemandSource demandSource, String action) {
        if (TextUtils.isEmpty(userId) || TextUtils.isEmpty(applicationKey)) {
            triggerOnControllerInitProductFail("User id or Application key are missing", type, demandSource.getDemandSourceName());
            return;
        }
        if (this.mControllerState == SSAEnums.ControllerState.Ready) {
            IronSourceSharedPrefHelper.getSupersonicPrefHelper().setApplicationKey(applicationKey, type);
            IronSourceSharedPrefHelper.getSupersonicPrefHelper().setUserID(userId, type);
            injectJavascript(createInitProductJSMethod(type, demandSource));
            return;
        }
        setMissProduct(type, demandSource);
        if (this.mControllerState == SSAEnums.ControllerState.Failed) {
            triggerOnControllerInitProductFail(SDKUtils.createErrorMessage(action, Constants.ErrorCodes.InitiatingController), type, demandSource.getDemandSourceName());
        } else if (this.mGlobalControllerTimeFinish) {
            downloadController();
        }
    }

    public void initRewardedVideo(String applicationKey, String userId, DemandSource demandSource, DSRewardedVideoListener listener) {
        this.mRVAppKey = applicationKey;
        this.mRVUserId = userId;
        this.mProductParametersCollection.setProductParameters(SSAEnums.ProductType.RewardedVideo, applicationKey, userId);
        this.mDSRewardedVideoListener = listener;
        this.mSavedState.setRVAppKey(applicationKey);
        this.mSavedState.setRVUserId(userId);
        initProduct(applicationKey, userId, SSAEnums.ProductType.RewardedVideo, demandSource, Constants.ErrorCodes.InitRV);
    }

    public void initInterstitial(String applicationKey, String userId, DemandSource demandSource, DSInterstitialListener listener) {
        this.mISAppKey = applicationKey;
        this.mISUserId = userId;
        this.mProductParametersCollection.setProductParameters(SSAEnums.ProductType.Interstitial, applicationKey, userId);
        this.mDSInterstitialListener = listener;
        this.mSavedState.setInterstitialAppKey(this.mISAppKey);
        this.mSavedState.setInterstitialUserId(this.mISUserId);
        initProduct(this.mISAppKey, this.mISUserId, SSAEnums.ProductType.Interstitial, demandSource, Constants.ErrorCodes.InitIS);
    }

    public void loadInterstitial(final String demandSourceName) {
        Map<String, String> productParamsMap = new HashMap<>();
        if (!TextUtils.isEmpty(demandSourceName)) {
            productParamsMap.put("demandSourceName", demandSourceName);
        }
        String params = flatMapToJsonAsString(productParamsMap);
        if (!isInterstitialAdAvailable(demandSourceName)) {
            this.mSavedState.setReportLoadInterstitial(demandSourceName, true);
            String script = generateJSToInject(Constants.JSMethods.LOAD_INTERSTITIAL, params, Constants.JSMethods.ON_LOAD_INTERSTITIAL_SUCCESS, Constants.JSMethods.ON_LOAD_INTERSTITIAL_FAIL);
            injectJavascript(script);
        } else if (shouldNotifyDeveloper(SSAEnums.ProductType.Interstitial.toString())) {
            runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.3
                @Override // java.lang.Runnable
                public void run() {
                    IronSourceWebView.this.mDSInterstitialListener.onInterstitialLoadSuccess(demandSourceName);
                }
            });
        }
    }

    public boolean isInterstitialAdAvailable(String demandSourceName) {
        DemandSource demandSource = this.mDemandSourceManager.getDemandSourceByName(SSAEnums.ProductType.Interstitial, demandSourceName);
        return demandSource != null && demandSource.getAvailabilityState();
    }

    public void showInterstitial(JSONObject showParams) {
        String script = createShowProductJSMethod(SSAEnums.ProductType.Interstitial, showParams);
        injectJavascript(script);
    }

    public void initOfferWall(String applicationKey, String userId, Map<String, String> extraParameters, OnOfferWallListener listener) {
        this.mOWAppKey = applicationKey;
        this.mOWUserId = userId;
        this.mProductParametersCollection.setProductParameters(SSAEnums.ProductType.OfferWall, applicationKey, userId);
        this.mOWExtraParameters = extraParameters;
        this.mOnOfferWallListener = listener;
        this.mSavedState.setOfferWallExtraParams(this.mOWExtraParameters);
        this.mSavedState.setOfferwallReportInit(true);
        initProduct(this.mOWAppKey, this.mOWUserId, SSAEnums.ProductType.OfferWall, null, Constants.ErrorCodes.InitOW);
    }

    public void showOfferWall(Map<String, String> extraParameters) {
        this.mOWExtraParameters = extraParameters;
        String script = generateJSToInject(Constants.JSMethods.SHOW_OFFER_WALL, Constants.JSMethods.ON_SHOW_OFFER_WALL_SUCCESS, Constants.JSMethods.ON_SHOW_OFFER_WALL_FAIL);
        injectJavascript(script);
    }

    public void getOfferWallCredits(String applicationKey, String userId, OnOfferWallListener listener) {
        this.mOWCreditsAppKey = applicationKey;
        this.mOWCreditsUserId = userId;
        this.mProductParametersCollection.setProductParameters(SSAEnums.ProductType.OfferWallCredits, applicationKey, userId);
        this.mOnOfferWallListener = listener;
        initProduct(this.mOWCreditsAppKey, this.mOWCreditsUserId, SSAEnums.ProductType.OfferWallCredits, null, Constants.ErrorCodes.ShowOWCredits);
    }

    public void updateConsentInfo(JSONObject consentParams) {
        String script = generateJSToInject(Constants.JSMethods.UPDATE_CONSENT_INFO, consentParams != null ? consentParams.toString() : null);
        injectJavascript(Constants.JSMethods.UPDATE_CONSENT_INFO, script);
    }

    private String createInitProductJSMethod(SSAEnums.ProductType type, DemandSource demandSource) {
        if (type == SSAEnums.ProductType.RewardedVideo || type == SSAEnums.ProductType.Interstitial || type == SSAEnums.ProductType.OfferWall) {
            Map<String, String> productParamsMap = new HashMap<>();
            ProductParameters productParameters = this.mProductParametersCollection.getProductParameters(type);
            if (productParameters != null) {
                productParamsMap.put(Constants.RequestParameters.APPLICATION_KEY, productParameters.appKey);
                productParamsMap.put(Constants.RequestParameters.APPLICATION_USER_ID, productParameters.userId);
            }
            if (demandSource != null) {
                if (demandSource.getExtraParams() != null) {
                    productParamsMap.putAll(demandSource.getExtraParams());
                }
                productParamsMap.put("demandSourceName", demandSource.getDemandSourceName());
            } else if (getExtraParamsByProduct(type) != null) {
                productParamsMap.putAll(getExtraParamsByProduct(type));
            }
            String params = flatMapToJsonAsString(productParamsMap);
            Constants.JSMethods method = Constants.JSMethods.getInitMethodByProduct(type);
            String script = generateJSToInject(method.methodName, params, method.successCallbackName, method.failureCallbackName);
            return script;
        }
        if (type != SSAEnums.ProductType.OfferWallCredits) {
            return "";
        }
        String params2 = parseToJson(Constants.ParametersKeys.PRODUCT_TYPE, Constants.ParametersKeys.OFFER_WALL, Constants.RequestParameters.APPLICATION_KEY, this.mOWCreditsAppKey, Constants.RequestParameters.APPLICATION_USER_ID, this.mOWCreditsUserId, null, null, null, false);
        String script2 = generateJSToInject(Constants.JSMethods.GET_USER_CREDITS, params2, "null", Constants.JSMethods.ON_GET_USER_CREDITS_FAILED);
        return script2;
    }

    private String createShowProductJSMethod(SSAEnums.ProductType type, JSONObject showParams) {
        Map<String, String> paramsMap = new HashMap<>();
        String sessionDepth = Integer.toString(showParams.optInt(Constants.RequestParameters.SESSION_DEPTH));
        paramsMap.put(Constants.RequestParameters.SESSION_DEPTH, sessionDepth);
        String demandSourceName = showParams.optString("demandSourceName");
        DemandSource demandSource = this.mDemandSourceManager.getDemandSourceByName(type, demandSourceName);
        if (demandSource != null) {
            if (demandSource.getExtraParams() != null) {
                paramsMap.putAll(demandSource.getExtraParams());
            }
            if (!TextUtils.isEmpty(demandSourceName)) {
                paramsMap.put("demandSourceName", demandSourceName);
            }
        } else if (getExtraParamsByProduct(type) != null) {
            paramsMap.putAll(getExtraParamsByProduct(type));
        }
        String params = flatMapToJsonAsString(paramsMap);
        Constants.JSMethods method = Constants.JSMethods.getShowMethodByProduct(type);
        String script = generateJSToInject(method.methodName, params, method.successCallbackName, method.failureCallbackName);
        return script;
    }

    private String flatMapToJsonAsString(Map<String, String> params) {
        JSONObject jsObj = new JSONObject();
        if (params != null) {
            Iterator<Map.Entry<String, String>> it = params.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<String, String> pairs = it.next();
                try {
                    jsObj.putOpt(pairs.getKey(), SDKUtils.encodeString(pairs.getValue()));
                } catch (JSONException e) {
                    Logger.i(this.TAG, "flatMapToJsonAsStringfailed " + e.toString());
                }
                it.remove();
            }
        }
        return jsObj.toString();
    }

    void setMissProduct(SSAEnums.ProductType type, DemandSource demandSource) {
        if (type == SSAEnums.ProductType.RewardedVideo || type == SSAEnums.ProductType.Interstitial) {
            if (demandSource != null) {
                demandSource.setDemandSourceInitState(1);
            }
        } else if (type == SSAEnums.ProductType.OfferWall) {
            this.mOWmiss = true;
        } else if (type == SSAEnums.ProductType.OfferWallCredits) {
            this.mOWCreditsMiss = true;
        }
        Logger.i(this.TAG, "setMissProduct(" + type + ")");
    }

    private void triggerOnControllerInitProductFail(final String message, final SSAEnums.ProductType type, final String demandSourceName) {
        if (shouldNotifyDeveloper(type.toString())) {
            runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.4
                @Override // java.lang.Runnable
                public void run() {
                    if (SSAEnums.ProductType.RewardedVideo == type || SSAEnums.ProductType.Interstitial == type) {
                        if (!TextUtils.isEmpty(demandSourceName)) {
                            DSAdProductListener listener = IronSourceWebView.this.getAdProductListenerByProductType(type);
                            Log.d(IronSourceWebView.this.TAG, "onAdProductInitFailed (message:" + message + ")(" + type + ")");
                            if (listener != null) {
                                listener.onAdProductInitFailed(type, demandSourceName, message);
                                return;
                            }
                            return;
                        }
                        return;
                    }
                    if (SSAEnums.ProductType.OfferWall == type) {
                        IronSourceWebView.this.mOnOfferWallListener.onOfferwallInitFail(message);
                    } else if (SSAEnums.ProductType.OfferWallCredits == type) {
                        IronSourceWebView.this.mOnOfferWallListener.onGetOWCreditsFailed(message);
                    }
                }
            });
        }
    }

    public void showRewardedVideo(JSONObject showParams) {
        String script = createShowProductJSMethod(SSAEnums.ProductType.RewardedVideo, showParams);
        injectJavascript(script);
    }

    public void assetCached(String file, String path) {
        String params = parseToJson(Constants.ParametersKeys.FILE, file, "path", path, null, null, null, null, null, false);
        String script = generateJSToInject(Constants.JSMethods.ASSET_CACHED, params);
        injectJavascript(script);
    }

    public void assetCachedFailed(String file, String path, String errorMsg) {
        String params = parseToJson(Constants.ParametersKeys.FILE, file, "path", path, Constants.ParametersKeys.ERR_MSG, errorMsg, null, null, null, false);
        String script = generateJSToInject(Constants.JSMethods.ASSET_CACHED_FAILED, params);
        injectJavascript(script);
    }

    public void enterBackground() {
        if (this.mControllerState == SSAEnums.ControllerState.Ready) {
            String script = generateJSToInject(Constants.JSMethods.ENTER_BACKGROUND);
            injectJavascript(script);
        }
    }

    public void enterForeground() {
        if (this.mControllerState == SSAEnums.ControllerState.Ready) {
            String script = generateJSToInject(Constants.JSMethods.ENTER_FOREGROUND);
            injectJavascript(script);
        }
    }

    public void viewableChange(boolean visibility, String webview) {
        String params = parseToJson(Constants.ParametersKeys.WEB_VIEW, webview, null, null, null, null, null, null, Constants.ParametersKeys.IS_VIEWABLE, visibility);
        String script = generateJSToInject(Constants.JSMethods.VIEWABLE_CHANGE, params);
        injectJavascript(script);
    }

    public void nativeNavigationPressed(String action) {
        String params = parseToJson("action", action, null, null, null, null, null, null, null, false);
        String script = generateJSToInject(Constants.JSMethods.NATIVE_NAVIGATION_PRESSED, params);
        injectJavascript(script);
    }

    public void pageFinished() {
        String script = generateJSToInject(Constants.JSMethods.PAGE_FINISHED);
        injectJavascript(script);
    }

    public void interceptedUrlToStore() {
        String script = generateJSToInject(Constants.JSMethods.INTERCEPTED_URL_TO_STORE);
        injectJavascript(script);
    }

    private void injectJavascript(String command, String script) {
        if (!isControllerStateReady() && controllerCommandSupportsQueue(command)) {
            this.mControllerCommandsQueue.add(script);
        } else {
            injectJavascript(script);
        }
    }

    private boolean isControllerStateReady() {
        return SSAEnums.ControllerState.Ready.equals(this.mControllerState);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void injectJavascript(String script) {
        if (!TextUtils.isEmpty(script)) {
            String catchClosure = "empty";
            if (getDebugMode() == SSAEnums.DebugMode.MODE_0.getValue()) {
                catchClosure = "console.log(\"JS exeption: \" + JSON.stringify(e));";
            } else if (getDebugMode() >= SSAEnums.DebugMode.MODE_1.getValue() && getDebugMode() <= SSAEnums.DebugMode.MODE_3.getValue()) {
                catchClosure = "console.log(\"JS exeption: \" + JSON.stringify(e));";
            }
            final StringBuilder scriptBuilder = new StringBuilder();
            scriptBuilder.append("try{").append(script).append("}catch(e){").append(catchClosure).append("}");
            final String url = "javascript:" + scriptBuilder.toString();
            runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.5
                @Override // java.lang.Runnable
                public void run() {
                    Logger.i(IronSourceWebView.this.TAG, url);
                    try {
                        if (IronSourceWebView.this.isKitkatAndAbove != null) {
                            if (IronSourceWebView.this.isKitkatAndAbove.booleanValue()) {
                                IronSourceWebView.this.evaluateJavascriptKitKat(scriptBuilder.toString());
                            } else {
                                IronSourceWebView.this.loadUrl(url);
                            }
                        } else if (Build.VERSION.SDK_INT >= 19) {
                            try {
                                IronSourceWebView.this.evaluateJavascriptKitKat(scriptBuilder.toString());
                                IronSourceWebView.this.isKitkatAndAbove = true;
                            } catch (NoSuchMethodError e) {
                                Logger.e(IronSourceWebView.this.TAG, "evaluateJavascrip NoSuchMethodError: SDK version=" + Build.VERSION.SDK_INT + " " + e);
                                IronSourceWebView.this.loadUrl(url);
                                IronSourceWebView.this.isKitkatAndAbove = false;
                            } catch (Throwable e2) {
                                Logger.e(IronSourceWebView.this.TAG, "evaluateJavascrip Exception: SDK version=" + Build.VERSION.SDK_INT + " " + e2);
                                IronSourceWebView.this.loadUrl(url);
                                IronSourceWebView.this.isKitkatAndAbove = false;
                            }
                        } else {
                            IronSourceWebView.this.loadUrl(url);
                            IronSourceWebView.this.isKitkatAndAbove = false;
                        }
                    } catch (Throwable t) {
                        Logger.e(IronSourceWebView.this.TAG, "injectJavascript: " + t.toString());
                        new IronSourceAsyncHttpRequestTask().execute("https://www.supersonicads.com/mobile/sdk5/log?method=injectJavaScript");
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public void evaluateJavascriptKitKat(String script) {
        evaluateJavascript(script, null);
    }

    private boolean controllerCommandSupportsQueue(String command) {
        ArrayList<String> supportedCommand = new ArrayList<>();
        supportedCommand.add(Constants.JSMethods.UPDATE_CONSENT_INFO);
        return supportedCommand.contains(command);
    }

    public Context getCurrentActivityContext() {
        MutableContextWrapper mctx = (MutableContextWrapper) this.mCurrentActivityContext;
        return mctx.getBaseContext();
    }

    private String getRequestParameters(JSONObject configObject) {
        DeviceProperties properties = DeviceProperties.getInstance(getContext());
        StringBuilder builder = new StringBuilder();
        String sdkVer = DeviceProperties.getSupersonicSdkVersion();
        if (!TextUtils.isEmpty(sdkVer)) {
            builder.append(Constants.RequestParameters.SDK_VERSION).append(Constants.RequestParameters.EQUAL).append(sdkVer).append(Constants.RequestParameters.AMPERSAND);
        }
        String osType = properties.getDeviceOsType();
        if (!TextUtils.isEmpty(osType)) {
            builder.append(Constants.RequestParameters.DEVICE_OS).append(Constants.RequestParameters.EQUAL).append(osType);
        }
        String serverControllerUrl = SDKUtils.getControllerUrl();
        Uri downloadUri = Uri.parse(serverControllerUrl);
        if (downloadUri != null) {
            String scheme = downloadUri.getScheme() + ":";
            String host = downloadUri.getHost();
            int port = downloadUri.getPort();
            if (port != -1) {
                host = host + ":" + port;
            }
            builder.append(Constants.RequestParameters.AMPERSAND).append(Constants.RequestParameters.PROTOCOL).append(Constants.RequestParameters.EQUAL).append(scheme);
            builder.append(Constants.RequestParameters.AMPERSAND).append(Constants.RequestParameters.DOMAIN).append(Constants.RequestParameters.EQUAL).append(host);
            if (configObject.keys().hasNext()) {
                try {
                    JSONObject conf = new JSONObject(configObject, new String[]{Constants.RequestParameters.IS_SECURED, Constants.RequestParameters.APPLICATION_KEY});
                    String config = conf.toString();
                    if (!TextUtils.isEmpty(config)) {
                        builder.append(Constants.RequestParameters.AMPERSAND).append(Constants.RequestParameters.CONTROLLER_CONFIG).append(Constants.RequestParameters.EQUAL).append(config);
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            builder.append(Constants.RequestParameters.AMPERSAND).append(Constants.RequestParameters.DEBUG).append(Constants.RequestParameters.EQUAL).append(getDebugMode());
        }
        return builder.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void closeWebView() {
        if (this.mChangeListener != null) {
            this.mChangeListener.onCloseRequested();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public WebView getWebview() {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void responseBack(String value, boolean result, String errorMessage, String errorCode) {
        SSAObj ssaObj = new SSAObj(value);
        String success = ssaObj.getString(JSON_KEY_SUCCESS);
        String fail = ssaObj.getString(JSON_KEY_FAIL);
        String funToCall = null;
        if (result) {
            if (!TextUtils.isEmpty(success)) {
                funToCall = success;
            }
        } else if (!TextUtils.isEmpty(fail)) {
            funToCall = fail;
        }
        if (!TextUtils.isEmpty(funToCall)) {
            if (!TextUtils.isEmpty(errorMessage)) {
                try {
                    JSONObject jsObj = new JSONObject(value);
                    value = jsObj.put(Constants.ParametersKeys.ERR_MSG, errorMessage).toString();
                } catch (JSONException e) {
                }
            }
            if (!TextUtils.isEmpty(errorCode)) {
                try {
                    JSONObject jsObj2 = new JSONObject(value);
                    value = jsObj2.put(Constants.ParametersKeys.ERR_CODE, errorCode).toString();
                } catch (JSONException e2) {
                }
            }
            String script = generateJSToInject(funToCall, value);
            injectJavascript(script);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String extractSuccessFunctionToCall(String jsonStr) {
        SSAObj ssaObj = new SSAObj(jsonStr);
        String funToCall = ssaObj.getString(JSON_KEY_SUCCESS);
        return funToCall;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String extractFailFunctionToCall(String jsonStr) {
        SSAObj ssaObj = new SSAObj(jsonStr);
        String funToCall = ssaObj.getString(JSON_KEY_FAIL);
        return funToCall;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String parseToJson(String key1, String value1, String key2, String value2, String key3, String value3, String key4, String value4, String key5, boolean value5) {
        JSONObject jsObj = new JSONObject();
        try {
            if (!TextUtils.isEmpty(key1) && !TextUtils.isEmpty(value1)) {
                jsObj.put(key1, SDKUtils.encodeString(value1));
            }
            if (!TextUtils.isEmpty(key2) && !TextUtils.isEmpty(value2)) {
                jsObj.put(key2, SDKUtils.encodeString(value2));
            }
            if (!TextUtils.isEmpty(key3) && !TextUtils.isEmpty(value3)) {
                jsObj.put(key3, SDKUtils.encodeString(value3));
            }
            if (!TextUtils.isEmpty(key4) && !TextUtils.isEmpty(value4)) {
                jsObj.put(key4, SDKUtils.encodeString(value4));
            }
            if (!TextUtils.isEmpty(key5)) {
                jsObj.put(key5, value5);
            }
        } catch (JSONException e) {
            e.printStackTrace();
            new IronSourceAsyncHttpRequestTask().execute(Constants.NATIVE_EXCEPTION_BASE_URL + e.getStackTrace()[0].getMethodName());
        }
        return jsObj.toString();
    }

    private String mapToJson(Map<String, String> map) {
        JSONObject jsObj = new JSONObject();
        if (map != null && !map.isEmpty()) {
            for (String key : map.keySet()) {
                String value = map.get(key);
                try {
                    jsObj.put(key, SDKUtils.encodeString(value));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return jsObj.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] getDeviceParams(Context context) {
        boolean fail = false;
        DeviceProperties deviceProperties = DeviceProperties.getInstance(context);
        JSONObject jsObj = new JSONObject();
        try {
            jsObj.put(Constants.RequestParameters.APP_ORIENTATION, SDKUtils.translateRequestedOrientation(DeviceStatus.getActivityRequestedOrientation(getCurrentActivityContext())));
            String deviceOem = deviceProperties.getDeviceOem();
            if (deviceOem != null) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.DEVICE_OEM), SDKUtils.encodeString(deviceOem));
            }
            String deviceModel = deviceProperties.getDeviceModel();
            if (deviceModel != null) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.DEVICE_MODEL), SDKUtils.encodeString(deviceModel));
            } else {
                fail = true;
            }
            SDKUtils.loadGoogleAdvertiserInfo(context);
            String advertiserId = SDKUtils.getAdvertiserId();
            Boolean isLAT = Boolean.valueOf(SDKUtils.isLimitAdTrackingEnabled());
            if (!TextUtils.isEmpty(advertiserId)) {
                Logger.i(this.TAG, "add AID and LAT");
                jsObj.put(Constants.RequestParameters.isLAT, isLAT);
                StringBuilder aid = new StringBuilder().append(Constants.RequestParameters.DEVICE_IDS).append(Constants.RequestParameters.LEFT_BRACKETS).append(Constants.RequestParameters.AID).append(Constants.RequestParameters.RIGHT_BRACKETS);
                jsObj.put(aid.toString(), SDKUtils.encodeString(advertiserId));
            }
            String deviceOSType = deviceProperties.getDeviceOsType();
            if (deviceOSType != null) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.DEVICE_OS), SDKUtils.encodeString(deviceOSType));
            } else {
                fail = true;
            }
            String deviceOSVersion = deviceProperties.getDeviceOsVersion();
            if (deviceOSVersion != null) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.DEVICE_OS_VERSION), deviceOSVersion.replaceAll("[^0-9/.]", ""));
            } else {
                fail = true;
            }
            String deviceApiLevel = String.valueOf(deviceProperties.getDeviceApiLevel());
            if (deviceApiLevel != null) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.DEVICE_API_LEVEL), deviceApiLevel);
            } else {
                fail = true;
            }
            String ssaSDKVersion = DeviceProperties.getSupersonicSdkVersion();
            if (ssaSDKVersion != null) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.SDK_VERSION), SDKUtils.encodeString(ssaSDKVersion));
            }
            if (deviceProperties.getDeviceCarrier() != null && deviceProperties.getDeviceCarrier().length() > 0) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.MOBILE_CARRIER), SDKUtils.encodeString(deviceProperties.getDeviceCarrier()));
            }
            String connectionType = ConnectivityService.getConnectionType(context);
            if (!TextUtils.isEmpty(connectionType)) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.CONNECTION_TYPE), SDKUtils.encodeString(connectionType));
            } else {
                fail = true;
            }
            String deviceLanguage = context.getResources().getConfiguration().locale.getLanguage();
            if (!TextUtils.isEmpty(deviceLanguage)) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.DEVICE_LANGUAGE), SDKUtils.encodeString(deviceLanguage.toUpperCase()));
            }
            if (SDKUtils.isExternalStorageAvailable()) {
                long freeDiskSize = DeviceStatus.getAvailableMemorySizeInMegaBytes(this.mCacheDirectory);
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.DISK_FREE_SIZE), SDKUtils.encodeString(String.valueOf(freeDiskSize)));
            } else {
                fail = true;
            }
            int deviceWidth = DeviceStatus.getDeviceWidth();
            String width = String.valueOf(deviceWidth);
            if (!TextUtils.isEmpty(width)) {
                StringBuilder key = new StringBuilder();
                key.append(SDKUtils.encodeString(Constants.RequestParameters.DEVICE_SCREEN_SIZE)).append(Constants.RequestParameters.LEFT_BRACKETS).append(SDKUtils.encodeString("width")).append(Constants.RequestParameters.RIGHT_BRACKETS);
                jsObj.put(key.toString(), SDKUtils.encodeString(width));
            } else {
                fail = true;
            }
            int deviceHeigh = DeviceStatus.getDeviceHeight();
            String height = String.valueOf(deviceHeigh);
            StringBuilder key2 = new StringBuilder();
            key2.append(SDKUtils.encodeString(Constants.RequestParameters.DEVICE_SCREEN_SIZE)).append(Constants.RequestParameters.LEFT_BRACKETS).append(SDKUtils.encodeString("height")).append(Constants.RequestParameters.RIGHT_BRACKETS);
            jsObj.put(key2.toString(), SDKUtils.encodeString(height));
            String packageName = ApplicationContext.getPackageName(getContext());
            if (!TextUtils.isEmpty(packageName)) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.PACKAGE_NAME), SDKUtils.encodeString(packageName));
            }
            float deviceScale = DeviceStatus.getDeviceDensity();
            String scaleStr = String.valueOf(deviceScale);
            if (!TextUtils.isEmpty(scaleStr)) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.DEVICE_SCREEN_SCALE), SDKUtils.encodeString(scaleStr));
            }
            boolean isRoot = DeviceStatus.isRootedDevice();
            String rootStr = String.valueOf(isRoot);
            if (!TextUtils.isEmpty(rootStr)) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.IS_ROOT_DEVICE), SDKUtils.encodeString(rootStr));
            }
            float deviceVolume = DeviceProperties.getInstance(context).getDeviceVolume(context);
            if (!TextUtils.isEmpty(rootStr)) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.DEVICE_VOLUME), deviceVolume);
            }
            Context ctx = getCurrentActivityContext();
            if (Build.VERSION.SDK_INT >= 19 && (ctx instanceof Activity)) {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.IMMERSIVE), DeviceStatus.isImmersiveSupported((Activity) ctx));
            }
            jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.BATTERY_LEVEL), DeviceStatus.getBatteryLevel(ctx));
            jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.NETWORK_MCC), ConnectivityService.getNetworkMCC(ctx));
            jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.NETWORK_MNC), ConnectivityService.getNetworkMNC(ctx));
            jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.PHONE_TYPE), ConnectivityService.getPhoneType(ctx));
            jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.SIM_OPERATOR), SDKUtils.encodeString(ConnectivityService.getSimOperator(ctx)));
            jsObj.put(SDKUtils.encodeString("lastUpdateTime"), ApplicationContext.getLastUpdateTime(ctx));
            jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.FIRST_INSTALL_TIME), ApplicationContext.getFirstInstallTime(ctx));
            jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.APPLICATION_VERSION_NAME), SDKUtils.encodeString(ApplicationContext.getApplicationVersionName(ctx)));
        } catch (JSONException e) {
            e.printStackTrace();
            new IronSourceAsyncHttpRequestTask().execute(Constants.NATIVE_EXCEPTION_BASE_URL + e.getStackTrace()[0].getMethodName());
        }
        Object[] result = {jsObj.toString(), Boolean.valueOf(fail)};
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] getApplicationParams(String productType, String demandSourceName) {
        boolean fail = false;
        JSONObject jsObj = new JSONObject();
        String appKey = "";
        String userId = "";
        Map<String, String> productExtraParams = null;
        if (!TextUtils.isEmpty(productType)) {
            SSAEnums.ProductType type = getStringProductTypeAsEnum(productType);
            if (type == SSAEnums.ProductType.RewardedVideo || type == SSAEnums.ProductType.Interstitial) {
                ProductParameters productParameters = this.mProductParametersCollection.getProductParameters(type);
                appKey = productParameters.appKey;
                userId = productParameters.userId;
                DemandSource demandSource = this.mDemandSourceManager.getDemandSourceByName(type, demandSourceName);
                if (demandSource != null) {
                    productExtraParams = demandSource.getExtraParams();
                    productExtraParams.put("demandSourceName", demandSourceName);
                }
            } else if (type == SSAEnums.ProductType.OfferWall) {
                appKey = this.mOWAppKey;
                userId = this.mOWUserId;
                productExtraParams = this.mOWExtraParameters;
            }
            try {
                jsObj.put(Constants.ParametersKeys.PRODUCT_TYPE, productType);
            } catch (JSONException e) {
                e.printStackTrace();
                new IronSourceAsyncHttpRequestTask().execute("https://www.supersonicads.com/mobile/sdk5/log?method=noProductType");
            }
        } else {
            fail = true;
        }
        if (!TextUtils.isEmpty(userId)) {
            try {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.APPLICATION_USER_ID), SDKUtils.encodeString(userId));
            } catch (JSONException e2) {
                e2.printStackTrace();
                new IronSourceAsyncHttpRequestTask().execute("https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppUserId");
            }
        } else {
            fail = true;
        }
        if (!TextUtils.isEmpty(appKey)) {
            try {
                jsObj.put(SDKUtils.encodeString(Constants.RequestParameters.APPLICATION_KEY), SDKUtils.encodeString(appKey));
            } catch (JSONException e3) {
                e3.printStackTrace();
                new IronSourceAsyncHttpRequestTask().execute("https://www.supersonicads.com/mobile/sdk5/log?method=encodeAppKey");
            }
        } else {
            fail = true;
        }
        if (productExtraParams != null && !productExtraParams.isEmpty()) {
            for (Map.Entry<String, String> entry : productExtraParams.entrySet()) {
                if (entry.getKey().equalsIgnoreCase("sdkWebViewCache")) {
                    setWebviewCache(entry.getValue());
                }
                try {
                    jsObj.put(SDKUtils.encodeString(entry.getKey()), SDKUtils.encodeString(entry.getValue()));
                } catch (JSONException e4) {
                    e4.printStackTrace();
                    new IronSourceAsyncHttpRequestTask().execute("https://www.supersonicads.com/mobile/sdk5/log?method=extraParametersToJson");
                }
            }
        }
        Object[] result = {jsObj.toString(), Boolean.valueOf(fail)};
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object[] getAppsStatus(String appIds, String requestId) {
        boolean fail = false;
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(appIds) && !appIds.equalsIgnoreCase("null")) {
                if (!TextUtils.isEmpty(requestId) && !requestId.equalsIgnoreCase("null")) {
                    Context ctx = getContext();
                    List<ApplicationInfo> packages = DeviceStatus.getInstalledApplications(ctx);
                    JSONArray appIdsArray = new JSONArray(appIds);
                    JSONObject bundleIds = new JSONObject();
                    for (int i = 0; i < appIdsArray.length(); i++) {
                        String appId = appIdsArray.getString(i).trim();
                        if (!TextUtils.isEmpty(appId)) {
                            JSONObject isInstalled = new JSONObject();
                            boolean found = false;
                            Iterator<ApplicationInfo> it = packages.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                ApplicationInfo packageInfo = it.next();
                                if (appId.equalsIgnoreCase(packageInfo.packageName)) {
                                    isInstalled.put(IS_INSTALLED, true);
                                    bundleIds.put(appId, isInstalled);
                                    found = true;
                                    break;
                                }
                            }
                            if (!found) {
                                isInstalled.put(IS_INSTALLED, false);
                                bundleIds.put(appId, isInstalled);
                            }
                        }
                    }
                    jSONObject.put(RESULT, bundleIds);
                    jSONObject.put(REQUEST_ID, requestId);
                } else {
                    fail = true;
                    jSONObject.put("error", "requestId is null or empty");
                }
            } else {
                fail = true;
                jSONObject.put("error", "appIds is null or empty");
            }
        } catch (Exception e) {
            fail = true;
        }
        Object[] finalResult = {jSONObject.toString(), Boolean.valueOf(fail)};
        return finalResult;
    }

    @Override // com.ironsource.sdk.precache.DownloadManager.OnPreCacheCompletion
    public void onFileDownloadSuccess(SSAFile file) {
        if (file.getFile().contains(Constants.MOBILE_CONTROLLER_HTML)) {
            load(1);
        } else {
            assetCached(file.getFile(), file.getPath());
        }
    }

    @Override // com.ironsource.sdk.precache.DownloadManager.OnPreCacheCompletion
    public void onFileDownloadFail(SSAFile file) {
        if (file.getFile().contains(Constants.MOBILE_CONTROLLER_HTML)) {
            this.mGlobalControllerTimer.cancel();
            Collection<DemandSource> demandSources = this.mDemandSourceManager.getDemandSources(SSAEnums.ProductType.RewardedVideo);
            for (DemandSource demandSource : demandSources) {
                if (demandSource.getDemandSourceInitState() == 1) {
                    sendProductErrorMessage(SSAEnums.ProductType.RewardedVideo, demandSource.getDemandSourceName());
                }
            }
            Collection<DemandSource> demandSources2 = this.mDemandSourceManager.getDemandSources(SSAEnums.ProductType.Interstitial);
            for (DemandSource demandSource2 : demandSources2) {
                if (demandSource2.getDemandSourceInitState() == 1) {
                    sendProductErrorMessage(SSAEnums.ProductType.Interstitial, demandSource2.getDemandSourceName());
                }
            }
            if (this.mOWmiss) {
                sendProductErrorMessage(SSAEnums.ProductType.OfferWall, null);
            }
            if (this.mOWCreditsMiss) {
                sendProductErrorMessage(SSAEnums.ProductType.OfferWallCredits, null);
                return;
            }
            return;
        }
        assetCachedFailed(file.getFile(), file.getPath(), file.getErrMsg());
    }

    @Override // android.webkit.DownloadListener
    public void onDownloadStart(String url, String userAgent, String contentDisposition, String mimetype, long contentLength) {
        Logger.i(this.TAG, url + " " + mimetype);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toastingErrMsg(final String methodName, String value) {
        SSAObj ssaObj = new SSAObj(value);
        final String message = ssaObj.getString(Constants.ParametersKeys.ERR_MSG);
        if (!TextUtils.isEmpty(message)) {
            runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.controller.IronSourceWebView.6
                @Override // java.lang.Runnable
                public void run() {
                    if (IronSourceWebView.this.getDebugMode() == SSAEnums.DebugMode.MODE_3.getValue()) {
                        Toast.makeText(IronSourceWebView.this.getCurrentActivityContext(), methodName + " : " + message, 1).show();
                    }
                }
            });
        }
    }

    public void setControllerKeyPressed(String value) {
        this.mControllerKeyPressed = value;
    }

    public String getControllerKeyPressed() {
        String keyPressed = this.mControllerKeyPressed;
        setControllerKeyPressed("interrupt");
        return keyPressed;
    }

    public void deviceStatusChanged(String networkType) {
        String params = parseToJson(Constants.RequestParameters.CONNECTION_TYPE, networkType, null, null, null, null, null, null, null, false);
        String script = generateJSToInject(Constants.JSMethods.DEVICE_STATUS_CHANGED, params);
        injectJavascript(script);
    }

    public void engageEnd(String action) {
        if (action.equals(Constants.ParametersKeys.FORCE_CLOSE)) {
            closeWebView();
        }
        String params = parseToJson("action", action, null, null, null, null, null, null, null, false);
        String script = generateJSToInject(Constants.JSMethods.ENGAGE_END, params);
        injectJavascript(script);
    }

    public void registerConnectionReceiver(Context context) {
        context.registerReceiver(this.mConnectionReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public void unregisterConnectionReceiver(Context context) {
        try {
            context.unregisterReceiver(this.mConnectionReceiver);
        } catch (IllegalArgumentException e) {
        } catch (Exception e1) {
            Log.e(this.TAG, "unregisterConnectionReceiver - " + e1);
            new IronSourceAsyncHttpRequestTask().execute(Constants.NATIVE_EXCEPTION_BASE_URL + e1.getStackTrace()[0].getMethodName());
        }
    }

    public void pause() {
        if (Build.VERSION.SDK_INT > 10) {
            try {
                onPause();
            } catch (Throwable e) {
                Logger.i(this.TAG, "WebViewController: pause() - " + e);
                new IronSourceAsyncHttpRequestTask().execute("https://www.supersonicads.com/mobile/sdk5/log?method=webviewPause");
            }
        }
    }

    public void resume() {
        if (Build.VERSION.SDK_INT > 10) {
            try {
                onResume();
            } catch (Throwable e) {
                Logger.i(this.TAG, "WebViewController: onResume() - " + e);
                new IronSourceAsyncHttpRequestTask().execute("https://www.supersonicads.com/mobile/sdk5/log?method=webviewResume");
            }
        }
    }

    public void setOnWebViewControllerChangeListener(OnWebViewChangeListener listener) {
        this.mChangeListener = listener;
    }

    public FrameLayout getLayout() {
        return this.mControllerLayout;
    }

    public boolean inCustomView() {
        return this.mCustomView != null;
    }

    public void hideCustomView() {
        this.mWebChromeClient.onHideCustomView();
    }

    private void setWebviewCache(String value) {
        if (value.equalsIgnoreCase(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
            getSettings().setCacheMode(2);
        } else {
            getSettings().setCacheMode(-1);
        }
    }

    public boolean handleSearchKeysURLs(String url) throws Exception {
        List<String> searchKeys = IronSourceSharedPrefHelper.getSupersonicPrefHelper().getSearchKeys();
        if (searchKeys != null) {
            try {
                if (!searchKeys.isEmpty()) {
                    for (String key : searchKeys) {
                        if (url.contains(key)) {
                            UrlHandler.openUrl(getCurrentActivityContext(), url);
                            return true;
                        }
                    }
                }
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return false;
    }

    public void setState(State state) {
        this.mState = state;
    }

    public State getState() {
        return this.mState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sendProductErrorMessage(SSAEnums.ProductType type, String demnadSourceName) {
        String action = "";
        switch (type) {
            case RewardedVideo:
                action = Constants.ErrorCodes.InitRV;
                break;
            case Interstitial:
                action = Constants.ErrorCodes.InitIS;
                break;
            case OfferWall:
                action = Constants.ErrorCodes.InitOW;
                break;
            case OfferWallCredits:
                action = Constants.ErrorCodes.ShowOWCredits;
                break;
        }
        triggerOnControllerInitProductFail(SDKUtils.createErrorMessage(action, Constants.ErrorCodes.InitiatingController), type, demnadSourceName);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        super.destroy();
        if (this.downloadManager != null) {
            this.downloadManager.release();
        }
        if (this.mConnectionReceiver != null) {
            this.mConnectionReceiver = null;
        }
        this.mUiHandler = null;
        this.mCurrentActivityContext = null;
    }

    private String generateJSToInject(String funToCall) {
        StringBuilder script = new StringBuilder();
        script.append("SSA_CORE.SDKController.runFunction('").append(funToCall).append("');");
        return script.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String generateJSToInject(String funToCall, String parameters) {
        StringBuilder script = new StringBuilder();
        script.append("SSA_CORE.SDKController.runFunction('").append(funToCall).append("?parameters=").append(parameters).append("');");
        return script.toString();
    }

    private String generateJSToInject(String funToCall, String successFunc, String failFunc) {
        StringBuilder script = new StringBuilder();
        script.append("SSA_CORE.SDKController.runFunction('").append(funToCall).append("','").append(successFunc).append("','").append(failFunc).append("');");
        return script.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String generateJSToInject(String funToCall, String parameters, String successFunc, String failFunc) {
        StringBuilder script = new StringBuilder();
        script.append("SSA_CORE.SDKController.runFunction('").append(funToCall).append("?parameters=").append(parameters).append("','").append(successFunc).append("','").append(failFunc).append("');");
        return script.toString();
    }

    public AdUnitsState getSavedState() {
        return this.mSavedState;
    }

    public void restoreState(AdUnitsState state) {
        synchronized (this.mSavedStateLocker) {
            if (state.shouldRestore() && this.mControllerState.equals(SSAEnums.ControllerState.Ready)) {
                Log.d(this.TAG, "restoreState(state:" + state + ")");
                int lastAd = state.getDisplayedProduct();
                if (lastAd != -1) {
                    if (lastAd == SSAEnums.ProductType.RewardedVideo.ordinal()) {
                        Log.d(this.TAG, "onRVAdClosed()");
                        SSAEnums.ProductType type = SSAEnums.ProductType.RewardedVideo;
                        String demandSourceName = state.getDisplayedDemandSourceName();
                        DSAdProductListener listener = getAdProductListenerByProductType(type);
                        if (listener != null && !TextUtils.isEmpty(demandSourceName)) {
                            listener.onAdProductClose(type, demandSourceName);
                        }
                    } else if (lastAd == SSAEnums.ProductType.Interstitial.ordinal()) {
                        Log.d(this.TAG, "onInterstitialAdClosed()");
                        SSAEnums.ProductType type2 = SSAEnums.ProductType.Interstitial;
                        String demandSourceName2 = state.getDisplayedDemandSourceName();
                        DSAdProductListener listener2 = getAdProductListenerByProductType(type2);
                        if (listener2 != null && !TextUtils.isEmpty(demandSourceName2)) {
                            listener2.onAdProductClose(type2, demandSourceName2);
                        }
                    } else if (lastAd == SSAEnums.ProductType.OfferWall.ordinal()) {
                        Log.d(this.TAG, "onOWAdClosed()");
                        if (this.mOnOfferWallListener != null) {
                            this.mOnOfferWallListener.onOWAdClosed();
                        }
                    }
                    state.adOpened(-1);
                    state.setDisplayedDemandSourceName(null);
                } else {
                    Log.d(this.TAG, "No ad was opened");
                }
                String appKey = state.getInterstitialAppKey();
                String userId = state.getInterstitialUserId();
                Collection<DemandSource> demandSources = this.mDemandSourceManager.getDemandSources(SSAEnums.ProductType.Interstitial);
                for (DemandSource demandSource : demandSources) {
                    if (demandSource.getDemandSourceInitState() == 2) {
                        Log.d(this.TAG, "initInterstitial(appKey:" + appKey + ", userId:" + userId + ", demandSource:" + demandSource.getDemandSourceName() + ")");
                        initInterstitial(appKey, userId, demandSource, this.mDSInterstitialListener);
                    }
                }
                String appKey2 = state.getRVAppKey();
                String userId2 = state.getRVUserId();
                Collection<DemandSource> demandSources2 = this.mDemandSourceManager.getDemandSources(SSAEnums.ProductType.RewardedVideo);
                for (DemandSource demandSource2 : demandSources2) {
                    if (demandSource2.getDemandSourceInitState() == 2) {
                        String demandSourceName3 = demandSource2.getDemandSourceName();
                        Log.d(this.TAG, "onRVNoMoreOffers()");
                        this.mDSRewardedVideoListener.onRVNoMoreOffers(demandSourceName3);
                        Log.d(this.TAG, "initRewardedVideo(appKey:" + appKey2 + ", userId:" + userId2 + ", demandSource:" + demandSourceName3 + ")");
                        initRewardedVideo(appKey2, userId2, demandSource2, this.mDSRewardedVideoListener);
                    }
                }
                state.setShouldRestore(false);
            }
            this.mSavedState = state;
        }
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4) {
            if (!this.mChangeListener.onBackButtonPressed()) {
                return super.onKeyDown(keyCode, event);
            }
            return true;
        }
        return super.onKeyDown(keyCode, event);
    }

    void runOnUiThread(Runnable task) {
        this.mUiHandler.post(task);
    }
}
