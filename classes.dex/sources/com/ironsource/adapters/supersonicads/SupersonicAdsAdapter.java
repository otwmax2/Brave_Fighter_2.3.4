package com.ironsource.adapters.supersonicads;

import android.app.Activity;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.AbstractSmash;
import com.ironsource.mediationsdk.IntegrationData;
import com.ironsource.mediationsdk.IronSourceObject;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.InternalOfferwallListener;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.sdk.OfferwallAdapterApi;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.SessionDepthManager;
import com.ironsource.sdk.SSAFactory;
import com.ironsource.sdk.SSAPublisher;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.data.AdUnitsReady;
import com.ironsource.sdk.listeners.OnInterstitialListener;
import com.ironsource.sdk.listeners.OnOfferWallListener;
import com.ironsource.sdk.listeners.OnRewardedVideoListener;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class SupersonicAdsAdapter extends AbstractAdapter implements OfferwallAdapterApi, OnOfferWallListener, OnInterstitialListener, OnRewardedVideoListener {
    private static final String VERSION = "6.7.9.1";
    private final String AD_VISIBLE_EVENT_NAME;
    private final String APPLICATION_PRIVATE_KEY;
    private final String APPLICATION_USER_AGE_GROUP;
    private final String APPLICATION_USER_GENDER;
    private final String CAMPAIGN_ID;
    private final String CLIENT_SIDE_CALLBACKS;
    private final String CUSTOM_PARAM_PREFIX;
    private final String CUSTOM_SEGMENT;
    private final String DYNAMIC_CONTROLLER_CONFIG;
    private final String DYNAMIC_CONTROLLER_DEBUG_MODE;
    private final String DYNAMIC_CONTROLLER_URL;
    private final String ITEM_COUNT;
    private final String ITEM_NAME;
    private final String ITEM_SIGNATURE;
    private final String LANGUAGE;
    private final String MAX_VIDEO_LENGTH;
    private final String OW_PLACEMENT_ID;
    private final String SDK_PLUGIN_TYPE;
    private final String TIMESTAMP;
    private boolean mConsent;
    private boolean mDidSetConsent;
    private boolean mDidSetInitParams;
    private boolean mIsRVAvailable;
    private String mMediationSegment;
    private InternalOfferwallListener mOfferwallListener;
    private SSAPublisher mSSAPublisher;
    private String mUserAgeGroup;
    private String mUserGender;

    public static SupersonicAdsAdapter startAdapter(String providerName) {
        return new SupersonicAdsAdapter(providerName);
    }

    private SupersonicAdsAdapter(String providerName) {
        super(providerName);
        this.TIMESTAMP = DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP;
        this.ITEM_SIGNATURE = "itemSignature";
        this.SDK_PLUGIN_TYPE = "SDKPluginType";
        this.OW_PLACEMENT_ID = "placementId";
        this.mIsRVAvailable = false;
        this.mDidSetInitParams = false;
        this.DYNAMIC_CONTROLLER_URL = "controllerUrl";
        this.DYNAMIC_CONTROLLER_DEBUG_MODE = "debugMode";
        this.DYNAMIC_CONTROLLER_CONFIG = Constants.RequestParameters.CONTROLLER_CONFIG;
        this.APPLICATION_USER_GENDER = "applicationUserGender";
        this.APPLICATION_USER_AGE_GROUP = "applicationUserAgeGroup";
        this.LANGUAGE = "language";
        this.MAX_VIDEO_LENGTH = "maxVideoLength";
        this.CAMPAIGN_ID = "campaignId";
        this.CUSTOM_PARAM_PREFIX = "custom_";
        this.CUSTOM_SEGMENT = "custom_Segment";
        this.ITEM_NAME = "itemName";
        this.ITEM_COUNT = "itemCount";
        this.APPLICATION_PRIVATE_KEY = "privateKey";
        this.CLIENT_SIDE_CALLBACKS = Constants.ParametersKeys.USE_CLIENT_SIDE_CALLBACKS;
        this.AD_VISIBLE_EVENT_NAME = "impressions";
    }

    public static IntegrationData getIntegrationData(Activity activity) {
        IntegrationData ret = new IntegrationData(IronSourceConstants.IRONSOURCE_CONFIG_NAME, VERSION);
        ret.activities = new String[]{"com.ironsource.sdk.controller.ControllerActivity", "com.ironsource.sdk.controller.InterstitialActivity", "com.ironsource.sdk.controller.OpenUrlActivity"};
        return ret;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getVersion() {
        return VERSION;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return SDKUtils.getSDKVersion();
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onPause(Activity activity) {
        if (this.mSSAPublisher != null) {
            this.mSSAPublisher.onPause(activity);
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onResume(Activity activity) {
        if (this.mSSAPublisher != null) {
            this.mSSAPublisher.onResume(activity);
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void setAge(int age) {
        if (age >= 13 && age <= 17) {
            this.mUserAgeGroup = "1";
            return;
        }
        if (age >= 18 && age <= 20) {
            this.mUserAgeGroup = "2";
            return;
        }
        if (age >= 21 && age <= 24) {
            this.mUserAgeGroup = "3";
            return;
        }
        if (age >= 25 && age <= 34) {
            this.mUserAgeGroup = "4";
            return;
        }
        if (age >= 35 && age <= 44) {
            this.mUserAgeGroup = "5";
            return;
        }
        if (age >= 45 && age <= 54) {
            this.mUserAgeGroup = "6";
            return;
        }
        if (age >= 55 && age <= 64) {
            this.mUserAgeGroup = "7";
        } else if (age > 65 && age <= 120) {
            this.mUserAgeGroup = "8";
        } else {
            this.mUserAgeGroup = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void setGender(String gender) {
        this.mUserGender = gender;
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void setMediationSegment(String segment) {
        this.mMediationSegment = segment;
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void initRewardedVideo(final Activity activity, final String appKey, final String userId, final JSONObject config, RewardedVideoSmashListener listener) {
        if (!this.mDidSetInitParams) {
            setParamsBeforeInit(config);
        }
        activity.runOnUiThread(new Runnable() { // from class: com.ironsource.adapters.supersonicads.SupersonicAdsAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SupersonicAdsAdapter.this.mSSAPublisher = SSAFactory.getPublisherInstance(activity);
                    HashMap<String, String> rewardedVideoExtraParams = SupersonicAdsAdapter.this.getRewardedVideoExtraParams(config);
                    if (SupersonicAdsAdapter.this.mDidSetConsent) {
                        SupersonicAdsAdapter.this.applyConsent(SupersonicAdsAdapter.this.mConsent);
                    }
                    SupersonicAdsAdapter.this.mSSAPublisher.initRewardedVideo(appKey, userId, SupersonicAdsAdapter.this.getProviderName(), rewardedVideoExtraParams, SupersonicAdsAdapter.this);
                } catch (Exception e) {
                    e.printStackTrace();
                    SupersonicAdsAdapter.this.onRVInitFail(Constants.JSMethods.INIT_REWARDED_VIDEO);
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void fetchRewardedVideo(JSONObject config) {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void showRewardedVideo(JSONObject config, RewardedVideoSmashListener listener) {
        this.mActiveRewardedVideoSmash = listener;
        if (this.mSSAPublisher != null) {
            int sessionDepth = SessionDepthManager.getInstance().getSessionDepth(1);
            JSONObject showParams = new JSONObject();
            try {
                showParams.put("demandSourceName", getProviderName());
                showParams.put(Constants.RequestParameters.SESSION_DEPTH, sessionDepth);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            this.mSSAPublisher.showRewardedVideo(showParams);
            return;
        }
        this.mIsRVAvailable = false;
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
    public synchronized boolean isRewardedVideoAvailable(JSONObject config) {
        return this.mIsRVAvailable;
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void initInterstitial(final Activity activity, final String appKey, final String userId, JSONObject config, InterstitialSmashListener listener) {
        if (!this.mDidSetInitParams) {
            setParamsBeforeInit(config);
        }
        activity.runOnUiThread(new Runnable() { // from class: com.ironsource.adapters.supersonicads.SupersonicAdsAdapter.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    SupersonicAdsAdapter.this.mSSAPublisher = SSAFactory.getPublisherInstance(activity);
                    HashMap<String, String> interstitialExtraParams = SupersonicAdsAdapter.this.getInterstitialExtraParams();
                    if (SupersonicAdsAdapter.this.mDidSetConsent) {
                        SupersonicAdsAdapter.this.applyConsent(SupersonicAdsAdapter.this.mConsent);
                    }
                    SupersonicAdsAdapter.this.mSSAPublisher.initInterstitial(appKey, userId, SupersonicAdsAdapter.this.getProviderName(), interstitialExtraParams, SupersonicAdsAdapter.this);
                } catch (Exception e) {
                    e.printStackTrace();
                    SupersonicAdsAdapter.this.onInterstitialInitFailed(e.getMessage());
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void loadInterstitial(JSONObject config, InterstitialSmashListener listener) {
        if (this.mSSAPublisher != null) {
            JSONObject loadParams = new JSONObject();
            try {
                loadParams.put("demandSourceName", getProviderName());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            this.mSSAPublisher.loadInterstitial(loadParams);
            return;
        }
        log(IronSourceLogger.IronSourceTag.NATIVE, "Please call initInterstitial before calling loadInterstitial", 2);
        for (InterstitialSmashListener smash : this.mAllInterstitialSmashes) {
            if (smash != null) {
                smash.onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError("Load was called before Init"));
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void showInterstitial(JSONObject config, InterstitialSmashListener listener) {
        this.mActiveInterstitialSmash = listener;
        if (this.mSSAPublisher != null) {
            int sessionDepth = SessionDepthManager.getInstance().getSessionDepth(2);
            JSONObject showParams = new JSONObject();
            try {
                showParams.put("demandSourceName", getProviderName());
                showParams.put(Constants.RequestParameters.SESSION_DEPTH, sessionDepth);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            this.mSSAPublisher.showInterstitial(showParams);
            return;
        }
        log(IronSourceLogger.IronSourceTag.NATIVE, "Please call loadInterstitial before calling showInterstitial", 2);
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdShowFailed(ErrorBuilder.buildNoAdsToShowError("Interstitial"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public boolean isInterstitialReady(JSONObject config) {
        return this.mSSAPublisher != null && this.mSSAPublisher.isInterstitialAdAvailable(getProviderName());
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallAdapterApi
    public void setInternalOfferwallListener(InternalOfferwallListener listener) {
        this.mOfferwallListener = listener;
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallAdapterApi
    public void initOfferwall(final Activity activity, final String appKey, final String userId, final JSONObject config) {
        if (!this.mDidSetInitParams) {
            setParamsBeforeInit(config);
        }
        activity.runOnUiThread(new Runnable() { // from class: com.ironsource.adapters.supersonicads.SupersonicAdsAdapter.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Map<String, String> offerwallExtraParams = SupersonicAdsAdapter.this.getOfferwallExtraParams(config);
                    SupersonicAdsAdapter.this.mSSAPublisher = SSAFactory.getPublisherInstance(activity);
                    if (SupersonicAdsAdapter.this.mDidSetConsent) {
                        SupersonicAdsAdapter.this.applyConsent(SupersonicAdsAdapter.this.mConsent);
                    }
                    SupersonicAdsAdapter.this.mSSAPublisher.initOfferWall(appKey, userId, offerwallExtraParams, SupersonicAdsAdapter.this);
                } catch (Exception e) {
                    e.printStackTrace();
                    IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.ADAPTER_API, SupersonicAdsAdapter.this.getProviderName() + ":initOfferwall(userId:" + userId + ")", e);
                    SupersonicAdsAdapter.this.mOfferwallListener.onOfferwallAvailable(false, ErrorBuilder.buildInitFailedError("Adapter initialization failure - " + SupersonicAdsAdapter.this.getProviderName() + " - " + e.getMessage(), IronSourceConstants.OFFERWALL_AD_UNIT));
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallAdapterApi
    public void getOfferwallCredits() {
        if (this.mSSAPublisher != null) {
            String appKey = IronSourceObject.getInstance().getIronSourceAppKey();
            String userId = IronSourceObject.getInstance().getIronSourceUserId();
            this.mSSAPublisher.getOfferWallCredits(appKey, userId, this);
            return;
        }
        log(IronSourceLogger.IronSourceTag.NATIVE, "Please call init before calling getOfferwallCredits", 2);
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallAdapterApi
    public void showOfferwall(String placementId, JSONObject config) {
        Map<String, String> offerwallExtraParams = getOfferwallExtraParams(config);
        if (offerwallExtraParams != null) {
            offerwallExtraParams.put("placementId", placementId);
        }
        if (this.mSSAPublisher != null) {
            this.mSSAPublisher.showOfferWall(offerwallExtraParams);
        } else {
            log(IronSourceLogger.IronSourceTag.NATIVE, "Please call init before calling showOfferwall", 2);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallAdapterApi
    public boolean isOfferwallAvailable() {
        return true;
    }

    private synchronized void setParamsBeforeInit(JSONObject config) {
        this.mDidSetInitParams = true;
        SDKUtils.setControllerUrl(config.optString("controllerUrl"));
        if (isAdaptersDebugEnabled()) {
            SDKUtils.setDebugMode(3);
        } else {
            SDKUtils.setDebugMode(config.optInt("debugMode", 0));
        }
        SDKUtils.setControllerConfig(config.optString(Constants.RequestParameters.CONTROLLER_CONFIG, ""));
    }

    private HashMap<String, String> getGenenralExtraParams() {
        HashMap<String, String> params = new HashMap<>();
        if (!TextUtils.isEmpty(this.mUserAgeGroup)) {
            params.put("applicationUserAgeGroup", this.mUserAgeGroup);
        }
        if (!TextUtils.isEmpty(this.mUserGender)) {
            params.put("applicationUserGender", this.mUserGender);
        }
        String pluginType = getPluginType();
        if (!TextUtils.isEmpty(pluginType)) {
            params.put("SDKPluginType", pluginType);
        }
        return params;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, String> getRewardedVideoExtraParams(JSONObject config) {
        HashMap<String, String> rvExtraParams = getGenenralExtraParams();
        String language = config.optString("language");
        if (!TextUtils.isEmpty(language)) {
            rvExtraParams.put("language", language);
        }
        String maxVideoLength = config.optString("maxVideoLength");
        if (!TextUtils.isEmpty(maxVideoLength)) {
            rvExtraParams.put("maxVideoLength", maxVideoLength);
        }
        String campaignId = config.optString("campaignId");
        if (!TextUtils.isEmpty(campaignId)) {
            rvExtraParams.put("campaignId", campaignId);
        }
        if (!TextUtils.isEmpty(this.mMediationSegment)) {
            rvExtraParams.put("custom_Segment", this.mMediationSegment);
        }
        addItemNameCountSignature(rvExtraParams, config);
        Map<String, String> customParams = SupersonicConfig.getConfigObj().getRewardedVideoCustomParams();
        if (customParams != null && !customParams.isEmpty()) {
            rvExtraParams.putAll(customParams);
        }
        return rvExtraParams;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, String> getInterstitialExtraParams() {
        return getGenenralExtraParams();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public HashMap<String, String> getOfferwallExtraParams(JSONObject config) {
        HashMap<String, String> owExtraParams = getGenenralExtraParams();
        String language = config.optString("language");
        if (!TextUtils.isEmpty(language)) {
            owExtraParams.put("language", language);
        }
        boolean clientSideCallbacks = SupersonicConfig.getConfigObj().getClientSideCallbacks();
        owExtraParams.put(Constants.ParametersKeys.USE_CLIENT_SIDE_CALLBACKS, String.valueOf(clientSideCallbacks));
        Map<String, String> customParams = SupersonicConfig.getConfigObj().getOfferwallCustomParams();
        if (customParams != null && !customParams.isEmpty()) {
            owExtraParams.putAll(customParams);
        }
        addItemNameCountSignature(owExtraParams, config);
        return owExtraParams;
    }

    private void addItemNameCountSignature(HashMap<String, String> params, JSONObject config) {
        try {
            String itemName = config.optString("itemName");
            int itemCount = config.optInt("itemCount", -1);
            String privateKey = config.optString("privateKey");
            boolean shouldAddSignature = true;
            if (TextUtils.isEmpty(itemName)) {
                shouldAddSignature = false;
            } else {
                params.put("itemName", itemName);
            }
            if (TextUtils.isEmpty(privateKey)) {
                shouldAddSignature = false;
            }
            if (itemCount == -1) {
                shouldAddSignature = false;
            } else {
                params.put("itemCount", String.valueOf(itemCount));
            }
            if (shouldAddSignature) {
                int timestamp = IronSourceUtils.getCurrentTimestamp();
                params.put(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP, String.valueOf(timestamp));
                params.put("itemSignature", createItemSig(timestamp, itemName, itemCount, privateKey));
            }
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.ADAPTER_API, " addItemNameCountSignature", e);
        }
    }

    private String createItemSig(int timestamp, String itemName, int itemCount, String privateKey) {
        return IronSourceUtils.getMD5(timestamp + itemName + itemCount + privateKey);
    }

    private String createMinimumOfferCommissionSig(double min, String privateKey) {
        return IronSourceUtils.getMD5(min + privateKey);
    }

    private String createUserCreationDateSig(String userid, String uCreationDate, String privateKey) {
        return IronSourceUtils.getMD5(userid + uCreationDate + privateKey);
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVNoMoreOffers() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onRVNoMoreOffers ", 1);
        this.mIsRVAvailable = false;
        for (RewardedVideoSmashListener smash : this.mAllRewardedVideoSmashes) {
            if (smash != null) {
                smash.onRewardedVideoAvailabilityChanged(false);
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVInitSuccess(AdUnitsReady aur) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onRVInitSuccess ", 1);
        int numOfAdUnits = 0;
        try {
            numOfAdUnits = Integer.parseInt(aur.getNumOfAdUnits());
        } catch (NumberFormatException e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "onRVInitSuccess:parseInt()", e);
        }
        boolean availability = numOfAdUnits > 0;
        this.mIsRVAvailable = availability;
        for (RewardedVideoSmashListener smash : this.mAllRewardedVideoSmashes) {
            if (smash != null) {
                smash.onRewardedVideoAvailabilityChanged(availability);
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVInitFail(String error) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onRVInitFail ", 1);
        for (RewardedVideoSmashListener smash : this.mAllRewardedVideoSmashes) {
            if (smash != null) {
                smash.onRewardedVideoAvailabilityChanged(false);
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVAdClicked() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onRVAdClicked ", 1);
        if (this.mActiveRewardedVideoSmash != null) {
            this.mActiveRewardedVideoSmash.onRewardedVideoAdClicked();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVEventNotificationReceived(String eventName, JSONObject extData) {
        if (extData != null) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onRVEventNotificationReceived: " + eventName + " extData: " + extData.toString(), 1);
        }
        if (!TextUtils.isEmpty(eventName) && "impressions".equals(eventName) && this.mActiveRewardedVideoSmash != null) {
            this.mActiveRewardedVideoSmash.onRewardedVideoAdVisible();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVShowFail(String error) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onRVShowFail ", 1);
        if (this.mActiveRewardedVideoSmash != null) {
            this.mActiveRewardedVideoSmash.onRewardedVideoAdShowFailed(new IronSourceError(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW, error));
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVAdCredited(int amount) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onRVAdCredited ", 1);
        if (this.mActiveRewardedVideoSmash != null) {
            this.mActiveRewardedVideoSmash.onRewardedVideoAdRewarded();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVAdClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onRVAdClosed ", 1);
        if (this.mActiveRewardedVideoSmash != null) {
            this.mActiveRewardedVideoSmash.onRewardedVideoAdClosed();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVAdOpened() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onRVAdOpened ", 1);
        if (this.mActiveRewardedVideoSmash != null) {
            this.mActiveRewardedVideoSmash.onRewardedVideoAdOpened();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnInterstitialListener
    public void onInterstitialInitSuccess() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onInterstitialInitSuccess ", 1);
        for (InterstitialSmashListener smash : this.mAllInterstitialSmashes) {
            if (smash != null) {
                smash.onInterstitialInitSuccess();
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnInterstitialListener
    public void onInterstitialInitFailed(String description) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onInterstitialInitFailed ", 1);
        for (InterstitialSmashListener smash : this.mAllInterstitialSmashes) {
            if (smash != null) {
                smash.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(description, "Interstitial"));
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnInterstitialListener
    public void onInterstitialLoadSuccess() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onInterstitialLoadSuccess ", 1);
        for (InterstitialSmashListener smash : this.mAllInterstitialSmashes) {
            if (smash != null) {
                smash.onInterstitialAdReady();
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnInterstitialListener
    public void onInterstitialLoadFailed(String description) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onInterstitialAdLoadFailed ", 1);
        for (InterstitialSmashListener smash : this.mAllInterstitialSmashes) {
            if (smash != null) {
                smash.onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError(description));
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnInterstitialListener
    public void onInterstitialOpen() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onInterstitialAdOpened ", 1);
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdOpened();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnInterstitialListener
    public void onInterstitialClose() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onInterstitialAdClosed ", 1);
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdClosed();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnInterstitialListener
    public void onInterstitialShowSuccess() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onInterstitialAdShowSucceeded ", 1);
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdShowSucceeded();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnInterstitialListener
    public void onInterstitialShowFailed(String description) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onInterstitialAdShowFailed ", 1);
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdShowFailed(ErrorBuilder.buildShowFailedError("Interstitial", description));
        }
    }

    @Override // com.ironsource.sdk.listeners.OnInterstitialListener
    public void onInterstitialClick() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onInterstitialAdClicked ", 1);
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdClicked();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnInterstitialListener
    public void onInterstitialEventNotificationReceived(String eventName, JSONObject extData) {
        if (extData != null) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onInterstitialEventNotificationReceived: " + eventName + " extData: " + extData.toString(), 1);
            if (!TextUtils.isEmpty(eventName) && "impressions".equals(eventName) && this.mActiveInterstitialSmash != null) {
                this.mActiveInterstitialSmash.onInterstitialAdVisible();
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnOfferWallListener
    public void onOfferwallInitSuccess() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onOfferwallInitSuccess ", 1);
        if (this.mOfferwallListener != null) {
            this.mOfferwallListener.onOfferwallAvailable(true);
        }
    }

    @Override // com.ironsource.sdk.listeners.OnOfferWallListener
    public void onOfferwallInitFail(String description) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onOfferwallInitFail ", 1);
        if (this.mOfferwallListener != null) {
            IronSourceError sse = ErrorBuilder.buildGenericError(description);
            this.mOfferwallListener.onOfferwallAvailable(false, sse);
        }
    }

    @Override // com.ironsource.sdk.listeners.OnOfferWallListener
    public void onOfferwallEventNotificationReceived(String eventName, JSONObject extData) {
        if (extData != null) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onOfferwallEventNotificationReceived ", 1);
        }
    }

    @Override // com.ironsource.sdk.listeners.OnOfferWallListener
    public void onOWShowSuccess(String placementId) {
        if (TextUtils.isEmpty(placementId)) {
            log(IronSourceLogger.IronSourceTag.ADAPTER_API, getProviderName() + ":onOWShowSuccess()", 1);
        } else {
            log(IronSourceLogger.IronSourceTag.ADAPTER_API, getProviderName() + ":onOWShowSuccess(placementId:" + placementId + ")", 1);
        }
        if (this.mOfferwallListener != null) {
            this.mOfferwallListener.onOfferwallOpened();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnOfferWallListener
    public void onOWShowFail(String desc) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onOWShowFail ", 1);
        if (this.mOfferwallListener != null) {
            IronSourceError sse = ErrorBuilder.buildGenericError(desc);
            this.mOfferwallListener.onOfferwallShowFailed(sse);
        }
    }

    @Override // com.ironsource.sdk.listeners.OnOfferWallListener
    public void onOWGeneric(String arg0, String arg1) {
    }

    @Override // com.ironsource.sdk.listeners.OnOfferWallListener
    public boolean onOWAdCredited(int credits, int totalCredits, boolean totalCreditsFlag) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onOWAdCredited ", 1);
        return this.mOfferwallListener != null && this.mOfferwallListener.onOfferwallAdCredited(credits, totalCredits, totalCreditsFlag);
    }

    @Override // com.ironsource.sdk.listeners.OnOfferWallListener
    public void onOWAdClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onOWAdClosed ", 1);
        if (this.mOfferwallListener != null) {
            this.mOfferwallListener.onOfferwallClosed();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnOfferWallListener
    public void onGetOWCreditsFailed(String desc) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onGetOWCreditsFailed ", 1);
        if (this.mOfferwallListener != null) {
            IronSourceError sse = ErrorBuilder.buildGenericError(desc);
            this.mOfferwallListener.onGetOfferwallCreditsFailed(sse);
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    protected void setMediationState(AbstractSmash.MEDIATION_STATE state, String adUnit) {
        if (this.mSSAPublisher != null) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :setMediationState(" + adUnit + " , " + getProviderName() + " , " + state.getValue() + ")", 1);
            this.mSSAPublisher.setMediationState(adUnit, getProviderName(), state.getValue());
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    protected void setConsent(boolean consent) {
        this.mDidSetConsent = true;
        this.mConsent = consent;
        applyConsent(consent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void applyConsent(boolean consent) {
        if (this.mSSAPublisher != null) {
            JSONObject consentParams = new JSONObject();
            try {
                consentParams.put(Constants.RequestParameters.GDPR_CONSENT_STATUS, String.valueOf(consent));
                consentParams.put("demandSourceName", getProviderName());
            } catch (JSONException e) {
                e.printStackTrace();
            }
            this.mSSAPublisher.updateConsentInfo(consentParams);
        }
    }
}
