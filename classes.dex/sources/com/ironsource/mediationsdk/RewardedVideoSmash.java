package com.ironsource.mediationsdk;

import android.app.Activity;
import com.ironsource.mediationsdk.AbstractSmash;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.model.ProviderSettings;
import com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashApi;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class RewardedVideoSmash extends AbstractSmash implements RewardedVideoSmashListener, RewardedVideoSmashApi {
    private final String REQUEST_URL_KEY;
    private String mRequestUrl;
    private JSONObject mRewardedVideoAdapterConfigs;
    private RewardedVideoManagerListener mRewardedVideoManagerListener;
    private int mTimeout;

    RewardedVideoSmash(ProviderSettings adapterConfigs, int timeout) {
        super(adapterConfigs);
        this.REQUEST_URL_KEY = IronSourceConstants.REQUEST_URL;
        this.mRewardedVideoAdapterConfigs = adapterConfigs.getRewardedVideoSettings();
        this.mMaxAdsPerIteration = this.mRewardedVideoAdapterConfigs.optInt("maxAdsPerIteration", 99);
        this.mMaxAdsPerSession = this.mRewardedVideoAdapterConfigs.optInt("maxAdsPerSession", 99);
        this.mMaxAdsPerDay = this.mRewardedVideoAdapterConfigs.optInt("maxAdsPerDay", 99);
        this.mRequestUrl = this.mRewardedVideoAdapterConfigs.optString(IronSourceConstants.REQUEST_URL);
        this.mTimeout = timeout;
    }

    @Override // com.ironsource.mediationsdk.AbstractSmash
    void completeIteration() {
        this.mIterationShowCounter = 0;
        setMediationState(isRewardedVideoAvailable() ? AbstractSmash.MEDIATION_STATE.AVAILABLE : AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE);
    }

    @Override // com.ironsource.mediationsdk.AbstractSmash
    void startInitTimer() {
        try {
            this.mInitTimerTask = new TimerTask() { // from class: com.ironsource.mediationsdk.RewardedVideoSmash.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (RewardedVideoSmash.this.mRewardedVideoManagerListener != null) {
                        RewardedVideoSmash.this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, "Timeout for " + RewardedVideoSmash.this.getInstanceName(), 0);
                        RewardedVideoSmash.this.setMediationState(AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE);
                        RewardedVideoSmash.this.mRewardedVideoManagerListener.onRewardedVideoAvailabilityChanged(false, RewardedVideoSmash.this);
                    }
                }
            };
            Timer timer = new Timer();
            if (this.mInitTimerTask != null) {
                timer.schedule(this.mInitTimerTask, this.mTimeout * 1000);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractSmash
    void startLoadTimer() {
    }

    @Override // com.ironsource.mediationsdk.AbstractSmash
    protected String getAdUnitString() {
        return "rewardedvideo";
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashApi
    public void initRewardedVideo(Activity activity, String appKey, String userId) {
        startInitTimer();
        if (this.mAdapter != null) {
            this.mAdapter.addRewardedVideoListener(this);
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":initRewardedVideo()", 1);
            this.mAdapter.initRewardedVideo(activity, appKey, userId, this.mRewardedVideoAdapterConfigs, this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashApi
    public void fetchRewardedVideo() {
        if (this.mAdapter != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":fetchRewardedVideo()", 1);
            this.mAdapter.fetchRewardedVideo(this.mRewardedVideoAdapterConfigs);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashApi
    public void showRewardedVideo() {
        if (this.mAdapter != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":showRewardedVideo()", 1);
            preShow();
            this.mAdapter.showRewardedVideo(this.mRewardedVideoAdapterConfigs, this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashApi
    public boolean isRewardedVideoAvailable() {
        if (this.mAdapter == null) {
            return false;
        }
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":isRewardedVideoAvailable()", 1);
        return this.mAdapter.isRewardedVideoAvailable(this.mRewardedVideoAdapterConfigs);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashApi
    public void setRewardedVideoManagerListener(RewardedVideoManagerListener listener) {
        this.mRewardedVideoManagerListener = listener;
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdShowFailed(IronSourceError error) {
        if (this.mRewardedVideoManagerListener != null) {
            this.mRewardedVideoManagerListener.onRewardedVideoAdShowFailed(error, this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdOpened() {
        if (this.mRewardedVideoManagerListener != null) {
            this.mRewardedVideoManagerListener.onRewardedVideoAdOpened(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClosed() {
        if (this.mRewardedVideoManagerListener != null) {
            this.mRewardedVideoManagerListener.onRewardedVideoAdClosed(this);
        }
        fetchRewardedVideo();
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAvailabilityChanged(boolean available) {
        stopInitTimer();
        if (isMediationAvailable()) {
            if ((available && this.mMediationState != AbstractSmash.MEDIATION_STATE.AVAILABLE) || (!available && this.mMediationState != AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE)) {
                setMediationState(available ? AbstractSmash.MEDIATION_STATE.AVAILABLE : AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE);
                if (this.mRewardedVideoManagerListener != null) {
                    this.mRewardedVideoManagerListener.onRewardedVideoAvailabilityChanged(available, this);
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdStarted() {
        if (this.mRewardedVideoManagerListener != null) {
            this.mRewardedVideoManagerListener.onRewardedVideoAdStarted(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdEnded() {
        if (this.mRewardedVideoManagerListener != null) {
            this.mRewardedVideoManagerListener.onRewardedVideoAdEnded(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdRewarded() {
        if (this.mRewardedVideoManagerListener != null) {
            this.mRewardedVideoManagerListener.onRewardedVideoAdRewarded(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdClicked() {
        if (this.mRewardedVideoManagerListener != null) {
            this.mRewardedVideoManagerListener.onRewardedVideoAdClicked(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener
    public void onRewardedVideoAdVisible() {
        if (this.mRewardedVideoManagerListener != null) {
            this.mRewardedVideoManagerListener.onRewardedVideoAdVisible(this);
        }
    }

    String getRequestUrl() {
        return this.mRequestUrl;
    }
}
