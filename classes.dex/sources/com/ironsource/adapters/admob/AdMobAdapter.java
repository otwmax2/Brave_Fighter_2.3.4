package com.ironsource.adapters.admob;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.FrameLayout;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.InterstitialAd;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.reward.RewardItem;
import com.google.android.gms.ads.reward.RewardedVideoAd;
import com.google.android.gms.ads.reward.RewardedVideoAdListener;
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
public class AdMobAdapter extends AbstractAdapter {
    private static final String CORE_SDK_VERSION = "12.0.1";
    private static final String VERSION = "4.1.6";
    private final String AD_UNIT_ID;
    private final String APP_ID;
    private final String IRONSOURCE_REQUEST_AGENT;
    private ConcurrentHashMap<String, AdView> mAdIdToBannerAd;
    private ConcurrentHashMap<String, InterstitialAd> mAdIdToIsAd;
    private int mAge;
    private Boolean mConsent;
    private boolean mDidInitSdk;
    private int mGender;
    private ConcurrentHashMap<String, Boolean> mInterstitialAdsAvailability;
    private boolean mIsReloading;
    private boolean mIsRewardedVideoReady;
    private RewardedVideoAd mRewardedVideoAd;
    private RewardedVideoAdListener rewardedVideoAdListener;

    public static AdMobAdapter startAdapter(String providerName) {
        return new AdMobAdapter(providerName);
    }

    private AdMobAdapter(String providerName) {
        super(providerName);
        this.IRONSOURCE_REQUEST_AGENT = "ironSource";
        this.mAge = -1;
        this.mIsRewardedVideoReady = false;
        this.mDidInitSdk = false;
        this.AD_UNIT_ID = "adUnitId";
        this.APP_ID = "appId";
        this.mIsReloading = false;
        this.mConsent = null;
        this.rewardedVideoAdListener = new RewardedVideoAdListener() { // from class: com.ironsource.adapters.admob.AdMobAdapter.6
            @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
            public void onRewardedVideoAdLoaded() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoAdLoaded", 1);
                AdMobAdapter.this.mIsRewardedVideoReady = true;
                for (RewardedVideoSmashListener smash : AdMobAdapter.this.mAllRewardedVideoSmashes) {
                    if (smash != null) {
                        smash.onRewardedVideoAvailabilityChanged(true);
                    }
                }
            }

            @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
            public void onRewardedVideoAdOpened() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoAdOpened", 1);
                AdMobAdapter.this.mIsRewardedVideoReady = false;
                if (AdMobAdapter.this.mActiveRewardedVideoSmash != null) {
                    AdMobAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdOpened();
                }
                for (RewardedVideoSmashListener smash : AdMobAdapter.this.mAllRewardedVideoSmashes) {
                    if (smash != null) {
                        smash.onRewardedVideoAvailabilityChanged(false);
                    }
                }
            }

