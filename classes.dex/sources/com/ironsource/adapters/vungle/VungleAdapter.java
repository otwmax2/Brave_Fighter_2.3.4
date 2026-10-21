package com.ironsource.adapters.vungle;

import android.app.Activity;
import android.text.TextUtils;
import android.util.Pair;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.IntegrationData;
import com.ironsource.mediationsdk.InterstitialSmash;
import com.ironsource.mediationsdk.RewardedVideoSmash;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.vungle.publisher.AdConfig;
import com.vungle.publisher.VungleAdEventListener;
import com.vungle.publisher.VungleInitListener;
import com.vungle.publisher.VunglePub;
import com.vungle.publisher.log.Logger;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class VungleAdapter extends AbstractAdapter implements VungleInitListener, VungleAdEventListener {
    private static final String CORE_SDK_VERSION = "5.3.2";
    private static final String VERSION = "4.1.1";
    private final String APP_ID;
    private final String PLACEMENT_ID;
    private String mCurrentUserId;
    private boolean mDidCallLoad;
    private EInitState mInitState;
    private Set<String> mInitiatedAdUnits;
    private VunglePub mVunglePub;

    private enum EInitState {
        NOT_INIT,
        INIT_IN_PROGRESS,
        INIT_SUCCESS,
        INIT_FAIL
    }

    public static VungleAdapter startAdapter(String providerName) {
        return new VungleAdapter(providerName);
    }

    private VungleAdapter(String providerName) {
        super(providerName);
        this.mInitState = EInitState.NOT_INIT;
        this.mDidCallLoad = false;
        this.APP_ID = "AppID";
        this.PLACEMENT_ID = "PlacementId";
    }

    public static IntegrationData getIntegrationData(Activity activity) {
        IntegrationData ret = new IntegrationData(Logger.VUNGLE_TAG, VERSION);
        ret.activities = new String[]{"com.vungle.publisher.VideoFullScreenAdActivity", "com.vungle.publisher.MraidFullScreenAdActivity", "com.vungle.publisher.FlexViewAdActivity"};
        ret.externalLibs = new ArrayList<>();
        ret.externalLibs.add(new Pair<>("javax.inject.Inject", "javax.inject-1.jar"));
        ret.externalLibs.add(new Pair<>("dagger.Module", "dagger-2.7.jar"));
        ret.externalLibs.add(new Pair<>("retrofit2.adapter.rxjava.RxJavaCallAdapterFactory", "adapter-rxjava-2.2.0.jar"));
        ret.externalLibs.add(new Pair<>("retrofit2.converter.gson.GsonConverterFactory", "converter-gson-2.2.0.jar"));
        ret.externalLibs.add(new Pair<>("de.greenrobot.event.EventBus", "eventbus-2.2.1.jar"));
        ret.externalLibs.add(new Pair<>("okhttp3.OkHttpClient$Builder", "okhttp-3.6.0.jar"));
        ret.externalLibs.add(new Pair<>("okio.Buffer", "okio-1.11.0.jar"));
        ret.externalLibs.add(new Pair<>("com.google.gson.Gson", "gson-2.7.jar"));
        ret.externalLibs.add(new Pair<>("retrofit2.Retrofit$Builder", "retrofit-2.2.0.jar"));
        ret.externalLibs.add(new Pair<>("rx.subjects.PublishSubject", "rxjava-1.2.0.jar"));
        ret.validateWriteExternalStorage = true;
        return ret;
    }

    private synchronized void setInitState(EInitState state) {
        log(IronSourceLogger.IronSourceTag.ADAPTER_API, getProviderName() + ":init state changed from " + this.mInitState + " to " + state + ")", 1);
        this.mInitState = state;
    }

    private synchronized EInitState getCurrentInitState() {
        return this.mInitState;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getVersion() {
        return VERSION;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return CORE_SDK_VERSION;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onResume(Activity activity) {
        if (this.mVunglePub != null) {
            this.mVunglePub.onResume();
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onPause(Activity activity) {
        if (this.mVunglePub != null) {
            this.mVunglePub.onPause();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void initRewardedVideo(Activity activity, String appKey, String userId, JSONObject config, RewardedVideoSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("AppID")) || TextUtils.isEmpty(config.optString("PlacementId"))) {
            if (listener != null) {
                listener.onRewardedVideoAvailabilityChanged(false);
            }
            return;
        }
        if (!TextUtils.isEmpty(config.optString("PlacementId")) && listener != null) {
            this.mRewardedVideoPlacementToListenerMap.put(config.optString("PlacementId"), listener);
        }
        addInitiatedAdUnit(IronSourceConstants.REWARDED_VIDEO_AD_UNIT);
        HashSet<String> allPlacements = new HashSet<>();
        switch (getCurrentInitState()) {
            case NOT_INIT:
                if (listener != null) {
                    allPlacements = ((RewardedVideoSmash) listener).getAllSettingsForProvider("PlacementId");
                }
                initSdk(activity, config.optString("AppID"), userId, allPlacements);
                break;
            case INIT_SUCCESS:
                if (this.mVunglePub.isAdPlayable(config.optString("PlacementId"))) {
                    if (listener != null) {
                        listener.onRewardedVideoAvailabilityChanged(true);
                    }
                } else {
                    this.mVunglePub.loadAd(config.optString("PlacementId"));
                }
                break;
            case INIT_FAIL:
                if (listener != null) {
                    listener.onRewardedVideoAvailabilityChanged(false);
                }
                break;
        }
    }

    private void initSdk(final Activity activity, final String appId, String userId, HashSet<String> allPlacements) {
        setInitState(EInitState.INIT_IN_PROGRESS);
        final String[] placementList = (String[]) allPlacements.toArray(new String[allPlacements.size()]);
        this.mVunglePub = VunglePub.getInstance();
        this.mCurrentUserId = userId;
        activity.runOnUiThread(new Runnable() { // from class: com.ironsource.adapters.vungle.VungleAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                VungleAdapter.this.mVunglePub.init(activity, appId, placementList, VungleAdapter.this);
                VungleAdapter.this.mVunglePub.clearAndSetEventListeners(VungleAdapter.this);
            }
        });
    }

    private void addInitiatedAdUnit(String adUnit) {
        if (this.mInitiatedAdUnits == null) {
            this.mInitiatedAdUnits = new HashSet();
        }
        this.mInitiatedAdUnits.add(adUnit);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void fetchRewardedVideo(JSONObject config) {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void showRewardedVideo(JSONObject config, RewardedVideoSmashListener listener) {
        if (this.mVunglePub != null) {
            boolean isAdAvailable = this.mVunglePub.isAdPlayable(config.optString("PlacementId"));
            if (isAdAvailable) {
                AdConfig overrideConfig = new AdConfig();
                overrideConfig.setIncentivizedUserId(this.mCurrentUserId);
                this.mVunglePub.playAd(config.optString("PlacementId"), overrideConfig);
            } else if (listener != null) {
                listener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                listener.onRewardedVideoAvailabilityChanged(false);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public boolean isRewardedVideoAvailable(JSONObject config) {
        return this.mVunglePub != null && this.mVunglePub.isInitialized() && this.mVunglePub.isAdPlayable(config.optString("PlacementId"));
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void initInterstitial(Activity activity, String appKey, String userId, JSONObject config, InterstitialSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("AppID")) || TextUtils.isEmpty(config.optString("PlacementId"))) {
            if (listener != null) {
                listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params", "Interstitial"));
            }
            return;
        }
        if (!TextUtils.isEmpty(config.optString("PlacementId")) && listener != null) {
            this.mInterstitialPlacementToListenerMap.put(config.optString("PlacementId"), listener);
        }
        addInitiatedAdUnit("Interstitial");
        HashSet<String> allPlacements = new HashSet<>();
        switch (getCurrentInitState()) {
            case NOT_INIT:
                if (listener != null) {
                    allPlacements = ((InterstitialSmash) listener).getAllSettingsForProvider("PlacementId");
                }
                initSdk(activity, config.optString("AppID"), userId, allPlacements);
                break;
            case INIT_SUCCESS:
                if (listener != null) {
                    listener.onInterstitialInitSuccess();
                }
                break;
            case INIT_FAIL:
                if (listener != null) {
                    listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Init Failed", "Interstitial"));
                }
                break;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void loadInterstitial(JSONObject config, InterstitialSmashListener listener) {
        if (this.mVunglePub.isAdPlayable(config.optString("PlacementId"))) {
            if (listener != null) {
                listener.onInterstitialAdReady();
            }
        } else {
            this.mDidCallLoad = true;
            this.mVunglePub.loadAd(config.optString("PlacementId"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void showInterstitial(JSONObject config, InterstitialSmashListener listener) {
        if (this.mVunglePub != null && this.mVunglePub.isAdPlayable(config.optString("PlacementId"))) {
            this.mVunglePub.playAd(config.optString("PlacementId"), this.mVunglePub.getGlobalAdConfig());
        } else if (listener != null) {
            listener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public boolean isInterstitialReady(JSONObject config) {
        return this.mVunglePub != null && this.mVunglePub.isInitialized() && this.mVunglePub.isAdPlayable(config.optString("PlacementId"));
    }

    @Override // com.vungle.publisher.VungleInitListener
    public void onSuccess() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onSuccess()", 1);
        setInitState(EInitState.INIT_SUCCESS);
        if (this.mInitiatedAdUnits != null) {
            if (this.mInitiatedAdUnits.contains(IronSourceConstants.REWARDED_VIDEO_AD_UNIT)) {
                for (Map.Entry<String, RewardedVideoSmashListener> entry : this.mRewardedVideoPlacementToListenerMap.entrySet()) {
                    if (this.mVunglePub.isAdPlayable(entry.getKey())) {
                        if (entry.getValue() != null) {
                            entry.getValue().onRewardedVideoAvailabilityChanged(true);
                        }
                    } else {
                        this.mVunglePub.loadAd(entry.getKey());
                    }
                }
            }
            if (this.mInitiatedAdUnits.contains("Interstitial")) {
                for (Map.Entry<String, InterstitialSmashListener> entry2 : this.mInterstitialPlacementToListenerMap.entrySet()) {
                    if (entry2.getValue() != null) {
                        entry2.getValue().onInterstitialInitSuccess();
                    }
                }
            }
        }
    }

    @Override // com.vungle.publisher.VungleInitListener
    public void onFailure(Throwable throwable) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onFailure()", 1);
        setInitState(EInitState.INIT_FAIL);
        if (this.mInitiatedAdUnits != null) {
            if (this.mInitiatedAdUnits.contains(IronSourceConstants.REWARDED_VIDEO_AD_UNIT)) {
                for (Map.Entry<String, RewardedVideoSmashListener> entry : this.mRewardedVideoPlacementToListenerMap.entrySet()) {
                    if (entry.getValue() != null) {
                        entry.getValue().onRewardedVideoAvailabilityChanged(false);
                    }
                }
            }
            if (this.mInitiatedAdUnits.contains("Interstitial")) {
                for (Map.Entry<String, InterstitialSmashListener> entry2 : this.mInterstitialPlacementToListenerMap.entrySet()) {
                    if (entry2.getValue() != null) {
                        entry2.getValue().onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Init Failed", "Interstitial"));
                    }
                }
            }
        }
    }

    @Override // com.vungle.publisher.VungleAdEventListener
    public void onAdEnd(String placementReferenceId, boolean wasSuccessfulView, boolean wasCallToActionClicked) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onAdEnd(wasSuccessfulView: " + wasSuccessfulView + ", wasCallToActionClicked:" + wasCallToActionClicked + ")", 1);
        if (this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId) != null) {
            if (wasCallToActionClicked) {
                this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId).onRewardedVideoAdClicked();
            }
            this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId).onRewardedVideoAdEnded();
            if (wasSuccessfulView) {
                this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId).onRewardedVideoAdRewarded();
            }
            this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId).onRewardedVideoAdClosed();
            boolean anotherAdAvailable = this.mVunglePub.isAdPlayable(placementReferenceId);
            this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId).onRewardedVideoAvailabilityChanged(anotherAdAvailable);
            if (!anotherAdAvailable) {
                this.mVunglePub.loadAd(placementReferenceId);
                return;
            }
            return;
        }
        if (this.mInterstitialPlacementToListenerMap.get(placementReferenceId) != null) {
            if (wasCallToActionClicked) {
                this.mInterstitialPlacementToListenerMap.get(placementReferenceId).onInterstitialAdClicked();
            }
            this.mInterstitialPlacementToListenerMap.get(placementReferenceId).onInterstitialAdClosed();
        }
    }

    @Override // com.vungle.publisher.VungleAdEventListener
    public void onAdStart(String placementReferenceId) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onAdStart, placementReferenceId: " + placementReferenceId, 1);
        if (this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId) != null) {
            this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId).onRewardedVideoAdOpened();
            this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId).onRewardedVideoAdStarted();
        } else if (this.mInterstitialPlacementToListenerMap.get(placementReferenceId) != null) {
            this.mInterstitialPlacementToListenerMap.get(placementReferenceId).onInterstitialAdOpened();
            this.mInterstitialPlacementToListenerMap.get(placementReferenceId).onInterstitialAdShowSucceeded();
        }
    }

    @Override // com.vungle.publisher.VungleAdEventListener
    public void onUnableToPlayAd(String placementReferenceId, String reason) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onUnableToPlayAd, placementReferenceId: " + placementReferenceId, 1);
        if (this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId) != null) {
            this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId).onRewardedVideoAvailabilityChanged(false);
            this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId).onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        } else if (this.mInterstitialPlacementToListenerMap.get(placementReferenceId) != null) {
            this.mInterstitialPlacementToListenerMap.get(placementReferenceId).onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
        }
    }

    @Override // com.vungle.publisher.VungleAdEventListener
    public void onAdAvailabilityUpdate(String placementReferenceId, boolean isAdAvailable) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onAdAvailabilityUpdate, placementReferenceId: " + placementReferenceId + ", isAdAvailable: " + isAdAvailable, 1);
        if (this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId) != null) {
            this.mRewardedVideoPlacementToListenerMap.get(placementReferenceId).onRewardedVideoAvailabilityChanged(isAdAvailable);
            return;
        }
        if (this.mInterstitialPlacementToListenerMap.get(placementReferenceId) != null && this.mDidCallLoad) {
            this.mDidCallLoad = false;
            if (isAdAvailable) {
                this.mInterstitialPlacementToListenerMap.get(placementReferenceId).onInterstitialAdReady();
            } else {
                this.mInterstitialPlacementToListenerMap.get(placementReferenceId).onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError("No Ads"));
            }
        }
    }
}
