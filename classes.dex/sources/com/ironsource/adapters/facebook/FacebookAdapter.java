package com.ironsource.adapters.facebook;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.facebook.ads.RewardData;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.RewardedVideoAdListener;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.EBannerSize;
import com.ironsource.mediationsdk.IntegrationData;
import com.ironsource.mediationsdk.IronSourceBannerLayout;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.BannerSmashListener;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class FacebookAdapter extends AbstractAdapter {
    private static final String CORE_SDK_VERSION = "4.28.1";
    private static final String MEDIATION_SERVICE_NAME = "Supersonic";
    private static final String VERSION = "4.1.5";
    private final String PLACEMENT_ID;
    private Activity mActivity;
    private ConcurrentHashMap<String, AdView> mBannerPlacementToAdMap;
    private InterstitialAdListener mInterstitialAdListener;
    private ConcurrentHashMap<String, InterstitialAd> mInterstitialPlacementToAdMap;
    private boolean mIsReloading;
    private RewardedVideoAdListener mRewardedVideoAdListener;
    private ConcurrentHashMap<String, RewardedVideoAd> mRewardedVideoPlacementToAdMap;

    public static FacebookAdapter startAdapter(String providerName) {
        return new FacebookAdapter(providerName);
    }

    public static IntegrationData getIntegrationData(Activity activity) {
        IntegrationData ret = new IntegrationData("Facebook", VERSION);
        ret.activities = new String[]{"com.facebook.ads.AudienceNetworkActivity"};
        return ret;
    }

    private FacebookAdapter(String providerName) {
        super(providerName);
        this.PLACEMENT_ID = "placementId";
        this.mIsReloading = false;
        this.mAllBannerSmashes = new CopyOnWriteArrayList<>();
        this.mRewardedVideoPlacementToAdMap = new ConcurrentHashMap<>();
        this.mInterstitialPlacementToAdMap = new ConcurrentHashMap<>();
        this.mBannerPlacementToAdMap = new ConcurrentHashMap<>();
        this.mInterstitialAdListener = new InterstitialAdListener() { // from class: com.ironsource.adapters.facebook.FacebookAdapter.1
            @Override // com.facebook.ads.InterstitialAdListener
            public void onInterstitialDisplayed(Ad ad) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onInterstitialDisplayed", 1);
                if (FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId()) != null) {
                    ((InterstitialSmashListener) FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId())).onInterstitialAdOpened();
                }
            }

            @Override // com.facebook.ads.InterstitialAdListener
            public void onInterstitialDismissed(Ad ad) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onInterstitialDismissed", 1);
                if (FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId()) != null) {
                    ((InterstitialSmashListener) FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId())).onInterstitialAdClosed();
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onError(Ad ad, AdError adError) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IS Ad, onError; error: " + adError.getErrorMessage(), 1);
                if (FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId()) != null) {
                    ((InterstitialSmashListener) FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId())).onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError(adError.getErrorMessage()));
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(Ad ad) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IS Ad, onAdLoaded", 1);
                if (FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId()) != null) {
                    ((InterstitialSmashListener) FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId())).onInterstitialAdReady();
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onAdClicked(Ad ad) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IS Ad, onAdClicked", 1);
                if (FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId()) != null) {
                    ((InterstitialSmashListener) FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId())).onInterstitialAdClicked();
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onLoggingImpression(Ad ad) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "IS Ad, onLoggingImpression", 1);
                if (FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId()) != null) {
                    ((InterstitialSmashListener) FacebookAdapter.this.mInterstitialPlacementToListenerMap.get(ad.getPlacementId())).onInterstitialAdShowSucceeded();
                }
            }
        };
        this.mRewardedVideoAdListener = new RewardedVideoAdListener() { // from class: com.ironsource.adapters.facebook.FacebookAdapter.2
            @Override // com.facebook.ads.RewardedVideoAdListener
            public void onRewardedVideoCompleted() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoCompleted", 1);
                if (FacebookAdapter.this.mActiveRewardedVideoSmash != null) {
                    FacebookAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdEnded();
                    FacebookAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdRewarded();
                }
            }

            @Override // com.facebook.ads.RewardedVideoAdListener, com.facebook.ads.AdListener
            public void onLoggingImpression(Ad ad) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "RV Ad, onLoggingImpression", 1);
                if (FacebookAdapter.this.mActiveRewardedVideoSmash != null) {
                    FacebookAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdOpened();
                    FacebookAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdStarted();
                }
            }

            @Override // com.facebook.ads.RewardedVideoAdListener
            public void onRewardedVideoClosed() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoClosed", 1);
                if (FacebookAdapter.this.mActiveRewardedVideoSmash != null) {
                    FacebookAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdClosed();
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onError(Ad ad, AdError adError) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "RV Ad, onError; error: " + adError.getErrorMessage(), 1);
                if (FacebookAdapter.this.mRewardedVideoPlacementToListenerMap.get(ad.getPlacementId()) != null) {
                    ((RewardedVideoSmashListener) FacebookAdapter.this.mRewardedVideoPlacementToListenerMap.get(ad.getPlacementId())).onRewardedVideoAvailabilityChanged(false);
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(Ad ad) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "RV Ad, onAdLoaded", 1);
                if (FacebookAdapter.this.mRewardedVideoPlacementToListenerMap.get(ad.getPlacementId()) != null) {
                    ((RewardedVideoSmashListener) FacebookAdapter.this.mRewardedVideoPlacementToListenerMap.get(ad.getPlacementId())).onRewardedVideoAvailabilityChanged(true);
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onAdClicked(Ad ad) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "RV Ad, onAdClicked", 1);
                if (FacebookAdapter.this.mRewardedVideoPlacementToListenerMap.get(ad.getPlacementId()) != null) {
                    ((RewardedVideoSmashListener) FacebookAdapter.this.mRewardedVideoPlacementToListenerMap.get(ad.getPlacementId())).onRewardedVideoAdClicked();
                }
            }
        };
        AdSettings.setMediationService(MEDIATION_SERVICE_NAME);
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getVersion() {
        return VERSION;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return "4.28.1";
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void initRewardedVideo(Activity activity, String appKey, String userId, JSONObject config, RewardedVideoSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("placementId"))) {
            if (listener != null) {
                listener.onRewardedVideoAvailabilityChanged(false);
            }
        } else {
            this.mActivity = activity;
            if (!TextUtils.isEmpty(config.optString("placementId")) && listener != null) {
                this.mRewardedVideoPlacementToListenerMap.put(config.optString("placementId"), listener);
            }
            loadRewardedVideo(config.optString("placementId"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void fetchRewardedVideo(JSONObject config) {
        loadRewardedVideo(config.optString("placementId"));
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public boolean isRewardedVideoAvailable(JSONObject config) {
        return this.mRewardedVideoPlacementToAdMap.get(config.optString("placementId")) != null && this.mRewardedVideoPlacementToAdMap.get(config.optString("placementId")).isAdLoaded();
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void showRewardedVideo(final JSONObject config, final RewardedVideoSmashListener listener) {
        this.mActiveRewardedVideoSmash = listener;
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.facebook.FacebookAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    RewardedVideoAd videoAd = (RewardedVideoAd) FacebookAdapter.this.mRewardedVideoPlacementToAdMap.get(config.optString("placementId"));
                    if (videoAd != null && videoAd.isAdLoaded()) {
                        if (!TextUtils.isEmpty(FacebookAdapter.this.getDynamicUserId())) {
                            videoAd.setRewardData(new RewardData(FacebookAdapter.this.getDynamicUserId(), "1"));
                        }
                        videoAd.show();
                    } else if (listener != null) {
                        listener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                    }
                    if (listener != null) {
                        listener.onRewardedVideoAvailabilityChanged(false);
                    }
                } catch (Exception ex) {
                    IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Facebook show failed - " + ex.getMessage(), 3);
                    if (listener != null) {
                        listener.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                        listener.onRewardedVideoAvailabilityChanged(false);
                    }
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onResume(Activity activity) {
        this.mActivity = activity;
        log(IronSourceLogger.IronSourceTag.ADAPTER_API, getProviderName() + ":onResume()", 1);
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onPause(Activity activity) {
        log(IronSourceLogger.IronSourceTag.ADAPTER_API, getProviderName() + ":onPause()", 1);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void initInterstitial(Activity activity, String appKey, String userId, JSONObject config, InterstitialSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("placementId"))) {
            if (listener != null) {
                listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params", "Interstitial"));
            }
        } else {
            this.mActivity = activity;
            if (!TextUtils.isEmpty(config.optString("placementId")) && listener != null) {
                this.mInterstitialPlacementToListenerMap.put(config.optString("placementId"), listener);
                listener.onInterstitialInitSuccess();
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void loadInterstitial(final JSONObject config, final InterstitialSmashListener listener) {
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.facebook.FacebookAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (!TextUtils.isEmpty(config.optString("placementId"))) {
                        InterstitialAd interstitialAd = new InterstitialAd(FacebookAdapter.this.mActivity, config.optString("placementId"));
                        interstitialAd.setAdListener(FacebookAdapter.this.mInterstitialAdListener);
                        interstitialAd.loadAd();
                        FacebookAdapter.this.mInterstitialPlacementToAdMap.put(config.optString("placementId"), interstitialAd);
                    } else {
                        listener.onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError("invalid placement"));
                    }
                } catch (Exception e) {
                    if (listener != null) {
                        listener.onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError(e.getLocalizedMessage()));
                    }
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void showInterstitial(final JSONObject config, final InterstitialSmashListener listener) {
        this.mActiveInterstitialSmash = listener;
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.facebook.FacebookAdapter.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (FacebookAdapter.this.mInterstitialPlacementToAdMap.get(config.optString("placementId")) != null && ((InterstitialAd) FacebookAdapter.this.mInterstitialPlacementToAdMap.get(config.optString("placementId"))).isAdLoaded()) {
                        ((InterstitialAd) FacebookAdapter.this.mInterstitialPlacementToAdMap.get(config.optString("placementId"))).show();
                    } else if (listener != null) {
                        listener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
                    }
                } catch (Exception ex) {
                    IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Facebook show failed - " + ex.getMessage(), 3);
                    if (listener != null) {
                        listener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
                    }
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public boolean isInterstitialReady(JSONObject config) {
        return this.mInterstitialPlacementToAdMap.get(config.optString("placementId")) != null && this.mInterstitialPlacementToAdMap.get(config.optString("placementId")).isAdLoaded();
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public void initBanners(Activity activity, String appKey, String userId, JSONObject config, BannerSmashListener listener) {
        this.mActivity = activity;
        if (listener != null) {
            listener.onBannerInitSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdView createBanner(Activity activity, EBannerSize size, JSONObject config, BannerSmashListener listener) {
        AdSize adSize = AdSize.BANNER_HEIGHT_50;
        switch (size) {
            case BANNER:
                adSize = AdSize.BANNER_HEIGHT_50;
                break;
            case LARGE:
                adSize = AdSize.BANNER_HEIGHT_90;
                break;
            case RECTANGLE:
                adSize = AdSize.RECTANGLE_HEIGHT_250;
                break;
            case TABLET:
                adSize = AdSize.BANNER_HEIGHT_90;
                break;
            case SMART:
                adSize = !isLargeScreen(activity) ? AdSize.BANNER_HEIGHT_50 : AdSize.BANNER_HEIGHT_90;
                break;
        }
        String placementId = config.optString("placementId");
        AdView adView = new AdView(activity, placementId, adSize);
        this.mBannerPlacementToAdMap.put(placementId, adView);
        adView.setAdListener(new AdListener() { // from class: com.ironsource.adapters.facebook.FacebookAdapter.6
            @Override // com.facebook.ads.AdListener
            public void onError(Ad ad, AdError adError) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Banner Ad, onError; error: " + adError.getErrorMessage(), 1);
                if (FacebookAdapter.this.mBannerPlacementToListenerMap.containsKey(ad.getPlacementId())) {
                    IronSourceError error = ErrorBuilder.buildLoadFailedError(adError.getErrorMessage());
                    ((BannerSmashListener) FacebookAdapter.this.mBannerPlacementToListenerMap.get(ad.getPlacementId())).onBannerAdLoadFailed(error);
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onAdLoaded(Ad ad) {
                if (FacebookAdapter.this.mBannerPlacementToListenerMap.containsKey(ad.getPlacementId())) {
                    IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Banner Ad, onAdLoaded", 1);
                    if (!FacebookAdapter.this.mIsReloading && FacebookAdapter.this.mBannerPlacementToAdMap.get(ad.getPlacementId()) != null) {
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                        FacebookAdapter.this.mIronSourceBanner.addViewWithFrameLayoutParams((View) FacebookAdapter.this.mBannerPlacementToAdMap.get(ad.getPlacementId()), layoutParams);
                    }
                    ((BannerSmashListener) FacebookAdapter.this.mBannerPlacementToListenerMap.get(ad.getPlacementId())).onBannerAdLoaded();
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onAdClicked(Ad ad) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Banner Ad, onAdClicked", 1);
                if (FacebookAdapter.this.mBannerPlacementToListenerMap.containsKey(ad.getPlacementId())) {
                    ((BannerSmashListener) FacebookAdapter.this.mBannerPlacementToListenerMap.get(ad.getPlacementId())).onBannerAdClicked();
                }
            }

            @Override // com.facebook.ads.AdListener
            public void onLoggingImpression(Ad ad) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "Banner Ad, onLoggingImpression", 1);
                if (FacebookAdapter.this.mBannerPlacementToListenerMap.containsKey(ad.getPlacementId())) {
                    ((BannerSmashListener) FacebookAdapter.this.mBannerPlacementToListenerMap.get(ad.getPlacementId())).onBannerAdScreenPresented();
                }
            }
        });
        if (listener != null) {
            this.mBannerPlacementToListenerMap.put(placementId, listener);
        }
        return adView;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterApi
    public void loadBanner(IronSourceBannerLayout banner, final JSONObject config, final BannerSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("placementId"))) {
            String errorString = "Banner, " + getProviderName() + " - No placement id in the response";
            IronSourceError error = ErrorBuilder.buildLoadFailedError(errorString);
            if (listener != null) {
                listener.onBannerAdLoadFailed(error);
                return;
            }
            return;
        }
        if (banner != null) {
            this.mIronSourceBanner = banner;
            this.mIsReloading = false;
            Handler handler = new Handler(Looper.getMainLooper());
            handler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.FacebookAdapter.7
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AdView adView = FacebookAdapter.this.createBanner(FacebookAdapter.this.mIronSourceBanner.getActivity(), FacebookAdapter.this.mIronSourceBanner.getSize(), config, listener);
                        adView.loadAd();
                    } catch (Exception e) {
                        String errorString2 = "Banner Load Fail, " + FacebookAdapter.this.getProviderName() + " - failed to retrieve Facebook AdView from banner layout";
                        IronSourceError error2 = ErrorBuilder.buildLoadFailedError(errorString2);
                        if (listener != null) {
                            listener.onBannerAdLoadFailed(error2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterApi
    public void destroyBanner(IronSourceBannerLayout banner, final JSONObject config) {
        Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.FacebookAdapter.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (FacebookAdapter.this.mBannerPlacementToAdMap.get(config.optString("placementId")) != null) {
                        ((AdView) FacebookAdapter.this.mBannerPlacementToAdMap.get(config.optString("placementId"))).destroy();
                        FacebookAdapter.this.mBannerPlacementToAdMap.remove(config.optString("placementId"));
                    }
                } catch (Exception e) {
                    FacebookAdapter.this.log(IronSourceLogger.IronSourceTag.ADAPTER_API, FacebookAdapter.this.getProviderName() + ":destroyBanner() failed with an exception: " + e, 2);
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterApi
    public void reloadBanner(final JSONObject config) {
        Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.FacebookAdapter.9
            @Override // java.lang.Runnable
            public void run() {
                if (FacebookAdapter.this.mBannerPlacementToAdMap.get(config.optString("placementId")) != null) {
                    ((AdView) FacebookAdapter.this.mBannerPlacementToAdMap.get(config.optString("placementId"))).loadAd();
                }
            }
        });
    }

    private void loadRewardedVideo(final String placement) {
        if (this.mActivity != null) {
            Handler handler = new Handler(Looper.getMainLooper());
            handler.post(new Runnable() { // from class: com.ironsource.adapters.facebook.FacebookAdapter.10
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (!TextUtils.isEmpty(placement)) {
                            RewardedVideoAd rewardedVideoAd = new RewardedVideoAd(FacebookAdapter.this.mActivity, placement);
                            rewardedVideoAd.setAdListener(FacebookAdapter.this.mRewardedVideoAdListener);
                            rewardedVideoAd.loadAd();
                            FacebookAdapter.this.mRewardedVideoPlacementToAdMap.put(placement, rewardedVideoAd);
                        }
                    } catch (Exception e) {
                        if (FacebookAdapter.this.mRewardedVideoPlacementToListenerMap.get(placement) != null) {
                            ((RewardedVideoSmashListener) FacebookAdapter.this.mRewardedVideoPlacementToListenerMap.get(placement)).onRewardedVideoAvailabilityChanged(false);
                        }
                    }
                }
            });
        }
    }
}
