package com.ironsource.adapters.ris;

import android.app.Activity;
import android.text.TextUtils;
import com.ironsource.mediationsdk.AbstractAdapter;
import com.ironsource.mediationsdk.AbstractSmash;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.SessionDepthManager;
import com.ironsource.sdk.SSAFactory;
import com.ironsource.sdk.SSAPublisher;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.data.AdUnitsReady;
import com.ironsource.sdk.listeners.OnRewardedVideoListener;
import com.ironsource.sdk.utils.SDKUtils;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class RISAdapter extends AbstractAdapter implements OnRewardedVideoListener {
    private final String AD_VISIBLE_EVENT_NAME;
    private final String DYNAMIC_CONTROLLER_CONFIG;
    private final String DYNAMIC_CONTROLLER_DEBUG_MODE;
    private final String DYNAMIC_CONTROLLER_URL;
    private boolean hasAdAvailable;
    private boolean mConsent;
    private boolean mDidReportInitStatus;
    private boolean mDidSetConsent;
    private SSAPublisher mSSAPublisher;

    public static RISAdapter startAdapter(String providerName) {
        return new RISAdapter(providerName);
    }

    private RISAdapter(String providerName) {
        super(providerName);
        this.hasAdAvailable = false;
        this.mDidReportInitStatus = false;
        this.DYNAMIC_CONTROLLER_URL = "controllerUrl";
        this.DYNAMIC_CONTROLLER_DEBUG_MODE = "debugMode";
        this.DYNAMIC_CONTROLLER_CONFIG = Constants.RequestParameters.CONTROLLER_CONFIG;
        this.AD_VISIBLE_EVENT_NAME = "impressions";
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getVersion() {
        return IronSourceUtils.getSDKVersion();
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    public String getCoreSDKVersion() {
        return SDKUtils.getSDKVersion();
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onResume(Activity activity) {
        if (this.mSSAPublisher != null) {
            this.mSSAPublisher.onResume(activity);
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter, com.ironsource.mediationsdk.sdk.BaseApi
    public void onPause(Activity activity) {
        if (this.mSSAPublisher != null) {
            this.mSSAPublisher.onPause(activity);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void initRewardedVideo(Activity activity, String appKey, String userId, JSONObject config, RewardedVideoSmashListener listener) {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void fetchRewardedVideo(JSONObject config) {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public boolean isRewardedVideoAvailable(JSONObject config) {
        return false;
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void showRewardedVideo(JSONObject config, RewardedVideoSmashListener listener) {
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void initInterstitial(final Activity activity, final String appKey, final String userId, JSONObject config, InterstitialSmashListener listener) {
        SDKUtils.setControllerUrl(config.optString("controllerUrl"));
        if (isAdaptersDebugEnabled()) {
            SDKUtils.setDebugMode(3);
        } else {
            SDKUtils.setDebugMode(config.optInt("debugMode", 0));
        }
        SDKUtils.setControllerConfig(config.optString(Constants.RequestParameters.CONTROLLER_CONFIG, ""));
        activity.runOnUiThread(new Runnable() { // from class: com.ironsource.adapters.ris.RISAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    RISAdapter.this.mSSAPublisher = SSAFactory.getPublisherInstance(activity);
                    if (RISAdapter.this.mDidSetConsent) {
                        RISAdapter.this.applyConsent(RISAdapter.this.mConsent);
                    }
                    SSAFactory.getPublisherInstance(activity).initRewardedVideo(appKey, userId, RISAdapter.this.getProviderName(), new HashMap(), RISAdapter.this);
                } catch (Exception e) {
                    RISAdapter.this.onRVInitFail(e.getMessage());
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void loadInterstitial(JSONObject config, InterstitialSmashListener listener) {
        if (this.hasAdAvailable) {
            for (InterstitialSmashListener smash : this.mAllInterstitialSmashes) {
                if (smash != null) {
                    smash.onInterstitialAdReady();
                }
            }
            return;
        }
        for (InterstitialSmashListener smash2 : this.mAllInterstitialSmashes) {
            if (smash2 != null) {
                smash2.onInterstitialAdLoadFailed(ErrorBuilder.buildLoadFailedError("No Ads to Load"));
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
            this.mSSAPublisher.showRewardedVideo(showParams);
            return;
        }
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdShowFailed(new IronSourceError(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW, "Please call init before calling showRewardedVideo"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public boolean isInterstitialReady(JSONObject config) {
        return this.hasAdAvailable;
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVInitSuccess(AdUnitsReady adUnitsReady) {
        log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + ":onRVInitSuccess()", 1);
        int numOfAdUnits = 0;
        try {
            numOfAdUnits = Integer.parseInt(adUnitsReady.getNumOfAdUnits());
        } catch (NumberFormatException e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "onRVInitSuccess:parseInt()", e);
        }
        this.hasAdAvailable = numOfAdUnits > 0;
        if (!this.mDidReportInitStatus) {
            this.mDidReportInitStatus = true;
            for (InterstitialSmashListener smash : this.mAllInterstitialSmashes) {
                if (smash != null) {
                    smash.onInterstitialInitSuccess();
                }
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVInitFail(String description) {
        log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + ":onRVInitFail()", 1);
        this.hasAdAvailable = false;
        if (!this.mDidReportInitStatus) {
            this.mDidReportInitStatus = true;
            for (InterstitialSmashListener smash : this.mAllInterstitialSmashes) {
                if (smash != null) {
                    smash.onInterstitialInitFailed(ErrorBuilder.buildInitFailedError(description, "Interstitial"));
                }
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVNoMoreOffers() {
        log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + ":onRVNoMoreOffers()", 1);
        if (!this.mDidReportInitStatus) {
            this.mDidReportInitStatus = true;
            for (InterstitialSmashListener smash : this.mAllInterstitialSmashes) {
                if (smash != null) {
                    smash.onInterstitialInitSuccess();
                }
            }
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVAdCredited(int credits) {
        log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + ":onRVAdCredited()", 1);
        if (this.mRewardedInterstitial != null) {
            this.mRewardedInterstitial.onInterstitialAdRewarded();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVAdClosed() {
        log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + ":onRVAdClosed()", 1);
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdClosed();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVAdOpened() {
        log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + ":onRVAdOpened()", 1);
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdShowSucceeded();
            this.mActiveInterstitialSmash.onInterstitialAdOpened();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVShowFail(String description) {
        log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + ":onRVShowFail()", 1);
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdShowFailed(new IronSourceError(IronSourceError.ERROR_CODE_NO_ADS_TO_SHOW, "Show Failed"));
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVAdClicked() {
        log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + ":onRVAdClicked()", 1);
        if (this.mActiveInterstitialSmash != null) {
            this.mActiveInterstitialSmash.onInterstitialAdClicked();
        }
    }

    @Override // com.ironsource.sdk.listeners.OnRewardedVideoListener
    public void onRVEventNotificationReceived(String eventName, JSONObject extData) {
        if (extData != null) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :onRISEventNotificationReceived: " + eventName + " extData: " + extData.toString(), 1);
            if (!TextUtils.isEmpty(eventName) && "impressions".equals(eventName) && this.mActiveInterstitialSmash != null) {
                this.mActiveInterstitialSmash.onInterstitialAdVisible();
            }
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    protected void setMediationState(AbstractSmash.MEDIATION_STATE state, String adUnit) {
        if (this.mSSAPublisher != null) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, getProviderName() + " :setMediationState(RIS:(rewardedvideo)):" + adUnit + " , " + getProviderName() + " , " + state.getValue() + ")", 1);
            this.mSSAPublisher.setMediationState("rewardedvideo", getProviderName(), state.getValue());
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdapter
    protected void setConsent(boolean consent) {
        this.mConsent = consent;
        this.mDidSetConsent = true;
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
