package com.ironsource.mediationsdk.sdk;

import android.os.Handler;
import android.os.Looper;
import com.ironsource.eventsmodule.EventData;
import com.ironsource.mediationsdk.events.InterstitialEventsManager;
import com.ironsource.mediationsdk.events.RewardedVideoEventsManager;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.tendcloud.tenddata.game.ao;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ListenersWrapper implements RewardedVideoListener, InterstitialListener, InternalOfferwallListener, RewardedInterstitialListener, SegmentListener, ISDemandOnlyRewardedVideoListener, ISDemandOnlyInterstitialListener {
    private CallbackHandlerThread mCallbackHandlerThread = new CallbackHandlerThread();
    private ISDemandOnlyInterstitialListener mISDemandOnlyInterstitialListener;
    private ISDemandOnlyRewardedVideoListener mISDemandOnlyRewardedVideoListener;
    private InterstitialListener mInterstitialListener;
    private OfferwallListener mOfferwallListener;
    private RewardedInterstitialListener mRewardedInterstitialListener;
    private RewardedVideoListener mRewardedVideoListener;
    private SegmentListener mSegementListener;

    public ListenersWrapper() {
        this.mCallbackHandlerThread.start();
    }

    private boolean canSendCallback(Object productListener) {
        return (productListener == null || this.mCallbackHandlerThread == null) ? false : true;
    }

    private void sendCallback(Runnable callbackRunnable) {
        Handler callbackHandler;
        if (this.mCallbackHandlerThread != null && (callbackHandler = this.mCallbackHandlerThread.getCallbackHandler()) != null) {
            callbackHandler.post(callbackRunnable);
        }
    }

    public void setRewardedVideoListener(RewardedVideoListener rewardedVideoListener) {
        this.mRewardedVideoListener = rewardedVideoListener;
    }

    public void setISDemandOnlyRewardedVideoListener(ISDemandOnlyRewardedVideoListener demandOnlyRewardedVideoListener) {
        this.mISDemandOnlyRewardedVideoListener = demandOnlyRewardedVideoListener;
    }

    public void setInterstitialListener(InterstitialListener interstitialListener) {
        this.mInterstitialListener = interstitialListener;
    }

    public void setISDemandOnlyInterstitialListener(ISDemandOnlyInterstitialListener demandOnlyInterstitialListener) {
        this.mISDemandOnlyInterstitialListener = demandOnlyInterstitialListener;
    }

    public void setOfferwallListener(OfferwallListener offerwallListener) {
        this.mOfferwallListener = offerwallListener;
    }

    public void setRewardedInterstitialListener(RewardedInterstitialListener rewardedInterstitialListener) {
        this.mRewardedInterstitialListener = rewardedInterstitialListener;
    }

    public void setSegmentListener(SegmentListener segmentListener) {
        this.mSegementListener = segmentListener;
    }

    @Override // com.ironsource.mediationsdk.sdk.SegmentListener
    public void onSegmentReceived(final String segment) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onSegmentReceived(" + segment + ")", 1);
        if (canSendCallback(this.mSegementListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.1
                @Override // java.lang.Runnable
                public void run() {
                    if (segment != null) {
                        ListenersWrapper.this.mSegementListener.onSegmentReceived(segment);
                    } else {
                        ListenersWrapper.this.mSegementListener.onSegmentReceived("");
                    }
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdOpened() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdOpened()", 1);
        if (canSendCallback(this.mRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.2
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mRewardedVideoListener.onRewardedVideoAdOpened();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdClosed()", 1);
        if (canSendCallback(this.mRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.3
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mRewardedVideoListener.onRewardedVideoAdClosed();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAvailabilityChanged(final boolean available) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAvailabilityChanged(available:" + available + ")", 1);
        JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
        try {
            data.put("status", String.valueOf(available));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        EventData event = new EventData(7, data);
        RewardedVideoEventsManager.getInstance().log(event);
        if (canSendCallback(this.mRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.4
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mRewardedVideoListener.onRewardedVideoAvailabilityChanged(available);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdStarted() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdStarted()", 1);
        if (canSendCallback(this.mRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.5
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mRewardedVideoListener.onRewardedVideoAdStarted();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdEnded() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdEnded()", 1);
        if (canSendCallback(this.mRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.6
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mRewardedVideoListener.onRewardedVideoAdEnded();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdRewarded(final Placement placement) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdRewarded(" + placement.toString() + ")", 1);
        if (canSendCallback(this.mRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.7
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mRewardedVideoListener.onRewardedVideoAdRewarded(placement);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdClicked(final Placement placement) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdClicked(" + placement.getPlacementName() + ")", 1);
        if (canSendCallback(this.mRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.8
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mRewardedVideoListener.onRewardedVideoAdClicked(placement);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoListener
    public void onRewardedVideoAdShowFailed(final IronSourceError error) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdShowFailed(" + error.toString() + ")", 1);
        JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
        try {
            data.put("status", "false");
            if (error.getErrorCode() == 524) {
                data.put(ao.q, 1);
            }
            data.put(IronSourceConstants.ERROR_CODE_KEY, error.getErrorCode());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        EventData event = new EventData(17, data);
        RewardedVideoEventsManager.getInstance().log(event);
        if (canSendCallback(this.mRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.9
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mRewardedVideoListener.onRewardedVideoAdShowFailed(error);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdReady() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdReady()", 1);
        if (canSendCallback(this.mInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.10
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mInterstitialListener.onInterstitialAdReady();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdLoadFailed(final IronSourceError error) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdLoadFailed(" + error + ")", 1);
        if (canSendCallback(this.mInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.11
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mInterstitialListener.onInterstitialAdLoadFailed(error);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdOpened() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdOpened()", 1);
        if (canSendCallback(this.mInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.12
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mInterstitialListener.onInterstitialAdOpened();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdShowSucceeded() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdShowSucceeded()", 1);
        if (canSendCallback(this.mInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.13
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mInterstitialListener.onInterstitialAdShowSucceeded();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdShowFailed(final IronSourceError error) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdShowFailed(" + error + ")", 1);
        JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
        try {
            if (error.getErrorCode() == 524) {
                data.put(ao.q, 1);
            }
            data.put(IronSourceConstants.ERROR_CODE_KEY, error.getErrorCode());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        EventData event = new EventData(29, data);
        InterstitialEventsManager.getInstance().log(event);
        if (canSendCallback(this.mInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.14
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mInterstitialListener.onInterstitialAdShowFailed(error);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdClicked() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdClicked()", 1);
        if (canSendCallback(this.mInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.15
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mInterstitialListener.onInterstitialAdClicked();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialListener
    public void onInterstitialAdClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdClosed()", 1);
        if (canSendCallback(this.mInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.16
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mInterstitialListener.onInterstitialAdClosed();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedInterstitialListener
    public void onInterstitialAdRewarded() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdRewarded()", 1);
        if (canSendCallback(this.mRewardedInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.17
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mRewardedInterstitialListener.onInterstitialAdRewarded();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallOpened() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallOpened()", 1);
        if (canSendCallback(this.mOfferwallListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.18
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mOfferwallListener.onOfferwallOpened();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallShowFailed(final IronSourceError error) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallShowFailed(" + error + ")", 1);
        if (canSendCallback(this.mOfferwallListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.19
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mOfferwallListener.onOfferwallShowFailed(error);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public boolean onOfferwallAdCredited(int credits, int totalCredits, boolean totalCreditsFlag) {
        boolean result = false;
        if (this.mOfferwallListener != null) {
            result = this.mOfferwallListener.onOfferwallAdCredited(credits, totalCredits, totalCreditsFlag);
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallAdCredited(credits:" + credits + ", totalCredits:" + totalCredits + ", totalCreditsFlag:" + totalCreditsFlag + "):" + result, 1);
        return result;
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onGetOfferwallCreditsFailed(final IronSourceError error) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onGetOfferwallCreditsFailed(" + error + ")", 1);
        if (canSendCallback(this.mOfferwallListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.20
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mOfferwallListener.onGetOfferwallCreditsFailed(error);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallClosed() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onOfferwallClosed()", 1);
        if (canSendCallback(this.mOfferwallListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.21
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mOfferwallListener.onOfferwallClosed();
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallAvailable(boolean isAvailable) {
        onOfferwallAvailable(isAvailable, null);
    }

    @Override // com.ironsource.mediationsdk.sdk.InternalOfferwallListener
    public void onOfferwallAvailable(final boolean isAvailable, IronSourceError error) {
        String logString = "onOfferwallAvailable(isAvailable: " + isAvailable + ")";
        if (error != null) {
            logString = logString + ", error: " + error.getErrorMessage();
        }
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, logString, 1);
        JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
        try {
            data.put("status", String.valueOf(isAvailable));
            if (error != null) {
                data.put(IronSourceConstants.ERROR_CODE_KEY, error.getErrorCode());
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        EventData event = new EventData(IronSourceConstants.OFFERWALL_AVAILABLE, data);
        RewardedVideoEventsManager.getInstance().log(event);
        if (canSendCallback(this.mOfferwallListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.22
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mOfferwallListener.onOfferwallAvailable(isAvailable);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdOpened(final String instanceId) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdOpened(" + instanceId + ")", 1);
        if (canSendCallback(this.mISDemandOnlyRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.23
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyRewardedVideoListener.onRewardedVideoAdOpened(instanceId);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdClosed(final String instanceId) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdClosed(" + instanceId + ")", 1);
        if (canSendCallback(this.mISDemandOnlyRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.24
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyRewardedVideoListener.onRewardedVideoAdClosed(instanceId);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAvailabilityChanged(final String instanceId, final boolean available) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAvailabilityChanged(" + instanceId + ", " + available + ")", 1);
        if (canSendCallback(this.mISDemandOnlyRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.25
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyRewardedVideoListener.onRewardedVideoAvailabilityChanged(instanceId, available);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdRewarded(final String instanceId, final Placement placement) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdRewarded(" + instanceId + ", " + placement.toString() + ")", 1);
        if (canSendCallback(this.mISDemandOnlyRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.26
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyRewardedVideoListener.onRewardedVideoAdRewarded(instanceId, placement);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdShowFailed(final String instanceId, final IronSourceError error) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdShowFailed(" + instanceId + ", " + error.toString() + ")", 1);
        JSONObject data = IronSourceUtils.getMediationAdditionalData(true);
        try {
            data.put("status", "false");
            if (error.getErrorCode() == 524) {
                data.put(ao.q, 1);
            }
            data.put(IronSourceConstants.ERROR_CODE_KEY, error.getErrorCode());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        EventData event = new EventData(17, data);
        RewardedVideoEventsManager.getInstance().log(event);
        if (canSendCallback(this.mISDemandOnlyRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.27
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyRewardedVideoListener.onRewardedVideoAdShowFailed(instanceId, error);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener
    public void onRewardedVideoAdClicked(final String instanceId, final Placement placement) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onRewardedVideoAdClicked(" + instanceId + ", " + placement.getPlacementName() + ")", 1);
        if (canSendCallback(this.mISDemandOnlyRewardedVideoListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.28
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyRewardedVideoListener.onRewardedVideoAdClicked(instanceId, placement);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdReady(final String instanceId) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdReady(" + instanceId + ")", 1);
        if (canSendCallback(this.mISDemandOnlyInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.29
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyInterstitialListener.onInterstitialAdReady(instanceId);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdLoadFailed(final String instanceId, final IronSourceError error) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdLoadFailed(" + instanceId + ", " + error + ")", 1);
        if (canSendCallback(this.mISDemandOnlyInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.30
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyInterstitialListener.onInterstitialAdLoadFailed(instanceId, error);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdOpened(final String instanceId) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdOpened(" + instanceId + ")", 1);
        if (canSendCallback(this.mISDemandOnlyInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.31
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyInterstitialListener.onInterstitialAdOpened(instanceId);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdClosed(final String instanceId) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdClosed(" + instanceId + ")", 1);
        if (canSendCallback(this.mISDemandOnlyInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.32
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyInterstitialListener.onInterstitialAdClosed(instanceId);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdShowSucceeded(final String instanceId) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdShowSucceeded(" + instanceId + ")", 1);
        if (canSendCallback(this.mISDemandOnlyInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.33
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyInterstitialListener.onInterstitialAdShowSucceeded(instanceId);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdShowFailed(final String instanceId, final IronSourceError error) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdShowFailed(" + instanceId + ", " + error + ")", 1);
        JSONObject data = IronSourceUtils.getMediationAdditionalData(true);
        try {
            if (error.getErrorCode() == 524) {
                data.put(ao.q, 1);
            }
            data.put(IronSourceConstants.ERROR_CODE_KEY, error.getErrorCode());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        EventData event = new EventData(29, data);
        InterstitialEventsManager.getInstance().log(event);
        if (canSendCallback(this.mISDemandOnlyInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.34
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyInterstitialListener.onInterstitialAdShowFailed(instanceId, error);
                }
            });
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener
    public void onInterstitialAdClicked(final String instanceId) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onInterstitialAdClicked(" + instanceId + ")", 1);
        if (canSendCallback(this.mISDemandOnlyInterstitialListener)) {
            sendCallback(new Runnable() { // from class: com.ironsource.mediationsdk.sdk.ListenersWrapper.35
                @Override // java.lang.Runnable
                public void run() {
                    ListenersWrapper.this.mISDemandOnlyInterstitialListener.onInterstitialAdClicked(instanceId);
                }
            });
        }
    }

    private class CallbackHandlerThread extends Thread {
        private Handler mCallbackHandler;

        private CallbackHandlerThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            this.mCallbackHandler = new Handler();
            Looper.loop();
        }

        public Handler getCallbackHandler() {
            return this.mCallbackHandler;
        }
    }
}
