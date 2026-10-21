package com.ironsource.adapters.chartboost;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.chartboost.sdk.CBLocation;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.ChartboostDelegate;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.IntegrationData;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class ChartboostAdapter extends AbstractAdapter {
    private static final String VERSION = "4.1.3";
    private final String APP_ID;
    private final String APP_SIGNATURE;
    private Activity mActivity;
    private Boolean mAlreadyCalledInit;
    private CbDelegate mDelegate;
    private boolean mDidCallInitInterstitial;
    private boolean mDidCallLoad;
    private boolean mInitiatedSuccessfully;

    public static ChartboostAdapter startAdapter(String providerName) {
        return new ChartboostAdapter(providerName);
    }

    private ChartboostAdapter(String providerName) {
        super(providerName);
        this.mAlreadyCalledInit = false;
        this.mDidCallLoad = false;
        this.mDidCallInitInterstitial = false;
        this.mInitiatedSuccessfully = false;
        this.APP_ID = "appID";
        this.APP_SIGNATURE = "appSignature";
    }

    public static IntegrationData getIntegrationData(Activity activity) {
        IntegrationData ret = new IntegrationData("Chartboost", VERSION);
        ret.activities = new String[]{"com.chartboost.sdk.CBImpressionActivity"};
        return ret;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getVersion() {
        return VERSION;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return Chartboost.getSDKVersion();
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    protected void setConsent(boolean consent) {
        if (this.mActivity != null) {
            Chartboost.restrictDataCollection(this.mActivity, !consent);
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onResume(Activity activity) {
        if (activity != null) {
            this.mActivity = activity;
            Chartboost.onStart(activity);
            Chartboost.onResume(activity);
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onPause(Activity activity) {
        if (activity != null) {
            Chartboost.onPause(activity);
            Chartboost.onStop(activity);
        }
    }

    private synchronized void init(final Activity activity, final String userId, final String type, final String appId, final String appSignature) {
        activity.runOnUiThread(new Runnable() { // from class: com.ironsource.adapters.chartboost.ChartboostAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                synchronized (ChartboostAdapter.this.mAlreadyCalledInit) {
                    if (!ChartboostAdapter.this.mAlreadyCalledInit.booleanValue()) {
                        ChartboostAdapter.this.mAlreadyCalledInit = true;
                        ChartboostAdapter.this.mActivity = activity;
                        Chartboost.setDelegate(ChartboostAdapter.this.mDelegate);
                        Chartboost.startWithAppId(activity, appId, appSignature);
                        boolean isDebugEnabled = false;
                        try {
                            isDebugEnabled = ChartboostAdapter.this.isAdaptersDebugEnabled();
                        } catch (NoSuchMethodError e) {
                        }
                        if (isDebugEnabled) {
                            Chartboost.setLoggingLevel(CBLogging.Level.ALL);
                        } else {
                            Chartboost.setLoggingLevel(CBLogging.Level.NONE);
                        }
                        if ("Unity".equals(ChartboostAdapter.this.getPluginType()) && !TextUtils.isEmpty(ChartboostAdapter.this.getPluginFrameworkVersion())) {
                            Chartboost.setFramework(Chartboost.CBFramework.CBFrameworkUnity, ChartboostAdapter.this.getPluginFrameworkVersion());
                        }
                        Chartboost.setMediation(Chartboost.CBMediation.CBMediationironSource, ChartboostAdapter.VERSION);
                        Chartboost.setCustomId(userId);
                        Chartboost.setAutoCacheAds(true);
                        Chartboost.onCreate(activity);
                        Chartboost.onStart(activity);
                        Chartboost.onResume(activity);
                    }
                    if (type.equals(IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE)) {
                        Chartboost.cacheRewardedVideo(CBLocation.LOCATION_DEFAULT);
                    } else if (type.equals(IronSourceConstants.INTERSTITIAL_EVENT_TYPE) && ChartboostAdapter.this.mInitiatedSuccessfully) {
                        ChartboostAdapter.this.reportInterstitialInitSuccess();
                    }
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void initRewardedVideo(Activity activity, String appKey, String userId, JSONObject config, RewardedVideoSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("appID")) || TextUtils.isEmpty(config.optString("appSignature"))) {
            if (listener != null) {
                listener.onRewardedVideoAvailabilityChanged(false);
            }
        } else {
            if (this.mDelegate == null) {
                this.mDelegate = new CbDelegate();
            }
            init(activity, userId, IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE, config.optString("appID"), config.optString("appSignature"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void fetchRewardedVideo(JSONObject config) {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void showRewardedVideo(JSONObject config, RewardedVideoSmashListener listener) {
        this.mActiveRewardedVideoSmash = listener;
        if (Chartboost.hasRewardedVideo(CBLocation.LOCATION_DEFAULT)) {
            Chartboost.showRewardedVideo(CBLocation.LOCATION_DEFAULT);
            return;
        }
        Chartboost.cacheRewardedVideo(CBLocation.LOCATION_DEFAULT);
        if (this.mActiveRewardedVideoSmash != null) {
            this.mActiveRewardedVideoSmash.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
        for (RewardedVideoSmashListener smash : this.mAllRewardedVideoSmashes) {
            if (smash != null) {
                smash.onRewardedVideoAvailabilityChanged(false);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public boolean isRewardedVideoAvailable(JSONObject config) {
        return Chartboost.hasRewardedVideo(CBLocation.LOCATION_DEFAULT);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void initInterstitial(Activity activity, String appKey, String userId, JSONObject config, InterstitialSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("appID")) || TextUtils.isEmpty(config.optString("appSignature"))) {
            if (listener != null) {
                listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params", "Interstitial"));
            }
        } else {
            this.mDidCallInitInterstitial = true;
            if (this.mDelegate == null) {
                this.mDelegate = new CbDelegate();
            }
            init(activity, userId, IronSourceConstants.INTERSTITIAL_EVENT_TYPE, config.optString("appID"), config.optString("appSignature"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void loadInterstitial(JSONObject config, InterstitialSmashListener listener) {
        this.mDidCallLoad = true;
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.chartboost.ChartboostAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                Chartboost.cacheInterstitial(CBLocation.LOCATION_DEFAULT);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void showInterstitial(JSONObject config, InterstitialSmashListener listener) {
        this.mActiveInterstitialSmash = listener;
        if (Chartboost.hasInterstitial(CBLocation.LOCATION_DEFAULT)) {
            Chartboost.showInterstitial(CBLocation.LOCATION_DEFAULT);
        } else if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public boolean isInterstitialReady(JSONObject config) {
        return Chartboost.hasInterstitial(CBLocation.LOCATION_DEFAULT);
    }

    private class CbDelegate extends ChartboostDelegate {
        private CbDelegate() {
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didDisplayRewardedVideo(String location) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didDisplayRewardedVideo ; location: " + location, 1);
            if (ChartboostAdapter.this.mActiveRewardedVideoSmash != null) {
                ChartboostAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdOpened();
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didCacheRewardedVideo(String location) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didCacheRewardedVideo ; location: " + location, 1);
            ChartboostAdapter.this.updateRVAvailability(true);
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didFailToLoadRewardedVideo(String location, CBError.CBImpressionError error) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didFailToLoadRewardedVideo ; location: " + location + " ; error: " + error.toString(), 1);
            if (!Chartboost.hasRewardedVideo(CBLocation.LOCATION_DEFAULT)) {
                ChartboostAdapter.this.updateRVAvailability(false);
            } else {
                ChartboostAdapter.this.updateRVAvailability(true);
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didDismissRewardedVideo(String location) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didDismissRewardedVideo ; location: " + location, 1);
            if (ChartboostAdapter.this.mActiveRewardedVideoSmash != null) {
                ChartboostAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdEnded();
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didCloseRewardedVideo(String location) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didCloseRewardedVideo ; location: " + location, 1);
            if (ChartboostAdapter.this.mActiveRewardedVideoSmash != null) {
                ChartboostAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdClosed();
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didClickRewardedVideo(String location) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didClickRewardedVideo ; location: " + location, 1);
            if (ChartboostAdapter.this.mActiveRewardedVideoSmash != null) {
                ChartboostAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdClicked();
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didCompleteRewardedVideo(String location, int reward) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didCompleteRewardedVideo ; location: " + location, 1);
            if (ChartboostAdapter.this.mActiveRewardedVideoSmash != null) {
                ChartboostAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdRewarded();
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void willDisplayVideo(String location) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "willDisplayVideo ; location: " + location, 1);
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didCacheInterstitial(String location) {
            if (ChartboostAdapter.this.mDidCallLoad) {
                ChartboostAdapter.this.mDidCallLoad = false;
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didCacheInterstitial ; location: " + location, 1);
                for (InterstitialSmashListener smash : ChartboostAdapter.this.mAllInterstitialSmashes) {
                    if (smash != null) {
                        smash.onInterstitialAdReady();
                    }
                }
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didFailToLoadInterstitial(String location, CBError.CBImpressionError error) {
            if (ChartboostAdapter.this.mDidCallLoad) {
                ChartboostAdapter.this.mDidCallLoad = false;
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didFailToLoadInterstitial ; location: " + location + " ; error: " + error.toString(), 1);
                for (InterstitialSmashListener smash : ChartboostAdapter.this.mAllInterstitialSmashes) {
                    if (smash != null) {
                        smash.onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError(error.toString()));
                    }
                }
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didDismissInterstitial(String location) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didDismissInterstitial ; location: " + location, 1);
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didCloseInterstitial(String location) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didCloseInterstitial ; location: " + location, 1);
            if (ChartboostAdapter.this.mActiveInterstitialSmash != null) {
                ChartboostAdapter.this.mActiveInterstitialSmash.onInterstitialAdClosed();
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didClickInterstitial(String location) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didClickInterstitial ; location: " + location, 1);
            if (ChartboostAdapter.this.mActiveInterstitialSmash != null) {
                ChartboostAdapter.this.mActiveInterstitialSmash.onInterstitialAdClicked();
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didDisplayInterstitial(String location) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "didDisplayInterstitial ; location: " + location, 1);
            if (ChartboostAdapter.this.mActiveInterstitialSmash != null) {
                ChartboostAdapter.this.mActiveInterstitialSmash.onInterstitialAdOpened();
                ChartboostAdapter.this.mActiveInterstitialSmash.onInterstitialAdShowSucceeded();
            }
        }

        @Override // com.chartboost.sdk.ChartboostDelegate, com.chartboost.sdk.a
        public void didInitialize() {
            ChartboostAdapter.this.mInitiatedSuccessfully = true;
            ChartboostAdapter.this.reportInterstitialInitSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reportInterstitialInitSuccess() {
        if (this.mDidCallInitInterstitial) {
            this.mDidCallInitInterstitial = false;
            for (InterstitialSmashListener smash : this.mAllInterstitialSmashes) {
                if (smash != null) {
                    smash.onInterstitialInitSuccess();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateRVAvailability(boolean available) {
        for (RewardedVideoSmashListener smash : this.mAllRewardedVideoSmashes) {
            if (smash != null) {
                smash.onRewardedVideoAvailabilityChanged(available);
            }
        }
    }
}
