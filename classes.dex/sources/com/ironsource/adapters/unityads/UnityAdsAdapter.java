package com.ironsource.adapters.unityads;

import android.app.Activity;
import android.text.TextUtils;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.IntegrationData;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.unity3d.ads.IUnityAdsListener;
import com.unity3d.ads.UnityAds;
import com.unity3d.ads.metadata.MediationMetaData;
import com.unity3d.ads.metadata.MetaData;
import com.unity3d.ads.metadata.PlayerMetaData;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class UnityAdsAdapter extends AbstractAdapter implements IUnityAdsListener {
    private static final String VERSION = "4.1.1";
    private final String GAME_ID;
    private final String PLACEMENT_ID;
    private Activity mActivity;
    private boolean mDidCallLoad;
    private boolean mDidInit;

    public static UnityAdsAdapter startAdapter(String providerName) {
        return new UnityAdsAdapter(providerName);
    }

    private UnityAdsAdapter(String providerName) {
        super(providerName);
        this.mDidInit = false;
        this.mDidCallLoad = false;
        this.GAME_ID = "sourceId";
        this.PLACEMENT_ID = "zoneId";
    }

    public static IntegrationData getIntegrationData(Activity activity) {
        IntegrationData ret = new IntegrationData("UnityAds", VERSION);
        ret.activities = new String[]{"com.unity3d.ads.adunit.AdUnitActivity", "com.unity3d.ads.adunit.AdUnitSoftwareActivity"};
        return ret;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getVersion() {
        return VERSION;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return UnityAds.getVersion();
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    protected void setConsent(boolean consent) {
        if (this.mActivity != null) {
            MetaData gdprMetaData = new MetaData(this.mActivity);
            gdprMetaData.set("gdpr.consent", Boolean.valueOf(consent));
            gdprMetaData.commit();
        }
    }

    private synchronized void initSDK(Activity activity, String game_id, String userId) {
        this.mDidInit = true;
        this.mActivity = activity;
        MediationMetaData mediationMetaData = new MediationMetaData(activity);
        mediationMetaData.setName("IronSource");
        mediationMetaData.setVersion(VERSION);
        mediationMetaData.commit();
        UnityAds.setDebugMode(false);
        UnityAds.initialize(activity, game_id, this);
        boolean isDebugEnabled = false;
        try {
            isDebugEnabled = isAdaptersDebugEnabled();
        } catch (NoSuchMethodError e) {
        }
        UnityAds.setDebugMode(isDebugEnabled);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public synchronized void initRewardedVideo(Activity activity, String appKey, String userId, JSONObject config, RewardedVideoSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("sourceId"))) {
            if (listener != null) {
                listener.onRewardedVideoAvailabilityChanged(false);
            }
        } else {
            if (!TextUtils.isEmpty(config.optString("zoneId")) && listener != null) {
                this.mRewardedVideoPlacementToListenerMap.put(config.optString("zoneId"), listener);
            }
            if (!this.mDidInit) {
                initSDK(activity, config.optString("sourceId"), userId);
            } else if (listener != null) {
                listener.onRewardedVideoAvailabilityChanged(UnityAds.isReady(config.optString("zoneId")));
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void fetchRewardedVideo(JSONObject config) {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void showRewardedVideo(JSONObject config, RewardedVideoSmashListener listener) {
        if (UnityAds.isReady(config.optString("zoneId"))) {
            if (!TextUtils.isEmpty(getDynamicUserId())) {
                PlayerMetaData playerMetaData = new PlayerMetaData(this.mActivity);
                playerMetaData.setServerId(getDynamicUserId());
                playerMetaData.commit();
            }
            UnityAds.show(this.mActivity, config.optString("zoneId"));
            return;
        }
        if (listener != null) {
            listener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            listener.onRewardedVideoAvailabilityChanged(false);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public boolean isRewardedVideoAvailable(JSONObject config) {
        return UnityAds.isReady(config.optString("zoneId"));
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public synchronized void initInterstitial(Activity activity, String appKey, String userId, JSONObject config, InterstitialSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("sourceId"))) {
            if (listener != null) {
                listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params", "Interstitial"));
            }
        } else {
            if (!TextUtils.isEmpty(config.optString("zoneId")) && listener != null) {
                this.mInterstitialPlacementToListenerMap.put(config.optString("zoneId"), listener);
            }
            if (!this.mDidInit) {
                initSDK(activity, config.optString("sourceId"), userId);
            }
            if (listener != null) {
                listener.onInterstitialInitSuccess();
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void loadInterstitial(JSONObject config, InterstitialSmashListener listener) {
        if (UnityAds.isReady(config.optString("zoneId"))) {
            if (listener != null) {
                listener.onInterstitialAdReady();
                return;
            }
            return;
        }
        this.mDidCallLoad = true;
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void showInterstitial(JSONObject config, InterstitialSmashListener listener) {
        if (UnityAds.isReady(config.optString("zoneId"))) {
            UnityAds.show(this.mActivity, config.optString("zoneId"));
        } else if (listener != null) {
            listener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public boolean isInterstitialReady(JSONObject config) {
        return UnityAds.isReady(config.optString("zoneId"));
    }

    @Override // com.unity3d.ads.IUnityAdsListener
    public void onUnityAdsReady(String placementId) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onUnityAdsReady(placementId: " + placementId + ")", 1);
        if (!TextUtils.isEmpty(placementId)) {
            if (this.mRewardedVideoPlacementToListenerMap.get(placementId) != null) {
                this.mRewardedVideoPlacementToListenerMap.get(placementId).onRewardedVideoAvailabilityChanged(true);
            } else if (this.mInterstitialPlacementToListenerMap.get(placementId) != null) {
                if (this.mDidCallLoad) {
                    this.mDidCallLoad = false;
                }
                this.mInterstitialPlacementToListenerMap.get(placementId).onInterstitialAdReady();
            }
        }
    }

    @Override // com.unity3d.ads.IUnityAdsListener
    public void onUnityAdsStart(String placementId) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onUnityAdsStart(placementId: " + placementId + ")", 1);
        if (!TextUtils.isEmpty(placementId)) {
            if (this.mRewardedVideoPlacementToListenerMap.get(placementId) != null) {
                this.mRewardedVideoPlacementToListenerMap.get(placementId).onRewardedVideoAdOpened();
                this.mRewardedVideoPlacementToListenerMap.get(placementId).onRewardedVideoAdStarted();
            } else if (this.mInterstitialPlacementToListenerMap.get(placementId) != null) {
                this.mInterstitialPlacementToListenerMap.get(placementId).onInterstitialAdOpened();
                this.mInterstitialPlacementToListenerMap.get(placementId).onInterstitialAdShowSucceeded();
            }
        }
    }

    @Override // com.unity3d.ads.IUnityAdsListener
    public void onUnityAdsFinish(String placementId, UnityAds.FinishState finishState) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onUnityAdsFinish(placementId: " + placementId + ", finishState: " + finishState + ")", 1);
        if (!TextUtils.isEmpty(placementId)) {
            if (this.mRewardedVideoPlacementToListenerMap.get(placementId) != null) {
                this.mRewardedVideoPlacementToListenerMap.get(placementId).onRewardedVideoAvailabilityChanged(UnityAds.isReady(placementId));
                if (finishState.equals(UnityAds.FinishState.COMPLETED)) {
                    this.mRewardedVideoPlacementToListenerMap.get(placementId).onRewardedVideoAdEnded();
                    this.mRewardedVideoPlacementToListenerMap.get(placementId).onRewardedVideoAdRewarded();
                }
                this.mRewardedVideoPlacementToListenerMap.get(placementId).onRewardedVideoAdClosed();
                return;
            }
            if (this.mInterstitialPlacementToListenerMap.get(placementId) != null) {
                this.mInterstitialPlacementToListenerMap.get(placementId).onInterstitialAdClosed();
            }
        }
    }

    @Override // com.unity3d.ads.IUnityAdsListener
    public void onUnityAdsError(UnityAds.UnityAdsError unityAdsError, String errorMessage) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onUnityAdsError(errorType: " + unityAdsError + ", errorMessage: " + errorMessage + ")", 1);
    }
}
