package com.ironsource.sdk.agent;

import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.ironsource.sdk.SSAPublisher;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.controller.DemandSourceManager;
import com.ironsource.sdk.controller.IronSourceWebView;
import com.ironsource.sdk.controller.MOATJSAdapter;
import com.ironsource.sdk.controller.PermissionsJSAdapter;
import com.ironsource.sdk.data.AdUnitsReady;
import com.ironsource.sdk.data.DemandSource;
import com.ironsource.sdk.data.SSAEnums;
import com.ironsource.sdk.data.SSASession;
import com.ironsource.sdk.listeners.OnInterstitialListener;
import com.ironsource.sdk.listeners.OnOfferWallListener;
import com.ironsource.sdk.listeners.OnRewardedVideoListener;
import com.ironsource.sdk.listeners.internals.DSAdProductListener;
import com.ironsource.sdk.listeners.internals.DSInterstitialListener;
import com.ironsource.sdk.listeners.internals.DSRewardedVideoListener;
import com.ironsource.sdk.utils.DeviceProperties;
import com.ironsource.sdk.utils.IronSourceAsyncHttpRequestTask;
import com.ironsource.sdk.utils.IronSourceSharedPrefHelper;
import com.ironsource.sdk.utils.Logger;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class IronSourceAdsPublisherAgent implements SSAPublisher, DSRewardedVideoListener, DSInterstitialListener, DSAdProductListener {
    private static final String TAG = "IronSourceAdsPublisherAgent";
    private static MutableContextWrapper mutableContextWrapper;
    private static IronSourceAdsPublisherAgent sInstance;
    private DemandSourceManager mDemandSourceManager;
    private SSASession session;
    private IronSourceWebView wvc;

    private IronSourceAdsPublisherAgent(final Activity activity, int debugMode) throws Exception {
        IronSourceSharedPrefHelper.getSupersonicPrefHelper(activity);
        this.mDemandSourceManager = new DemandSourceManager();
        Logger.enableLogging(SDKUtils.getDebugMode());
        Logger.i(TAG, "C'tor");
        mutableContextWrapper = new MutableContextWrapper(activity);
        activity.runOnUiThread(new Runnable() { // from class: com.ironsource.sdk.agent.IronSourceAdsPublisherAgent.1
            @Override // java.lang.Runnable
            public void run() {
                IronSourceAdsPublisherAgent.this.wvc = new IronSourceWebView(IronSourceAdsPublisherAgent.mutableContextWrapper, IronSourceAdsPublisherAgent.this.mDemandSourceManager);
                IronSourceAdsPublisherAgent.this.wvc.addMoatJSInterface(new MOATJSAdapter(activity.getApplication()));
                IronSourceAdsPublisherAgent.this.wvc.addPermissionsJSInterface(new PermissionsJSAdapter(activity.getApplicationContext()));
                IronSourceAdsPublisherAgent.this.wvc.registerConnectionReceiver(activity);
                IronSourceAdsPublisherAgent.this.wvc.setDebugMode(SDKUtils.getDebugMode());
                IronSourceAdsPublisherAgent.this.wvc.downloadController();
            }
        });
        startSession(activity);
    }

    public static synchronized IronSourceAdsPublisherAgent getInstance(Activity activity) throws Exception {
        return getInstance(activity, 0);
    }

    public static synchronized IronSourceAdsPublisherAgent getInstance(Activity activity, int debugMode) throws Exception {
        Logger.i(TAG, "getInstance()");
        if (sInstance == null) {
            sInstance = new IronSourceAdsPublisherAgent(activity, debugMode);
        } else {
            mutableContextWrapper.setBaseContext(activity);
        }
        return sInstance;
    }

    public IronSourceWebView getWebViewController() {
        return this.wvc;
    }

    private OnRewardedVideoListener getAdProductListenerAsRVListener(DemandSource demandSource) {
        if (demandSource == null) {
            return null;
        }
        return (OnRewardedVideoListener) demandSource.getListener();
    }

    private OnInterstitialListener getAdProductListenerAsISListener(DemandSource demandSource) {
        if (demandSource == null) {
            return null;
        }
        return (OnInterstitialListener) demandSource.getListener();
    }

    private void startSession(Context context) {
        this.session = new SSASession(context, SSASession.SessionType.launched);
    }

    public void resumeSession(Context context) {
        this.session = new SSASession(context, SSASession.SessionType.backFromBG);
    }

    private void endSession() {
        if (this.session != null) {
            this.session.endSession();
            IronSourceSharedPrefHelper.getSupersonicPrefHelper().addSession(this.session);
            this.session = null;
        }
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void initRewardedVideo(String applicationKey, String userId, String demandSourceName, Map<String, String> extraParameters, OnRewardedVideoListener listener) {
        DemandSource demandSource = this.mDemandSourceManager.createDemandSource(SSAEnums.ProductType.RewardedVideo, demandSourceName, extraParameters, listener);
        this.wvc.initRewardedVideo(applicationKey, userId, demandSource, this);
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void showRewardedVideo(JSONObject showParams) {
        this.wvc.showRewardedVideo(showParams);
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void initOfferWall(String applicationKey, String userId, Map<String, String> extraParameters, OnOfferWallListener listener) {
        this.wvc.initOfferWall(applicationKey, userId, extraParameters, listener);
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void showOfferWall(Map<String, String> extraParameters) {
        this.wvc.showOfferWall(extraParameters);
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void getOfferWallCredits(String applicationKey, String userId, OnOfferWallListener listener) {
        this.wvc.getOfferWallCredits(applicationKey, userId, listener);
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void initInterstitial(String applicationKey, String userId, String demandSourceName, Map<String, String> extraParameters, OnInterstitialListener listener) {
        DemandSource demandSource = this.mDemandSourceManager.createDemandSource(SSAEnums.ProductType.Interstitial, demandSourceName, extraParameters, listener);
        this.wvc.initInterstitial(applicationKey, userId, demandSource, this);
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void loadInterstitial(JSONObject loadParams) {
        String demandSourceName = null;
        if (loadParams != null) {
            demandSourceName = loadParams.optString("demandSourceName");
        }
        this.wvc.loadInterstitial(demandSourceName);
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public boolean isInterstitialAdAvailable(String demandSourceName) {
        return this.wvc.isInterstitialAdAvailable(demandSourceName);
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void showInterstitial(JSONObject showParams) {
        this.wvc.showInterstitial(showParams);
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void onResume(Activity activity) {
        mutableContextWrapper.setBaseContext(activity);
        this.wvc.enterForeground();
        this.wvc.registerConnectionReceiver(activity);
        if (this.session == null) {
            resumeSession(activity);
        }
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void onPause(Activity activity) {
        try {
            this.wvc.enterBackground();
            this.wvc.unregisterConnectionReceiver(activity);
            endSession();
        } catch (Exception e) {
            e.printStackTrace();
            new IronSourceAsyncHttpRequestTask().execute(Constants.NATIVE_EXCEPTION_BASE_URL + e.getStackTrace()[0].getMethodName());
        }
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void release(Activity activity) {
        try {
            Logger.i(TAG, "release()");
            DeviceProperties.release();
            this.wvc.unregisterConnectionReceiver(activity);
            if (Looper.getMainLooper().equals(Looper.myLooper())) {
                this.wvc.destroy();
                this.wvc = null;
            } else {
                Handler uiHandler = new Handler(Looper.getMainLooper());
                Runnable uiRunnable = new Runnable() { // from class: com.ironsource.sdk.agent.IronSourceAdsPublisherAgent.2
                    @Override // java.lang.Runnable
                    public void run() {
                        IronSourceAdsPublisherAgent.this.wvc.destroy();
                        IronSourceAdsPublisherAgent.this.wvc = null;
                    }
                };
                uiHandler.post(uiRunnable);
            }
        } catch (Exception e) {
        }
        sInstance = null;
        endSession();
    }

    @Override // com.ironsource.sdk.listeners.internals.DSAdProductListener
    public void onAdProductInitSuccess(SSAEnums.ProductType type, String demandSourceName, AdUnitsReady adUnitsReady) {
        OnInterstitialListener listener;
        DemandSource demandSource = getDemandSourceByName(type, demandSourceName);
        if (demandSource != null) {
            demandSource.setDemandSourceInitState(2);
            if (type == SSAEnums.ProductType.RewardedVideo) {
                OnRewardedVideoListener listener2 = getAdProductListenerAsRVListener(demandSource);
                if (listener2 != null) {
                    listener2.onRVInitSuccess(adUnitsReady);
                    return;
                }
                return;
            }
            if (type == SSAEnums.ProductType.Interstitial && (listener = getAdProductListenerAsISListener(demandSource)) != null) {
                listener.onInterstitialInitSuccess();
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSAdProductListener
    public void onAdProductInitFailed(SSAEnums.ProductType type, String demandSourceName, String description) {
        OnInterstitialListener listener;
        DemandSource demandSource = getDemandSourceByName(type, demandSourceName);
        if (demandSource != null) {
            demandSource.setDemandSourceInitState(3);
            if (type == SSAEnums.ProductType.RewardedVideo) {
                OnRewardedVideoListener listener2 = getAdProductListenerAsRVListener(demandSource);
                if (listener2 != null) {
                    listener2.onRVInitFail(description);
                    return;
                }
                return;
            }
            if (type == SSAEnums.ProductType.Interstitial && (listener = getAdProductListenerAsISListener(demandSource)) != null) {
                listener.onInterstitialInitFailed(description);
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSRewardedVideoListener
    public void onRVNoMoreOffers(String demandSourceName) {
        OnRewardedVideoListener listener;
        DemandSource demandSource = getDemandSourceByName(SSAEnums.ProductType.RewardedVideo, demandSourceName);
        if (demandSource != null && (listener = getAdProductListenerAsRVListener(demandSource)) != null) {
            listener.onRVNoMoreOffers();
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSRewardedVideoListener
    public void onRVAdCredited(String demandSourceName, int credits) {
        OnRewardedVideoListener listener;
        DemandSource demandSource = getDemandSourceByName(SSAEnums.ProductType.RewardedVideo, demandSourceName);
        if (demandSource != null && (listener = getAdProductListenerAsRVListener(demandSource)) != null) {
            listener.onRVAdCredited(credits);
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSAdProductListener
    public void onAdProductClose(SSAEnums.ProductType type, String demandSourceName) {
        OnInterstitialListener listener;
        DemandSource demandSource = getDemandSourceByName(type, demandSourceName);
        if (demandSource != null) {
            if (type == SSAEnums.ProductType.RewardedVideo) {
                OnRewardedVideoListener listener2 = getAdProductListenerAsRVListener(demandSource);
                if (listener2 != null) {
                    listener2.onRVAdClosed();
                    return;
                }
                return;
            }
            if (type == SSAEnums.ProductType.Interstitial && (listener = getAdProductListenerAsISListener(demandSource)) != null) {
                listener.onInterstitialClose();
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSRewardedVideoListener
    public void onRVShowFail(String demandSourceName, String description) {
        OnRewardedVideoListener listener;
        DemandSource demandSource = getDemandSourceByName(SSAEnums.ProductType.RewardedVideo, demandSourceName);
        if (demandSource != null && (listener = getAdProductListenerAsRVListener(demandSource)) != null) {
            listener.onRVShowFail(description);
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSAdProductListener
    public void onAdProductClick(SSAEnums.ProductType type, String demandSourceName) {
        OnInterstitialListener listener;
        DemandSource demandSource = getDemandSourceByName(type, demandSourceName);
        if (demandSource != null) {
            if (type == SSAEnums.ProductType.RewardedVideo) {
                OnRewardedVideoListener listener2 = getAdProductListenerAsRVListener(demandSource);
                if (listener2 != null) {
                    listener2.onRVAdClicked();
                    return;
                }
                return;
            }
            if (type == SSAEnums.ProductType.Interstitial && (listener = getAdProductListenerAsISListener(demandSource)) != null) {
                listener.onInterstitialClick();
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSAdProductListener
    public void onAdProductEventNotificationReceived(SSAEnums.ProductType type, String demandSourceName, String eventName, JSONObject extData) {
        OnRewardedVideoListener listener;
        DemandSource demandSource = getDemandSourceByName(type, demandSourceName);
        if (demandSource != null) {
            try {
                if (type == SSAEnums.ProductType.Interstitial) {
                    OnInterstitialListener listener2 = getAdProductListenerAsISListener(demandSource);
                    if (listener2 != null) {
                        extData.put("demandSourceName", demandSourceName);
                        listener2.onInterstitialEventNotificationReceived(eventName, extData);
                    }
                } else if (type == SSAEnums.ProductType.RewardedVideo && (listener = getAdProductListenerAsRVListener(demandSource)) != null) {
                    extData.put("demandSourceName", demandSourceName);
                    listener.onRVEventNotificationReceived(eventName, extData);
                }
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSAdProductListener
    public void onAdProductOpen(SSAEnums.ProductType type, String demandSourceName) {
        OnRewardedVideoListener listener;
        DemandSource demandSource = getDemandSourceByName(type, demandSourceName);
        if (demandSource != null) {
            if (type == SSAEnums.ProductType.Interstitial) {
                OnInterstitialListener listener2 = getAdProductListenerAsISListener(demandSource);
                if (listener2 != null) {
                    listener2.onInterstitialOpen();
                    return;
                }
                return;
            }
            if (type == SSAEnums.ProductType.RewardedVideo && (listener = getAdProductListenerAsRVListener(demandSource)) != null) {
                listener.onRVAdOpened();
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSInterstitialListener
    public void onInterstitialLoadSuccess(String demandSourceName) {
        OnInterstitialListener listener;
        DemandSource demandSource = getDemandSourceByName(SSAEnums.ProductType.Interstitial, demandSourceName);
        if (demandSource != null && (listener = getAdProductListenerAsISListener(demandSource)) != null) {
            listener.onInterstitialLoadSuccess();
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSInterstitialListener
    public void onInterstitialLoadFailed(String demandSourceName, String description) {
        OnInterstitialListener listener;
        DemandSource demandSource = getDemandSourceByName(SSAEnums.ProductType.Interstitial, demandSourceName);
        if (demandSource != null && (listener = getAdProductListenerAsISListener(demandSource)) != null) {
            listener.onInterstitialLoadFailed(description);
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSInterstitialListener
    public void onInterstitialShowSuccess(String demandSourceName) {
        OnInterstitialListener listener;
        DemandSource demandSource = getDemandSourceByName(SSAEnums.ProductType.Interstitial, demandSourceName);
        if (demandSource != null && (listener = getAdProductListenerAsISListener(demandSource)) != null) {
            listener.onInterstitialShowSuccess();
        }
    }

    @Override // com.ironsource.sdk.listeners.internals.DSInterstitialListener
    public void onInterstitialShowFailed(String demandSourceName, String description) {
        OnInterstitialListener listener;
        DemandSource demandSource = getDemandSourceByName(SSAEnums.ProductType.Interstitial, demandSourceName);
        if (demandSource != null && (listener = getAdProductListenerAsISListener(demandSource)) != null) {
            listener.onInterstitialShowFailed(description);
        }
    }

    public DemandSource getDemandSourceByName(SSAEnums.ProductType type, String demandSourceName) {
        if (TextUtils.isEmpty(demandSourceName)) {
            return null;
        }
        return this.mDemandSourceManager.getDemandSourceByName(type, demandSourceName);
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void setMediationState(String productType, String demandSourceName, int state) {
        SSAEnums.ProductType product;
        DemandSource demandSource;
        if (!TextUtils.isEmpty(productType) && !TextUtils.isEmpty(demandSourceName) && (product = SDKUtils.getProductType(productType)) != null && (demandSource = this.mDemandSourceManager.getDemandSourceByName(product, demandSourceName)) != null) {
            demandSource.setMediationState(state);
        }
    }

    @Override // com.ironsource.sdk.SSAPublisher
    public void updateConsentInfo(JSONObject consentParams) {
        if (this.wvc != null) {
            this.wvc.updateConsentInfo(consentParams);
        }
    }
}