            @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
            public void onRewardedVideoStarted() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoStarted", 1);
                if (AdMobAdapter.this.mActiveRewardedVideoSmash != null) {
                    AdMobAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdStarted();
                }
            }

            public void onRewardedVideoCompleted() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoCompleted", 1);
                if (AdMobAdapter.this.mActiveRewardedVideoSmash != null) {
                    AdMobAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdEnded();
                }
            }

            @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
            public void onRewardedVideoAdClosed() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoAdClosed", 1);
                if (AdMobAdapter.this.mActiveRewardedVideoSmash != null) {
                    AdMobAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdClosed();
                }
            }

            @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
            public void onRewarded(RewardItem rewardItem) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewarded", 1);
                if (AdMobAdapter.this.mActiveRewardedVideoSmash != null) {
                    AdMobAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdRewarded();
                }
            }

            @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
            public void onRewardedVideoAdLeftApplication() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoAdLeftApplication", 1);
                if (AdMobAdapter.this.mActiveRewardedVideoSmash != null) {
                    AdMobAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdClicked();
                }
            }

            @Override // com.google.android.gms.ads.reward.RewardedVideoAdListener
            public void onRewardedVideoAdFailedToLoad(int errorCode) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onRewardedVideoAdFailedToLoad", 1);
                AdMobAdapter.this.mIsRewardedVideoReady = false;
                for (RewardedVideoSmashListener smash : AdMobAdapter.this.mAllRewardedVideoSmashes) {
                    if (smash != null) {
                        smash.onRewardedVideoAvailabilityChanged(false);
                    }
                }
            }
        };
        this.mAllBannerSmashes = new CopyOnWriteArrayList<>();
        this.mAdIdToIsAd = new ConcurrentHashMap<>();
        this.mInterstitialAdsAvailability = new ConcurrentHashMap<>();
        this.mAdIdToBannerAd = new ConcurrentHashMap<>();
    }

    public static IntegrationData getIntegrationData(Activity activity) {
        IntegrationData ret = new IntegrationData("AdMob", VERSION);
        ret.activities = new String[]{AdActivity.CLASS_NAME};
        return ret;
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
    public void onResume(final Activity activity) {
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                if (AdMobAdapter.this.mRewardedVideoAd != null) {
                    AdMobAdapter.this.mRewardedVideoAd.resume(activity);
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onPause(final Activity activity) {
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                if (AdMobAdapter.this.mRewardedVideoAd != null) {
                    AdMobAdapter.this.mRewardedVideoAd.pause(activity);
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void setAge(int age) {
        this.mAge = age;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void setGender(String gender) {
        switch (gender) {
            case "female":
                this.mGender = 2;
                break;
            case "male":
                this.mGender = 1;
                break;
            default:
                this.mGender = 0;
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void initSDK(Activity activity, String appKey) {
        if (!this.mDidInitSdk) {
            if (!TextUtils.isEmpty(appKey)) {
                MobileAds.initialize(activity.getApplicationContext(), appKey);
            } else {
                MobileAds.initialize(activity.getApplicationContext());
            }
            this.mDidInitSdk = true;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void initRewardedVideo(final Activity activity, String appKey, String userId, final JSONObject config, RewardedVideoSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("appId"))) {
            if (listener != null) {
                listener.onRewardedVideoAvailabilityChanged(false);
            }
        } else {
            Handler h = new Handler(Looper.getMainLooper());
            h.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.3
                @Override // java.lang.Runnable
                public void run() {
                    AdMobAdapter.this.initSDK(activity, config.optString("appId"));
                    AdMobAdapter.this.mRewardedVideoAd = MobileAds.getRewardedVideoAdInstance(activity);
                    AdMobAdapter.this.mRewardedVideoAd.setRewardedVideoAdListener(AdMobAdapter.this.rewardedVideoAdListener);
                    AdMobAdapter.this.loadRewardedVideoAd(config);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void fetchRewardedVideo(JSONObject config) {
        loadRewardedVideoAd(config);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loadRewardedVideoAd(final JSONObject config) {
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.4
            @Override // java.lang.Runnable
            public void run() {
                String RVAdUnitId = config.optString("adUnitId");
                AdRequest adRequest = AdMobAdapter.this.createAdRequest();
                AdMobAdapter.this.mRewardedVideoAd.loadAd(RVAdUnitId, adRequest);
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public boolean isRewardedVideoAvailable(JSONObject config) {
        return this.mRewardedVideoAd != null && this.mIsRewardedVideoReady;
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void showRewardedVideo(JSONObject config, RewardedVideoSmashListener listener) {
        this.mActiveRewardedVideoSmash = listener;
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.5
            @Override // java.lang.Runnable
            public void run() {
                if (AdMobAdapter.this.mRewardedVideoAd.isLoaded()) {
                    AdMobAdapter.this.mRewardedVideoAd.show();
                    return;
                }
                if (AdMobAdapter.this.mActiveRewardedVideoSmash != null) {
                    AdMobAdapter.this.mActiveRewardedVideoSmash.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                }
                for (RewardedVideoSmashListener smash : AdMobAdapter.this.mAllRewardedVideoSmashes) {
                    if (smash != null) {
                        smash.onRewardedVideoAvailabilityChanged(false);
                    }
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void initInterstitial(Activity activity, String appKey, String userId, final JSONObject config, InterstitialSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("appId"))) {
            if (listener != null) {
                listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params: 'appId' ", "Interstitial"));
                return;
            }
            return;
        }
        final String adUnitId = config.optString("adUnitId");
        if (TextUtils.isEmpty(adUnitId)) {
            if (listener != null) {
                listener.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError("Missing params: 'adUnitId' ", "Interstitial"));
                return;
            }
            return;
        }
        initSDK(activity, config.optString("appId"));
        InterstitialAd ad = new InterstitialAd(activity);
        ad.setAdUnitId(adUnitId);
        this.mAdIdToIsAd.put(adUnitId, ad);
        ad.setAdListener(new AdListener() { // from class: com.ironsource.adapters.admob.AdMobAdapter.7
            @Override // com.google.android.gms.ads.AdListener
            public void onAdClosed() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onAdClosed " + adUnitId, 1);
                if (AdMobAdapter.this.mInterstitialPlacementToListenerMap.containsKey(adUnitId)) {
                    ((InterstitialSmashListener) AdMobAdapter.this.mInterstitialPlacementToListenerMap.get(adUnitId)).onInterstitialAdClosed();
                }
                AdMobAdapter.this.setInterstitialAdAvailability(config);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int errorCode) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onAdFailedToLoad " + adUnitId, 1);
                if (AdMobAdapter.this.mInterstitialPlacementToListenerMap.containsKey(adUnitId)) {
                    String adapterError = AdMobAdapter.this.getErrorString(errorCode) + "( " + errorCode + " )";
                    ((InterstitialSmashListener) AdMobAdapter.this.mInterstitialPlacementToListenerMap.get(adUnitId)).onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError(adapterError));
                }
                AdMobAdapter.this.setInterstitialAdAvailability(config);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLeftApplication() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onAdLeftApplication " + adUnitId, 1);
                if (AdMobAdapter.this.mInterstitialPlacementToListenerMap.containsKey(adUnitId)) {
                    ((InterstitialSmashListener) AdMobAdapter.this.mInterstitialPlacementToListenerMap.get(adUnitId)).onInterstitialAdClicked();
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onAdOpened " + adUnitId, 1);
                if (AdMobAdapter.this.mInterstitialPlacementToListenerMap.containsKey(adUnitId)) {
                    ((InterstitialSmashListener) AdMobAdapter.this.mInterstitialPlacementToListenerMap.get(adUnitId)).onInterstitialAdOpened();
                    ((InterstitialSmashListener) AdMobAdapter.this.mInterstitialPlacementToListenerMap.get(adUnitId)).onInterstitialAdShowSucceeded();
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onAdLoaded " + adUnitId, 1);
                if (AdMobAdapter.this.mInterstitialPlacementToListenerMap.containsKey(adUnitId)) {
                    ((InterstitialSmashListener) AdMobAdapter.this.mInterstitialPlacementToListenerMap.get(adUnitId)).onInterstitialAdReady();
                }
                AdMobAdapter.this.setInterstitialAdAvailability(config);
            }
        });
        if (listener != null) {
            this.mInterstitialPlacementToListenerMap.put(adUnitId, listener);
            listener.onInterstitialInitSuccess();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void loadInterstitial(final JSONObject config, final InterstitialSmashListener listener) {
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.8
            @Override // java.lang.Runnable
            public void run() {
                InterstitialAd ad = AdMobAdapter.this.getInterstitialAd(config);
                if (ad == null) {
                    if (listener != null) {
                        listener.onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError("invalid adUnitId"));
                    }
                } else {
                    if (ad.isLoaded()) {
                        String adUnitId = config.optString("adUnitId");
                        if (AdMobAdapter.this.mInterstitialPlacementToListenerMap.containsKey(adUnitId)) {
                            ((InterstitialSmashListener) AdMobAdapter.this.mInterstitialPlacementToListenerMap.get(adUnitId)).onInterstitialAdReady();
                            return;
                        }
                        return;
                    }
                    if (!ad.isLoading()) {
                        ad.loadAd(AdMobAdapter.this.createAdRequest());
                    }
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void showInterstitial(final JSONObject config, final InterstitialSmashListener listener) {
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.9
            @Override // java.lang.Runnable
            public void run() {
                InterstitialAd ad = AdMobAdapter.this.getInterstitialAd(config);
                if (ad == null || !ad.isLoaded()) {
                    if (listener != null) {
                        listener.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
                        return;
                    }
                    return;
                }
                ad.show();
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public final boolean isInterstitialReady(JSONObject config) {
        String adUnitId = config.optString("adUnitId");
        if (this.mInterstitialAdsAvailability.get(adUnitId) != null) {
            return this.mInterstitialAdsAvailability.get(adUnitId).booleanValue();
        }
        return false;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public void initBanners(Activity activity, String appKey, String userId, JSONObject config, BannerSmashListener listener) {
        initSDK(activity, config.optString("appId"));
        if (listener != null) {
            listener.onBannerInitSuccess();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdView createBanner(Activity activity, EBannerSize size, JSONObject config, BannerSmashListener listener) {
        String adUnitId = config.optString("adUnitId");
        final AdView adView = new AdView(activity);
        adView.setAdUnitId(adUnitId);
        switch (size) {
            case BANNER:
                adView.setAdSize(new AdSize(-1, 50));
                break;
            case LARGE:
                adView.setAdSize(new AdSize(-1, 90));
                break;
            case RECTANGLE:
                adView.setAdSize(AdSize.MEDIUM_RECTANGLE);
                break;
            case TABLET:
                adView.setAdSize(new AdSize(-1, 90));
                break;
            case SMART:
                adView.setAdSize(AdSize.SMART_BANNER);
                break;
        }
        this.mAdIdToBannerAd.put(adUnitId, adView);
        adView.setAdListener(new AdListener() { // from class: com.ironsource.adapters.admob.AdMobAdapter.10
            @Override // com.google.android.gms.ads.AdListener
            public void onAdClosed() {
                super.onAdClosed();
                if (AdMobAdapter.this.mBannerPlacementToListenerMap.containsKey(adView.getAdUnitId())) {
                    ((BannerSmashListener) AdMobAdapter.this.mBannerPlacementToListenerMap.get(adView.getAdUnitId())).onBannerAdScreenDismissed();
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int errorCode) {
                super.onAdFailedToLoad(errorCode);
                if (AdMobAdapter.this.mBannerPlacementToListenerMap.containsKey(adView.getAdUnitId())) {
                    String adapterError = AdMobAdapter.this.getErrorString(errorCode) + "( " + errorCode + " )";
                    IronSourceError error = ErrorBuilder.buildLoadFailedError(adapterError);
                    ((BannerSmashListener) AdMobAdapter.this.mBannerPlacementToListenerMap.get(adView.getAdUnitId())).onBannerAdLoadFailed(error);
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLeftApplication() {
                super.onAdLeftApplication();
                if (AdMobAdapter.this.mBannerPlacementToListenerMap.containsKey(adView.getAdUnitId())) {
                    ((BannerSmashListener) AdMobAdapter.this.mBannerPlacementToListenerMap.get(adView.getAdUnitId())).onBannerAdClicked();
                    ((BannerSmashListener) AdMobAdapter.this.mBannerPlacementToListenerMap.get(adView.getAdUnitId())).onBannerAdLeftApplication();
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                super.onAdOpened();
                if (AdMobAdapter.this.mBannerPlacementToListenerMap.containsKey(adView.getAdUnitId())) {
                    ((BannerSmashListener) AdMobAdapter.this.mBannerPlacementToListenerMap.get(adView.getAdUnitId())).onBannerAdScreenPresented();
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                super.onAdLoaded();
                if (AdMobAdapter.this.mBannerPlacementToListenerMap.containsKey(adView.getAdUnitId())) {
                    if (!AdMobAdapter.this.mIsReloading) {
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -1);
                        AdMobAdapter.this.mIronSourceBanner.addViewWithFrameLayoutParams(adView, layoutParams);
                        Log.v("Adview", "added the following ad unit:" + adView.getAdUnitId());
                    }
                    ((BannerSmashListener) AdMobAdapter.this.mBannerPlacementToListenerMap.get(adView.getAdUnitId())).onBannerAdLoaded();
                }
            }
        });
        if (listener != null) {
            this.mBannerPlacementToListenerMap.put(adView.getAdUnitId(), listener);
        }
        Log.v("Adview", "AdView is:" + this.mAdIdToBannerAd.get(adView.getAdUnitId()));
        return adView;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterApi
    public void loadBanner(IronSourceBannerLayout banner, final JSONObject config, final BannerSmashListener listener) {
        if (TextUtils.isEmpty(config.optString("adUnitId"))) {
            String errorString = "Banner, " + getProviderName() + " - No ad unit id in the response";
            IronSourceError error = ErrorBuilder.buildLoadFailedError(errorString);
            Log.v("bar", errorString);
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
            handler.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.11
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        AdView adView = AdMobAdapter.this.createBanner(AdMobAdapter.this.mIronSourceBanner.getActivity(), AdMobAdapter.this.mIronSourceBanner.getSize(), config, listener);
                        AdRequest adRequest = AdMobAdapter.this.createAdRequest();
                        adView.loadAd(adRequest);
                    } catch (Exception e) {
                        String errorString2 = "Banner Load Fail, " + AdMobAdapter.this.getProviderName() + " - failed to retrieve AdMob AdView from banner layout";
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
        handler.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.12
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (AdMobAdapter.this.mAdIdToBannerAd.get(config.optString("adUnitId")) != null) {
                        ((AdView) AdMobAdapter.this.mAdIdToBannerAd.get(config.optString("adUnitId"))).destroy();
                        AdMobAdapter.this.mAdIdToBannerAd.remove(config.optString("adUnitId"));
                    }
                } catch (Exception e) {
                    AdMobAdapter.this.log(IronSourceLogger.IronSourceTag.ADAPTER_API, AdMobAdapter.this.getProviderName() + ":destroyBanner() failed with an exception: " + e, 2);
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BannerAdapterApi
    public void reloadBanner(final JSONObject config) {
        this.mIsReloading = true;
        Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.13
            @Override // java.lang.Runnable
            public void run() {
                if (AdMobAdapter.this.mAdIdToBannerAd.get(config.optString("adUnitId")) != null) {
                    AdRequest adRequest = AdMobAdapter.this.createAdRequest();
                    ((AdView) AdMobAdapter.this.mAdIdToBannerAd.get(config.optString("adUnitId"))).loadAd(adRequest);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public AdRequest createAdRequest() {
        AdRequest.Builder builder = new AdRequest.Builder();
        builder.setGender(this.mGender);
        builder.setRequestAgent("ironSource");
        if (this.mAge > -1) {
            builder.tagForChildDirectedTreatment(this.mAge < 13);
        }
        if (this.mConsent != null && !this.mConsent.booleanValue()) {
            Bundle extras = new Bundle();
            extras.putString("npa", "1");
            builder.addNetworkExtrasBundle(com.google.ads.mediation.admob.AdMobAdapter.class, extras);
        }
        return builder.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getErrorString(int errorCode) {
        switch (errorCode) {
            case 0:
                return "Internal error";
            case 1:
                return "The ad request was invalid";
            case 2:
                return "The ad request was unsuccessful due to network connectivity";
            case 3:
                return "The ad request was successful, but no ad was returned due to lack of ad inventory";
            default:
                return "Unknown error";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public InterstitialAd getInterstitialAd(JSONObject config) {
        String adUnitId = config.optString("adUnitId");
        if (TextUtils.isEmpty(adUnitId) || !this.mAdIdToIsAd.containsKey(adUnitId)) {
            return null;
        }
        return this.mAdIdToIsAd.get(adUnitId);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setInterstitialAdAvailability(final JSONObject config) {
        Handler h = new Handler(Looper.getMainLooper());
        h.post(new Runnable() { // from class: com.ironsource.adapters.admob.AdMobAdapter.14
            @Override // java.lang.Runnable
            public void run() {
                InterstitialAd ad = AdMobAdapter.this.getInterstitialAd(config);
                String adUnitId = config.optString("adUnitId");
                if (ad != null && adUnitId != null) {
                    IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setInterstitialAdAvailability for " + adUnitId + ", avilbility " + ad.isLoaded(), 1);
                    AdMobAdapter.this.mInterstitialAdsAvailability.put(adUnitId, Boolean.valueOf(ad.isLoaded()));
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    protected void setConsent(boolean consent) {
        this.mConsent = Boolean.valueOf(consent);
    }
}
