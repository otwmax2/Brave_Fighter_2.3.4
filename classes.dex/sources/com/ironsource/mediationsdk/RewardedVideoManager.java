package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.ServerProtocol;
import com.ironsource.environment.NetworkStateReceiver;
import com.ironsource.eventsmodule.EventData;
import com.ironsource.mediationsdk.AbstractSmash;
import com.ironsource.mediationsdk.events.RewardedVideoEventsManager;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoApi;
import com.ironsource.mediationsdk.sdk.RewardedVideoListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener;
import com.ironsource.mediationsdk.server.Server;
import com.ironsource.mediationsdk.utils.CappingManager;
import com.ironsource.mediationsdk.utils.DailyCappingListener;
import com.ironsource.mediationsdk.utils.DailyCappingManager;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.tendcloud.tenddata.game.ao;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class RewardedVideoManager extends AbstractAdUnitManager implements RewardedVideoApi, RewardedVideoManagerListener, NetworkStateReceiver.NetworkStateReceiverListener, DailyCappingListener {
    private Placement mCurrentPlacement;
    private ISDemandOnlyRewardedVideoListener mISDemandOnlyListenersWrapper;
    private RewardedVideoListener mListenersWrapper;
    private NetworkStateReceiver mNetworkStateReceiver;
    private final String TAG = getClass().getSimpleName();
    private final int CAPPED_PER_SESSION_REASON = 2;
    private final int CAPPED_PER_DAY_REASON = 6;
    private boolean mPauseSmartLoadDueToNetworkUnavailability = false;
    private boolean mIsUltraEventsEnabled = false;
    private List<AbstractSmash.MEDIATION_STATE> mStatesToIgnore = Arrays.asList(AbstractSmash.MEDIATION_STATE.INIT_FAILED, AbstractSmash.MEDIATION_STATE.CAPPED_PER_SESSION, AbstractSmash.MEDIATION_STATE.EXHAUSTED, AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY);

    RewardedVideoManager() {
        this.mDailyCappingManager = new DailyCappingManager("rewarded_video", this);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoApi
    public void setRewardedVideoListener(RewardedVideoListener listener) {
        this.mListenersWrapper = listener;
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoApi
    public synchronized void initRewardedVideo(Activity activity, String appKey, String userId) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, this.TAG + ":initRewardedVideo(appKey: " + appKey + ", userId: " + userId + ")", 1);
        this.mAppKey = appKey;
        this.mUserId = userId;
        this.mActivity = activity;
        if (this.mIsInISDemandOnlyMode) {
            this.mSmartLoadAmount = this.mSmashArray.size();
            for (AbstractSmash smash : this.mSmashArray) {
                if (startAdapter((RewardedVideoSmash) smash) == null) {
                    smash.setMediationState(AbstractSmash.MEDIATION_STATE.INIT_FAILED);
                }
            }
        } else {
            this.mDailyCappingManager.setContext(this.mActivity);
            int dailyCappedCount = 0;
            for (AbstractSmash smash2 : this.mSmashArray) {
                if (this.mDailyCappingManager.shouldSendCapReleasedEvent(smash2)) {
                    logProviderEvent(IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED, smash2, new Object[][]{new Object[]{"status", "false"}});
                }
                if (this.mDailyCappingManager.isCapped(smash2)) {
                    smash2.setMediationState(AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY);
                    dailyCappedCount++;
                }
            }
            if (dailyCappedCount == this.mSmashArray.size()) {
                this.mListenersWrapper.onRewardedVideoAvailabilityChanged(false);
            } else {
                for (int i = 0; i < this.mSmartLoadAmount && i < this.mSmashArray.size() && loadNextAdapter() != null; i++) {
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoApi
    public synchronized void showRewardedVideo(String placementName) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, this.TAG + ":showRewardedVideo(placementName: " + placementName + ")", 1);
        if (!IronSourceUtils.isNetworkConnected(this.mActivity)) {
            this.mListenersWrapper.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoInternetConnectionShowFailError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        } else {
            sendShowCheckAvailabilityEvents(placementName);
            int capped = 0;
            int notAvailable = 0;
            int i = 0;
            while (true) {
                if (i < this.mSmashArray.size()) {
                    AbstractSmash smash = this.mSmashArray.get(i);
                    if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                        if (((RewardedVideoSmash) smash).isRewardedVideoAvailable()) {
                            showAdapter(smash, i);
                            if (this.mCanShowPremium && !smash.equals(getPremiumSmash())) {
                                disablePremiumForCurrentSession();
                            }
                            if (smash.isCappedPerSession()) {
                                smash.setMediationState(AbstractSmash.MEDIATION_STATE.CAPPED_PER_SESSION);
                                logProviderEvent(7, smash, new Object[][]{new Object[]{"status", "false"}, new Object[]{ao.q, 2}});
                                completeAdapterCap();
                            } else if (this.mDailyCappingManager.isCapped(smash)) {
                                smash.setMediationState(AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY);
                                logProviderEvent(7, smash, new Object[][]{new Object[]{"status", "false"}, new Object[]{ao.q, 6}});
                                logProviderEvent(IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED, smash, new Object[][]{new Object[]{"status", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE}});
                                completeAdapterCap();
                            } else if (smash.isExhausted()) {
                                loadNextAdapter();
                                completeIterationRound();
                            }
                        } else {
                            onRewardedVideoAvailabilityChanged(false, (RewardedVideoSmash) smash);
                            Exception e = new Exception("FailedToShowVideoException");
                            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.INTERNAL, smash.getInstanceName() + " Failed to show video", e);
                        }
                    } else if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.CAPPED_PER_SESSION || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY) {
                        capped++;
                    } else if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE) {
                        notAvailable++;
                    }
                    i++;
                } else if (isBackFillAvailable()) {
                    showAdapter(getBackfillSmash(), this.mSmashArray.size());
                } else if (capped + notAvailable == this.mSmashArray.size()) {
                    this.mListenersWrapper.onRewardedVideoAdShowFailed(ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoApi
    public synchronized boolean isRewardedVideoAvailable() {
        boolean z = false;
        synchronized (this) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, this.TAG + ":isRewardedVideoAvailable()", 1);
            if (!this.mPauseSmartLoadDueToNetworkUnavailability) {
                Iterator<AbstractSmash> it = this.mSmashArray.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AbstractSmash smash = it.next();
                    if (smash.isMediationAvailable() && ((RewardedVideoSmash) smash).isRewardedVideoAvailable()) {
                        z = true;
                        break;
                    }
                }
            }
        }
        return z;
    }

    public void setISDemandOnlyRewardedVideoListener(ISDemandOnlyRewardedVideoListener listener) {
        this.mISDemandOnlyListenersWrapper = listener;
    }

    public synchronized void showRewardedVideo(String instanceId, String placementName) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, this.TAG + ":showRewardedVideo(instanceId: " + instanceId + ", placementName: " + placementName + ")", 1);
        if (!IronSourceUtils.isNetworkConnected(this.mActivity)) {
            this.mISDemandOnlyListenersWrapper.onRewardedVideoAdShowFailed(instanceId, ErrorBuilder.buildNoInternetConnectionShowFailError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        } else {
            sendShowCheckAvailabilityEvents(placementName);
            boolean existingInstanceId = false;
            int i = 0;
            while (true) {
                if (i >= this.mSmashArray.size()) {
                    break;
                }
                AbstractSmash smash = this.mSmashArray.get(i);
                if (!smash.getSubProviderId().equals(instanceId)) {
                    i++;
                } else {
                    existingInstanceId = true;
                    if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                        if (((RewardedVideoSmash) smash).isRewardedVideoAvailable()) {
                            CappingManager.incrementShowCounter(this.mActivity, this.mCurrentPlacement);
                            logProviderEvent(2, smash, new Object[][]{new Object[]{"placement", this.mCurrentPlacement.getPlacementName()}});
                            sendShowChanceEvents(smash, i, this.mCurrentPlacement.getPlacementName());
                            ((RewardedVideoSmash) smash).showRewardedVideo();
                            if (smash.isCappedPerSession()) {
                                logProviderEvent(7, smash, new Object[][]{new Object[]{"status", "false"}, new Object[]{ao.q, 2}});
                                onRewardedVideoAvailabilityChanged(false, (RewardedVideoSmash) smash);
                            } else if (this.mDailyCappingManager.isCapped(smash)) {
                                smash.setMediationState(AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY);
                                logProviderEvent(IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED, smash, new Object[][]{new Object[]{"status", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE}});
                                onRewardedVideoAvailabilityChanged(false, (RewardedVideoSmash) smash);
                            }
                        } else {
                            onRewardedVideoAvailabilityChanged(false, (RewardedVideoSmash) smash);
                            Exception e = new Exception("FailedToShowVideoException");
                            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.INTERNAL, smash.getInstanceName() + " Failed to show video", e);
                        }
                    } else if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.CAPPED_PER_SESSION) {
                        this.mListenersWrapper.onRewardedVideoAdShowFailed(new IronSourceError(IronSourceError.ERROR_CAPPED_PER_SESSION, "Instance has reached its cap per session"));
                    }
                }
            }
            if (!existingInstanceId) {
                this.mISDemandOnlyListenersWrapper.onRewardedVideoAdShowFailed(instanceId, ErrorBuilder.buildNonExistentInstanceError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else {
                this.mISDemandOnlyListenersWrapper.onRewardedVideoAdShowFailed(instanceId, ErrorBuilder.buildNoAdsToShowError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x004b, code lost:
    
        r1 = ((com.ironsource.mediationsdk.RewardedVideoSmash) r0).isRewardedVideoAvailable();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isRewardedVideoAvailable(java.lang.String r7) {
        /*
            r6 = this;
            r1 = 0
            monitor-enter(r6)
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r2 = r6.mLoggerManager     // Catch: java.lang.Throwable -> L52
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r3 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API     // Catch: java.lang.Throwable -> L52
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L52
            r4.<init>()     // Catch: java.lang.Throwable -> L52
            java.lang.String r5 = r6.TAG     // Catch: java.lang.Throwable -> L52
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L52
            java.lang.String r5 = ":isRewardedVideoAvailable(instanceId: "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L52
            java.lang.StringBuilder r4 = r4.append(r7)     // Catch: java.lang.Throwable -> L52
            java.lang.String r5 = ")"
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L52
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L52
            r5 = 1
            r2.log(r3, r4, r5)     // Catch: java.lang.Throwable -> L52
            boolean r2 = r6.mPauseSmartLoadDueToNetworkUnavailability     // Catch: java.lang.Throwable -> L52
            if (r2 == 0) goto L2f
        L2d:
            monitor-exit(r6)
            return r1
        L2f:
            java.util.concurrent.CopyOnWriteArrayList<com.ironsource.mediationsdk.AbstractSmash> r2 = r6.mSmashArray     // Catch: java.lang.Throwable -> L52
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L52
        L35:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L52
            if (r3 == 0) goto L2d
            java.lang.Object r0 = r2.next()     // Catch: java.lang.Throwable -> L52
            com.ironsource.mediationsdk.AbstractSmash r0 = (com.ironsource.mediationsdk.AbstractSmash) r0     // Catch: java.lang.Throwable -> L52
            java.lang.String r3 = r0.getSubProviderId()     // Catch: java.lang.Throwable -> L52
            boolean r3 = r3.equals(r7)     // Catch: java.lang.Throwable -> L52
            if (r3 == 0) goto L35
            com.ironsource.mediationsdk.RewardedVideoSmash r0 = (com.ironsource.mediationsdk.RewardedVideoSmash) r0     // Catch: java.lang.Throwable -> L52
            boolean r1 = r0.isRewardedVideoAvailable()     // Catch: java.lang.Throwable -> L52
            goto L2d
        L52:
            r1 = move-exception
            monitor-exit(r6)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.RewardedVideoManager.isRewardedVideoAvailable(java.lang.String):boolean");
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener
    public void onRewardedVideoAdShowFailed(IronSourceError error, RewardedVideoSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onRewardedVideoAdShowFailed(" + error + ")", 1);
        if (this.mIsInISDemandOnlyMode) {
            this.mISDemandOnlyListenersWrapper.onRewardedVideoAdShowFailed(smash.getSubProviderId(), error);
        } else {
            this.mListenersWrapper.onRewardedVideoAdShowFailed(error);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener
    public void onRewardedVideoAdOpened(RewardedVideoSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onRewardedVideoAdOpened()", 1);
        logProviderEvent(5, smash, (Object[][]) null);
        if (this.mIsInISDemandOnlyMode) {
            this.mISDemandOnlyListenersWrapper.onRewardedVideoAdOpened(smash.getSubProviderId());
        } else {
            this.mListenersWrapper.onRewardedVideoAdOpened();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener
    public void onRewardedVideoAdClosed(RewardedVideoSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onRewardedVideoAdClosed()", 1);
        logProviderEvent(6, smash, (Object[][]) null);
        notifyIsAdAvailableForStatistics();
        if (this.mIsInISDemandOnlyMode) {
            this.mISDemandOnlyListenersWrapper.onRewardedVideoAdClosed(smash.getSubProviderId());
            return;
        }
        this.mListenersWrapper.onRewardedVideoAdClosed();
        for (AbstractSmash asmash : this.mSmashArray) {
            if (asmash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE) {
                try {
                    if (!asmash.getInstanceName().equals(smash.getInstanceName())) {
                        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, asmash.getInstanceName() + ":reload smash", 1);
                        ((RewardedVideoSmash) asmash).fetchRewardedVideo();
                    }
                } catch (Throwable t) {
                    this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, asmash.getInstanceName() + " Failed to call fetchVideo(), " + t.getLocalizedMessage(), 1);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x011a A[Catch: Throwable -> 0x0091, all -> 0x00c7, TryCatch #0 {Throwable -> 0x0091, blocks: (B:5:0x0005, B:7:0x004b, B:9:0x005a, B:12:0x0075, B:14:0x007f, B:16:0x0085, B:24:0x00ca, B:26:0x00d4, B:28:0x0101, B:30:0x010d, B:31:0x011a, B:33:0x0120, B:36:0x012a, B:38:0x0131, B:39:0x013e, B:41:0x0145, B:42:0x0148), top: B:44:0x0005, outer: #1 }] */
    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void onRewardedVideoAvailabilityChanged(boolean r8, com.ironsource.mediationsdk.RewardedVideoSmash r9) {
        /*
            Method dump skipped, instruction units count: 336
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.RewardedVideoManager.onRewardedVideoAvailabilityChanged(boolean, com.ironsource.mediationsdk.RewardedVideoSmash):void");
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener
    public void onRewardedVideoAdStarted(RewardedVideoSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onRewardedVideoAdStarted()", 1);
        logProviderEvent(8, smash, (Object[][]) null);
        this.mListenersWrapper.onRewardedVideoAdStarted();
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener
    public void onRewardedVideoAdEnded(RewardedVideoSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onRewardedVideoAdEnded()", 1);
        logProviderEvent(9, smash, (Object[][]) null);
        this.mListenersWrapper.onRewardedVideoAdEnded();
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener
    public void onRewardedVideoAdRewarded(RewardedVideoSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onRewardedVideoAdRewarded()", 1);
        JSONObject data = IronSourceUtils.getProviderAdditionalData(smash, this.mIsInISDemandOnlyMode);
        try {
            data.put("placement", this.mCurrentPlacement.getPlacementName());
            data.put("rewardName", this.mCurrentPlacement.getRewardName());
            data.put("rewardAmount", this.mCurrentPlacement.getRewardAmount());
        } catch (JSONException e) {
            e.printStackTrace();
        }
        EventData event = new EventData(10, data);
        if (!TextUtils.isEmpty(this.mAppKey)) {
            String strToTransId = "" + Long.toString(event.getTimeStamp()) + this.mAppKey + smash.getName();
            String transId = IronSourceUtils.getTransId(strToTransId);
            event.addToAdditionalData("transId", transId);
            if (!TextUtils.isEmpty(IronSourceObject.getInstance().getDynamicUserId())) {
                event.addToAdditionalData("dynamicUserId", IronSourceObject.getInstance().getDynamicUserId());
            }
            Map<String, String> rvServerParams = IronSourceObject.getInstance().getRvServerParams();
            if (rvServerParams != null) {
                for (String key : rvServerParams.keySet()) {
                    event.addToAdditionalData("custom_" + key, rvServerParams.get(key));
                }
            }
        }
        RewardedVideoEventsManager.getInstance().log(event);
        if (this.mIsInISDemandOnlyMode) {
            this.mISDemandOnlyListenersWrapper.onRewardedVideoAdRewarded(smash.getSubProviderId(), this.mCurrentPlacement);
        } else {
            this.mListenersWrapper.onRewardedVideoAdRewarded(this.mCurrentPlacement);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener
    public void onRewardedVideoAdClicked(RewardedVideoSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onRewardedVideoAdClicked()", 1);
        logProviderEvent(128, smash, new Object[][]{new Object[]{"placement", this.mCurrentPlacement.getPlacementName()}});
        if (this.mIsInISDemandOnlyMode) {
            this.mISDemandOnlyListenersWrapper.onRewardedVideoAdClicked(smash.getSubProviderId(), this.mCurrentPlacement);
        } else {
            this.mListenersWrapper.onRewardedVideoAdClicked(this.mCurrentPlacement);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoManagerListener
    public void onRewardedVideoAdVisible(RewardedVideoSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onRewardedVideoAdVisible()", 1);
        logProviderEvent(11, smash, new Object[][]{new Object[]{"placement", this.mCurrentPlacement.getPlacementName()}});
    }

    @Override // com.ironsource.environment.NetworkStateReceiver.NetworkStateReceiverListener
    public void onNetworkAvailabilityChanged(boolean connected) {
        if (this.mShouldTrackNetworkState) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "Network Availability Changed To: " + connected, 0);
            if (shouldNotifyNetworkAvailabilityChanged(connected)) {
                this.mPauseSmartLoadDueToNetworkUnavailability = connected ? false : true;
                this.mListenersWrapper.onRewardedVideoAvailabilityChanged(connected);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdUnitManager
    void shouldTrackNetworkState(Context context, boolean track) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, this.TAG + " Should Track Network State: " + track, 0);
        this.mShouldTrackNetworkState = track;
        if (this.mShouldTrackNetworkState) {
            if (this.mNetworkStateReceiver == null) {
                this.mNetworkStateReceiver = new NetworkStateReceiver(context, this);
            }
            context.registerReceiver(this.mNetworkStateReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        } else if (this.mNetworkStateReceiver != null) {
            context.unregisterReceiver(this.mNetworkStateReceiver);
        }
    }

    private boolean shouldNotifyNetworkAvailabilityChanged(boolean networkState) {
        boolean shouldNotify = false;
        if (this.mLastMediationAvailabilityState == null) {
            return false;
        }
        if (networkState && !this.mLastMediationAvailabilityState.booleanValue() && hasAvailableSmash()) {
            this.mLastMediationAvailabilityState = true;
            shouldNotify = true;
        } else if (!networkState && this.mLastMediationAvailabilityState.booleanValue()) {
            this.mLastMediationAvailabilityState = false;
            shouldNotify = true;
        }
        return shouldNotify;
    }

    void setIsUltraEventsEnabled(boolean enabled) {
        this.mIsUltraEventsEnabled = enabled;
    }

    private void reportFalseImpressionsOnHigherPriority(int priority, int placementId) {
        for (int i = 0; i < priority && i < this.mSmashArray.size(); i++) {
            if (!this.mStatesToIgnore.contains(this.mSmashArray.get(i).getMediationState())) {
                reportImpression(((RewardedVideoSmash) this.mSmashArray.get(i)).getRequestUrl(), false, placementId);
            }
        }
    }

    private synchronized void reportImpression(String adapterUrl, boolean hit, int placementId) {
        String url = "";
        try {
            String url2 = "" + adapterUrl;
            url = url2 + "&sdkVersion=" + IronSourceUtils.getSDKVersion();
            Server.callAsyncRequestURL(url, hit, placementId);
        } catch (Throwable e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.NETWORK, "reportImpression:(providerURL:" + url + ", hit:" + hit + ")", e);
        }
    }

    void setCurrentPlacement(Placement currentPlacement) {
        this.mCurrentPlacement = currentPlacement;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0020, code lost:
    
        r0.setMediationState(com.ironsource.mediationsdk.AbstractSmash.MEDIATION_STATE.CAPPED_PER_SESSION);
        loadNextAdapter();
     */
    @Override // com.ironsource.mediationsdk.AbstractAdUnitManager
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected synchronized void disablePremiumForCurrentSession() {
        /*
            r3 = this;
            monitor-enter(r3)
            super.disablePremiumForCurrentSession()     // Catch: java.lang.Throwable -> L2a
            java.util.concurrent.CopyOnWriteArrayList<com.ironsource.mediationsdk.AbstractSmash> r1 = r3.mSmashArray     // Catch: java.lang.Throwable -> L2a
            java.util.Iterator r1 = r1.iterator()     // Catch: java.lang.Throwable -> L2a
        La:
            boolean r2 = r1.hasNext()     // Catch: java.lang.Throwable -> L2a
            if (r2 == 0) goto L28
            java.lang.Object r0 = r1.next()     // Catch: java.lang.Throwable -> L2a
            com.ironsource.mediationsdk.AbstractSmash r0 = (com.ironsource.mediationsdk.AbstractSmash) r0     // Catch: java.lang.Throwable -> L2a
            com.ironsource.mediationsdk.AbstractSmash r2 = r3.getPremiumSmash()     // Catch: java.lang.Throwable -> L2a
            boolean r2 = r0.equals(r2)     // Catch: java.lang.Throwable -> L2a
            if (r2 == 0) goto La
            com.ironsource.mediationsdk.AbstractSmash$MEDIATION_STATE r1 = com.ironsource.mediationsdk.AbstractSmash.MEDIATION_STATE.CAPPED_PER_SESSION     // Catch: java.lang.Throwable -> L2a
            r0.setMediationState(r1)     // Catch: java.lang.Throwable -> L2a
            r3.loadNextAdapter()     // Catch: java.lang.Throwable -> L2a
        L28:
            monitor-exit(r3)
            return
        L2a:
            r1 = move-exception
            monitor-exit(r3)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.RewardedVideoManager.disablePremiumForCurrentSession():void");
    }

    private synchronized AbstractAdapter startAdapter(RewardedVideoSmash smash) {
        AbstractAdapter providerAdapter;
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":startAdapter(" + smash.getInstanceName() + ")", 1);
        try {
            providerAdapter = getLoadedAdapterOrFetchByReflection(smash);
            if (providerAdapter == null) {
                providerAdapter = null;
            } else {
                IronSourceObject.getInstance().addToRVAdaptersList(providerAdapter);
                providerAdapter.setLogListener(this.mLoggerManager);
                smash.setAdapterForSmash(providerAdapter);
                smash.setMediationState(AbstractSmash.MEDIATION_STATE.INITIATED);
                setCustomParams(smash);
                smash.initRewardedVideo(this.mActivity, this.mAppKey, this.mUserId);
            }
        } catch (Throwable e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, this.TAG + ":startAdapter(" + smash.getName() + ")", e);
            smash.setMediationState(AbstractSmash.MEDIATION_STATE.INIT_FAILED);
            if (shouldNotifyAvailabilityChanged(false)) {
                this.mListenersWrapper.onRewardedVideoAvailabilityChanged(this.mLastMediationAvailabilityState.booleanValue());
            }
            IronSourceError error = ErrorBuilder.buildInitFailedError(smash.getName() + " initialization failed - please verify that required dependencies are in you build path.", IronSourceConstants.REWARDED_VIDEO_AD_UNIT);
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, error.toString(), 2);
            providerAdapter = null;
        }
        return providerAdapter;
    }

    private AbstractAdapter loadNextAdapter() {
        AbstractAdapter initiatedAdapter = null;
        int activeAdapters = 0;
        for (int i = 0; i < this.mSmashArray.size() && initiatedAdapter == null; i++) {
            if (this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE || this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.INITIATED) {
                activeAdapters++;
                if (activeAdapters >= this.mSmartLoadAmount) {
                    break;
                }
            } else if (this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_INITIATED && (initiatedAdapter = startAdapter((RewardedVideoSmash) this.mSmashArray.get(i))) == null) {
                this.mSmashArray.get(i).setMediationState(AbstractSmash.MEDIATION_STATE.INIT_FAILED);
            }
        }
        return initiatedAdapter;
    }

    private synchronized void showAdapter(AbstractSmash smash, int index) {
        CappingManager.incrementShowCounter(this.mActivity, this.mCurrentPlacement);
        this.mDailyCappingManager.increaseShowCounter(smash);
        if (this.mIsUltraEventsEnabled) {
            reportImpression(((RewardedVideoSmash) smash).getRequestUrl(), true, this.mCurrentPlacement.getPlacementId());
            reportFalseImpressionsOnHigherPriority(index, this.mCurrentPlacement.getPlacementId());
        }
        logProviderEvent(2, smash, new Object[][]{new Object[]{"placement", this.mCurrentPlacement.getPlacementName()}});
        sendShowChanceEvents(smash, index, this.mCurrentPlacement.getPlacementName());
        ((RewardedVideoSmash) smash).showRewardedVideo();
    }

    private synchronized void notifyIsAdAvailableForStatistics() {
        boolean mediationStatus = false;
        Iterator<AbstractSmash> it = this.mSmashArray.iterator();
        while (true) {
            if (it.hasNext()) {
                if (it.next().getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                    mediationStatus = true;
                    break;
                }
            } else {
                break;
            }
        }
        logMediationEvent(3, new Object[][]{new Object[]{"status", String.valueOf(mediationStatus)}});
        for (AbstractSmash smash : this.mSmashArray) {
            if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                logProviderEvent(3, smash, new Object[][]{new Object[]{"status", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE}});
            } else if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.INITIATED) {
                logProviderEvent(3, smash, new Object[][]{new Object[]{"status", "false"}});
            }
        }
        if (getBackfillSmash() != null && getBackfillSmash().getAdapter() != null) {
            AbstractSmash backfillSmash = getBackfillSmash();
            Object[][] objArr = new Object[1][];
            Object[] objArr2 = new Object[2];
            objArr2[0] = "status";
            objArr2[1] = isBackFillAvailable() ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false";
            objArr[0] = objArr2;
            logProviderEvent(3, backfillSmash, objArr);
        }
    }

    private synchronized boolean shouldNotifyAvailabilityChanged(boolean adapterAvailability) {
        boolean shouldNotify;
        shouldNotify = false;
        if (this.mLastMediationAvailabilityState == null) {
            if (adapterAvailability) {
                this.mLastMediationAvailabilityState = true;
                shouldNotify = true;
            } else if (!isBackFillAvailable() && isAllLoaded()) {
                this.mLastMediationAvailabilityState = false;
                shouldNotify = true;
            }
        } else if (adapterAvailability && !this.mLastMediationAvailabilityState.booleanValue()) {
            this.mLastMediationAvailabilityState = true;
            shouldNotify = true;
        } else if (!adapterAvailability && this.mLastMediationAvailabilityState.booleanValue() && !hasAvailableSmash() && !isBackFillAvailable()) {
            this.mLastMediationAvailabilityState = false;
            shouldNotify = true;
        }
        return shouldNotify;
    }

    private synchronized boolean isAllLoaded() {
        boolean allLoaded;
        allLoaded = true;
        Iterator<AbstractSmash> it = this.mSmashArray.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AbstractSmash smash = it.next();
            if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_INITIATED) {
                allLoaded = false;
                break;
            }
        }
        return allLoaded;
    }

    private synchronized boolean hasAvailableSmash() {
        boolean hasAvailableSmash;
        hasAvailableSmash = false;
        Iterator<AbstractSmash> it = this.mSmashArray.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            AbstractSmash smash = it.next();
            if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                hasAvailableSmash = true;
                break;
            }
        }
        return hasAvailableSmash;
    }

    private synchronized boolean isBackFillAvailable() {
        return getBackfillSmash() != null ? ((RewardedVideoSmash) getBackfillSmash()).isRewardedVideoAvailable() : false;
    }

    private void sendShowCheckAvailabilityEvents(String placementName) {
        for (int i = 0; i < this.mSmashArray.size(); i++) {
            if (this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                createAndSendShowCheckAvailabilityEvent(this.mSmashArray.get(i), placementName, true);
            } else if (this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE) {
                createAndSendShowCheckAvailabilityEvent(this.mSmashArray.get(i), placementName, false);
            }
        }
        if (getBackfillSmash() != null && getBackfillSmash().getAdapter() != null) {
            createAndSendShowCheckAvailabilityEvent(getBackfillSmash(), placementName, isBackFillAvailable());
        }
    }

    private void sendShowChanceEvents(AbstractSmash selectedSmash, int priority, String placementName) {
        sendShowChanceEvent(selectedSmash, placementName, true);
        if (!this.mIsInISDemandOnlyMode) {
            for (int i = 0; i < this.mSmashArray.size() && i < priority; i++) {
                AbstractSmash smash = this.mSmashArray.get(i);
                if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE) {
                    sendShowChanceEvent(smash, placementName, false);
                }
            }
        }
    }

    private void createAndSendShowCheckAvailabilityEvent(AbstractSmash smash, String placementName, boolean status) {
        Object[][] objArr = new Object[2][];
        objArr[0] = new Object[]{"placement", placementName};
        Object[] objArr2 = new Object[2];
        objArr2[0] = "status";
        objArr2[1] = status ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false";
        objArr[1] = objArr2;
        logProviderEvent(19, smash, objArr);
    }

    private void sendShowChanceEvent(AbstractSmash smash, String placementName, boolean status) {
        Object[][] objArr = new Object[2][];
        objArr[0] = new Object[]{"placement", placementName};
        Object[] objArr2 = new Object[2];
        objArr2[0] = "status";
        objArr2[1] = status ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false";
        objArr[1] = objArr2;
        logProviderEvent(IronSourceConstants.REWARDED_VIDEO_SHOW_CHANCE, smash, objArr);
    }

    private synchronized void notifyAvailabilityChange() {
        if (getBackfillSmash() != null && !this.mBackFillInitStarted) {
            this.mBackFillInitStarted = true;
            AbstractAdapter backfillAdapter = startAdapter((RewardedVideoSmash) getBackfillSmash());
            if (backfillAdapter == null) {
                this.mListenersWrapper.onRewardedVideoAvailabilityChanged(this.mLastMediationAvailabilityState.booleanValue());
            }
        } else if (!isBackFillAvailable() || shouldNotifyAvailabilityChanged(true)) {
            this.mListenersWrapper.onRewardedVideoAvailabilityChanged(this.mLastMediationAvailabilityState.booleanValue());
        }
    }

    private synchronized void completeAdapterCap() {
        if (loadNextAdapter() == null) {
            int cappedOrNotAvailable = smashesCount(AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE, AbstractSmash.MEDIATION_STATE.CAPPED_PER_SESSION, AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY);
            if (cappedOrNotAvailable < this.mSmashArray.size()) {
                completeIterationRound();
            } else if (shouldNotifyAvailabilityChanged(false)) {
                notifyAvailabilityChange();
            }
        }
    }

    private synchronized void completeIterationRound() {
        if (isIterationRoundComplete()) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "Reset Iteration", 0);
            boolean isAvailable = false;
            for (AbstractSmash smash : this.mSmashArray) {
                if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.EXHAUSTED) {
                    smash.completeIteration();
                }
                if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                    isAvailable = true;
                }
            }
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "End of Reset Iteration", 0);
            if (shouldNotifyAvailabilityChanged(isAvailable)) {
                this.mListenersWrapper.onRewardedVideoAvailabilityChanged(this.mLastMediationAvailabilityState.booleanValue());
            }
        }
    }

    private synchronized boolean isIterationRoundComplete() {
        boolean z;
        for (AbstractSmash smash : this.mSmashArray) {
            if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_INITIATED || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.INITIATED || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                z = false;
                break;
            }
        }
        z = true;
        return z;
    }

    private void logMediationEvent(int eventId, Object[][] keyVals) {
        JSONObject data = IronSourceUtils.getMediationAdditionalData(this.mIsInISDemandOnlyMode);
        if (keyVals != null) {
            try {
                for (Object[] pair : keyVals) {
                    data.put(pair[0].toString(), pair[1]);
                }
            } catch (Exception e) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "RewardedVideoManager logMediationEvent " + Log.getStackTraceString(e), 3);
            }
        }
        EventData event = new EventData(eventId, data);
        RewardedVideoEventsManager.getInstance().log(event);
    }

    private void logProviderEvent(int eventId, AbstractSmash smash, Object[][] keyVals) {
        JSONObject data = IronSourceUtils.getProviderAdditionalData(smash, this.mIsInISDemandOnlyMode);
        if (keyVals != null) {
            try {
                for (Object[] pair : keyVals) {
                    data.put(pair[0].toString(), pair[1]);
                }
            } catch (Exception e) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "RewardedVideoManager logProviderEvent " + Log.getStackTraceString(e), 3);
            }
        }
        EventData event = new EventData(eventId, data);
        RewardedVideoEventsManager.getInstance().log(event);
    }

    private int smashesCount(AbstractSmash.MEDIATION_STATE... states) {
        int ret;
        synchronized (this.mSmashArray) {
            ret = 0;
            for (AbstractSmash smash : this.mSmashArray) {
                for (AbstractSmash.MEDIATION_STATE state : states) {
                    if (smash.getMediationState() == state) {
                        ret++;
                    }
                }
            }
        }
        return ret;
    }

    @Override // com.ironsource.mediationsdk.utils.DailyCappingListener
    public void onDailyCapReleased() {
        boolean atLeastOneSmashBecameAvailable = false;
        for (AbstractSmash smash : this.mSmashArray) {
            if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY) {
                logProviderEvent(IronSourceConstants.REWARDED_VIDEO_DAILY_CAPPED, smash, new Object[][]{new Object[]{"status", "false"}});
                smash.setMediationState(AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE);
                if (((RewardedVideoSmash) smash).isRewardedVideoAvailable() && smash.isMediationAvailable()) {
                    smash.setMediationState(AbstractSmash.MEDIATION_STATE.AVAILABLE);
                    atLeastOneSmashBecameAvailable = true;
                }
            }
        }
        if (atLeastOneSmashBecameAvailable && shouldNotifyAvailabilityChanged(true)) {
            this.mListenersWrapper.onRewardedVideoAvailabilityChanged(true);
        }
    }
}
