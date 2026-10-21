package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.facebook.internal.ServerProtocol;
import com.ironsource.eventsmodule.EventData;
import com.ironsource.mediationsdk.AbstractSmash;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.MediationInitializer;
import com.ironsource.mediationsdk.events.InterstitialEventsManager;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.model.InterstitialPlacement;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener;
import com.ironsource.mediationsdk.sdk.InterstitialApi;
import com.ironsource.mediationsdk.sdk.InterstitialListener;
import com.ironsource.mediationsdk.sdk.InterstitialManagerListener;
import com.ironsource.mediationsdk.sdk.ListenersWrapper;
import com.ironsource.mediationsdk.sdk.RewardedInterstitialApi;
import com.ironsource.mediationsdk.sdk.RewardedInterstitialListener;
import com.ironsource.mediationsdk.sdk.RewardedInterstitialManagerListener;
import com.ironsource.mediationsdk.utils.CappingManager;
import com.ironsource.mediationsdk.utils.DailyCappingListener;
import com.ironsource.mediationsdk.utils.DailyCappingManager;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class InterstitialManager extends AbstractAdUnitManager implements InterstitialApi, InterstitialManagerListener, MediationInitializer.OnMediationInitializationListener, RewardedInterstitialManagerListener, RewardedInterstitialApi, DailyCappingListener {
    private InterstitialPlacement mCurrentPlacement;
    private boolean mDidFinishToInitInterstitial;
    private ISDemandOnlyInterstitialListener mISDemandOnlyInterstitialListener;
    private ListenersWrapper mInterstitialListenersWrapper;
    private RewardedInterstitialListener mRewardedInterstitialListenerWrapper;
    private final String TAG = getClass().getName();
    private CopyOnWriteArraySet<String> mInstancesToLoad = new CopyOnWriteArraySet<>();
    private Map<String, InterstitialSmash> mInstanceIdToSmashMap = new ConcurrentHashMap();
    private CallbackThrotteler mCallbackThrotteler = new CallbackThrotteler();
    private boolean mShouldSendAdReadyEvent = false;
    private boolean mIsLoadInterstitialInProgress = false;
    private boolean mDidCallLoadInterstitial = false;

    InterstitialManager() {
        this.mDailyCappingManager = new DailyCappingManager("interstitial", this);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialApi
    public void setInterstitialListener(InterstitialListener listener) {
        this.mInterstitialListenersWrapper = (ListenersWrapper) listener;
        this.mCallbackThrotteler.setInterstitialListener(listener);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedInterstitialApi
    public void setRewardedInterstitialListener(RewardedInterstitialListener listener) {
        this.mRewardedInterstitialListenerWrapper = listener;
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialApi
    public synchronized void initInterstitial(Activity activity, String appKey, String userId) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":initInterstitial(appKey: " + appKey + ", userId: " + userId + ")", 1);
        this.mAppKey = appKey;
        this.mUserId = userId;
        this.mActivity = activity;
        if (this.mIsInISDemandOnlyMode) {
            this.mSmartLoadAmount = this.mSmashArray.size();
            for (AbstractSmash smash : this.mSmashArray) {
                if (startAdapter((InterstitialSmash) smash) == null) {
                    smash.setMediationState(AbstractSmash.MEDIATION_STATE.INIT_FAILED);
                }
                this.mInstanceIdToSmashMap.put(smash.getSubProviderId(), (InterstitialSmash) smash);
            }
        } else {
            this.mDailyCappingManager.setContext(this.mActivity);
            int dailyCappedCount = 0;
            for (AbstractSmash smash2 : this.mSmashArray) {
                if (this.mDailyCappingManager.shouldSendCapReleasedEvent(smash2)) {
                    logProviderEvent(IronSourceConstants.INTERSTITIAL_DAILY_CAPPED, smash2, new Object[][]{new Object[]{"status", "false"}});
                }
                if (this.mDailyCappingManager.isCapped(smash2)) {
                    smash2.setMediationState(AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY);
                    dailyCappedCount++;
                }
            }
            if (dailyCappedCount == this.mSmashArray.size()) {
                this.mDidFinishToInitInterstitial = true;
            }
            for (int i = 0; i < this.mSmartLoadAmount && startNextAdapter() != null; i++) {
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialApi
    public synchronized void loadInterstitial() {
        try {
            if (this.mIsLoadInterstitialInProgress || this.mCallbackThrotteler.hasPendingInvocation()) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Load Interstitial is already in progress", 1);
            } else {
                MediationInitializer.EInitStatus initStatus = MediationInitializer.getInstance().getCurrentInitStatus();
                if (initStatus == MediationInitializer.EInitStatus.NOT_INIT) {
                    this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "init() must be called before loadInterstitial()", 3);
                } else if (initStatus == MediationInitializer.EInitStatus.INIT_IN_PROGRESS) {
                    if (MediationInitializer.getInstance().isInProgressMoreThan15Secs()) {
                        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                        this.mCallbackThrotteler.onInterstitialAdLoadFailed(ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                    } else {
                        logMediationEvent(22, (Object[][]) null);
                        this.mDidCallLoadInterstitial = true;
                        this.mShouldSendAdReadyEvent = true;
                    }
                } else if (initStatus == MediationInitializer.EInitStatus.INIT_FAILED) {
                    this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    this.mCallbackThrotteler.onInterstitialAdLoadFailed(ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                } else if (this.mSmashArray.size() == 0) {
                    this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "the server response does not contain interstitial data", 3);
                    this.mCallbackThrotteler.onInterstitialAdLoadFailed(ErrorBuilder.buildInitFailedError("the server response does not contain interstitial data", "Interstitial"));
                } else {
                    logMediationEvent(22, (Object[][]) null);
                    this.mShouldSendAdReadyEvent = true;
                    changeStateToInitiated();
                    if (smashesCount(AbstractSmash.MEDIATION_STATE.INITIATED) == 0) {
                        if (this.mDidFinishToInitInterstitial) {
                            IronSourceError error = ErrorBuilder.buildGenericError("no ads to load");
                            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, error.getErrorMessage(), 1);
                            this.mCallbackThrotteler.onInterstitialAdLoadFailed(error);
                            logMediationEvent(IronSourceConstants.INTERSTITIAL_AD_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.ERROR_CODE_KEY, Integer.valueOf(error.getErrorCode())}});
                            this.mShouldSendAdReadyEvent = false;
                        }
                    } else {
                        this.mDidCallLoadInterstitial = true;
                        this.mIsLoadInterstitialInProgress = true;
                        int loading = 0;
                        for (AbstractSmash smash : this.mSmashArray) {
                            if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.INITIATED) {
                                smash.setMediationState(AbstractSmash.MEDIATION_STATE.LOAD_PENDING);
                                loadAdapterAndSendEvent((InterstitialSmash) smash);
                                loading++;
                                if (loading < this.mSmartLoadAmount) {
                                }
                            }
                        }
                    }
                }
            }
            break;
        } catch (Exception e) {
            e.printStackTrace();
            IronSourceError error2 = ErrorBuilder.buildLoadFailedError("loadInterstitial exception " + e.getMessage());
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, error2.getErrorMessage(), 3);
            this.mCallbackThrotteler.onInterstitialAdLoadFailed(error2);
            if (this.mShouldSendAdReadyEvent) {
                this.mShouldSendAdReadyEvent = false;
                logMediationEvent(IronSourceConstants.INTERSTITIAL_AD_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.ERROR_CODE_KEY, Integer.valueOf(error2.getErrorCode())}});
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialApi
    public void showInterstitial(String placementName) {
        if (this.mShouldTrackNetworkState && this.mActivity != null && !IronSourceUtils.isNetworkConnected(this.mActivity)) {
            this.mInterstitialListenersWrapper.onInterstitialAdShowFailed(ErrorBuilder.buildNoInternetConnectionShowFailError("Interstitial"));
            return;
        }
        if (!this.mDidCallLoadInterstitial) {
            this.mInterstitialListenersWrapper.onInterstitialAdShowFailed(ErrorBuilder.buildShowFailedError("Interstitial", "showInterstitial failed - You need to load interstitial before showing it"));
            return;
        }
        for (int i = 0; i < this.mSmashArray.size(); i++) {
            AbstractSmash smash = this.mSmashArray.get(i);
            if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                CappingManager.incrementShowCounter(this.mActivity, this.mCurrentPlacement);
                logProviderEvent(23, smash, new Object[][]{new Object[]{"placement", placementName}});
                sendShowChanceEvents(smash, i, placementName);
                ((InterstitialSmash) smash).showInterstitial();
                this.mDailyCappingManager.increaseShowCounter(smash);
                if (this.mDailyCappingManager.isCapped(smash)) {
                    smash.setMediationState(AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY);
                    logProviderEvent(IronSourceConstants.INTERSTITIAL_DAILY_CAPPED, smash, new Object[][]{new Object[]{"status", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE}});
                }
                this.mDidCallLoadInterstitial = false;
                if (!smash.isMediationAvailable()) {
                    startNextAdapter();
                    return;
                }
                return;
            }
        }
        this.mInterstitialListenersWrapper.onInterstitialAdShowFailed(ErrorBuilder.buildShowFailedError("Interstitial", "showInterstitial failed - No adapters ready to show"));
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialApi
    public synchronized boolean isInterstitialReady() {
        boolean z = false;
        synchronized (this) {
            if (!this.mShouldTrackNetworkState || this.mActivity == null || IronSourceUtils.isNetworkConnected(this.mActivity)) {
                Iterator<AbstractSmash> it = this.mSmashArray.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    AbstractSmash smash = it.next();
                    if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE && ((InterstitialSmash) smash).isInterstitialReady()) {
                        z = true;
                        break;
                    }
                }
            }
        }
        return z;
    }

    public void setISDemandOnlyInterstitialListener(ISDemandOnlyInterstitialListener listener) {
        this.mISDemandOnlyInterstitialListener = listener;
        this.mCallbackThrotteler.setISDemandOnlyInterstitialListener(listener);
    }

    public synchronized void loadInterstitial(String instanceId) {
        try {
            if (this.mCallbackThrotteler.hasPendingInvocation(instanceId)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Load Interstitial for " + instanceId + " is already in progress", 1);
            } else {
                MediationInitializer.EInitStatus initStatus = MediationInitializer.getInstance().getCurrentInitStatus();
                if (initStatus == MediationInitializer.EInitStatus.NOT_INIT) {
                    this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "init() must be called before loadInterstitial()", 3);
                } else if (initStatus == MediationInitializer.EInitStatus.INIT_IN_PROGRESS) {
                    if (MediationInitializer.getInstance().isInProgressMoreThan15Secs()) {
                        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                        this.mCallbackThrotteler.onInterstitialAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                    } else {
                        this.mInstancesToLoad.add(instanceId);
                    }
                } else if (initStatus == MediationInitializer.EInitStatus.INIT_FAILED) {
                    this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "init() had failed", 3);
                    this.mCallbackThrotteler.onInterstitialAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
                } else if (!this.mInstanceIdToSmashMap.containsKey(instanceId)) {
                    IronSourceError error = ErrorBuilder.buildNonExistentInstanceError("Interstitial");
                    this.mCallbackThrotteler.onInterstitialAdLoadFailed(instanceId, error);
                    logMediationEvent(22, (Object[][]) null);
                    logMediationEvent(IronSourceConstants.INTERSTITIAL_AD_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.ERROR_CODE_KEY, Integer.valueOf(error.getErrorCode())}});
                } else {
                    InterstitialSmash smash = this.mInstanceIdToSmashMap.get(instanceId);
                    if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.INIT_PENDING) {
                        this.mInstancesToLoad.add(instanceId);
                    } else {
                        smash.setMediationState(AbstractSmash.MEDIATION_STATE.LOAD_PENDING);
                        loadAdapterAndSendEvent(smash);
                    }
                }
            }
        } catch (Exception e) {
            IronSourceError error2 = ErrorBuilder.buildLoadFailedError("loadInterstitial exception");
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, error2.getErrorMessage(), 3);
            this.mCallbackThrotteler.onInterstitialAdLoadFailed(error2);
        }
    }

    public void showInterstitial(String instanceId, String placementName) {
        if (this.mShouldTrackNetworkState && this.mActivity != null && !IronSourceUtils.isNetworkConnected(this.mActivity)) {
            this.mISDemandOnlyInterstitialListener.onInterstitialAdShowFailed(instanceId, ErrorBuilder.buildNoInternetConnectionShowFailError("Interstitial"));
            return;
        }
        boolean existingInstanceId = false;
        for (int i = 0; i < this.mSmashArray.size(); i++) {
            AbstractSmash smash = this.mSmashArray.get(i);
            if (smash.getSubProviderId().equals(instanceId)) {
                existingInstanceId = true;
                if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                    CappingManager.incrementShowCounter(this.mActivity, this.mCurrentPlacement);
                    logProviderEvent(23, smash, new Object[][]{new Object[]{"placement", placementName}});
                    sendShowChanceEvents(smash, i, placementName);
                    ((InterstitialSmash) smash).showInterstitial();
                    changeStateToInitiatedForInstanceId(instanceId);
                    return;
                }
            }
        }
        if (!existingInstanceId) {
            this.mISDemandOnlyInterstitialListener.onInterstitialAdShowFailed(instanceId, ErrorBuilder.buildNonExistentInstanceError("no ads to show"));
        } else {
            this.mISDemandOnlyInterstitialListener.onInterstitialAdShowFailed(instanceId, ErrorBuilder.buildShowFailedError("Interstitial", "no ads to show"));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0036, code lost:
    
        if (r0.getMediationState() != com.ironsource.mediationsdk.AbstractSmash.MEDIATION_STATE.AVAILABLE) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003e, code lost:
    
        if (((com.ironsource.mediationsdk.InterstitialSmash) r0).isInterstitialReady() == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0040, code lost:
    
        r1 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isInterstitialReady(java.lang.String r5) {
        /*
            r4 = this;
            r1 = 0
            monitor-enter(r4)
            boolean r2 = r4.mShouldTrackNetworkState     // Catch: java.lang.Throwable -> L42
            if (r2 == 0) goto L14
            android.app.Activity r2 = r4.mActivity     // Catch: java.lang.Throwable -> L42
            if (r2 == 0) goto L14
            android.app.Activity r2 = r4.mActivity     // Catch: java.lang.Throwable -> L42
            boolean r2 = com.ironsource.mediationsdk.utils.IronSourceUtils.isNetworkConnected(r2)     // Catch: java.lang.Throwable -> L42
            if (r2 != 0) goto L14
        L12:
            monitor-exit(r4)
            return r1
        L14:
            java.util.concurrent.CopyOnWriteArrayList<com.ironsource.mediationsdk.AbstractSmash> r2 = r4.mSmashArray     // Catch: java.lang.Throwable -> L42
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Throwable -> L42
        L1a:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Throwable -> L42
            if (r3 == 0) goto L12
            java.lang.Object r0 = r2.next()     // Catch: java.lang.Throwable -> L42
            com.ironsource.mediationsdk.AbstractSmash r0 = (com.ironsource.mediationsdk.AbstractSmash) r0     // Catch: java.lang.Throwable -> L42
            java.lang.String r3 = r0.getSubProviderId()     // Catch: java.lang.Throwable -> L42
            boolean r3 = r3.equals(r5)     // Catch: java.lang.Throwable -> L42
            if (r3 == 0) goto L1a
            com.ironsource.mediationsdk.AbstractSmash$MEDIATION_STATE r2 = r0.getMediationState()     // Catch: java.lang.Throwable -> L42
            com.ironsource.mediationsdk.AbstractSmash$MEDIATION_STATE r3 = com.ironsource.mediationsdk.AbstractSmash.MEDIATION_STATE.AVAILABLE     // Catch: java.lang.Throwable -> L42
            if (r2 != r3) goto L12
            com.ironsource.mediationsdk.InterstitialSmash r0 = (com.ironsource.mediationsdk.InterstitialSmash) r0     // Catch: java.lang.Throwable -> L42
            boolean r2 = r0.isInterstitialReady()     // Catch: java.lang.Throwable -> L42
            if (r2 == 0) goto L12
            r1 = 1
            goto L12
        L42:
            r1 = move-exception
            monitor-exit(r4)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.InterstitialManager.isInterstitialReady(java.lang.String):boolean");
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialManagerListener
    public synchronized void onInterstitialInitSuccess(InterstitialSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + " :onInterstitialInitSuccess()", 1);
        this.mDidFinishToInitInterstitial = true;
        if (this.mIsInISDemandOnlyMode) {
            String instanceId = smash.getSubProviderId();
            if (this.mInstancesToLoad.contains(instanceId)) {
                this.mInstancesToLoad.remove(instanceId);
                loadInterstitial(instanceId);
            }
        } else if (this.mDidCallLoadInterstitial && smashesCount(AbstractSmash.MEDIATION_STATE.AVAILABLE, AbstractSmash.MEDIATION_STATE.LOAD_PENDING) < this.mSmartLoadAmount) {
            smash.setMediationState(AbstractSmash.MEDIATION_STATE.LOAD_PENDING);
            loadAdapterAndSendEvent(smash);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialManagerListener
    public synchronized void onInterstitialInitFailed(IronSourceError error, InterstitialSmash smash) {
        try {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onInterstitialInitFailed(" + error + ")", 1);
            if (this.mIsInISDemandOnlyMode) {
                String instanceId = smash.getSubProviderId();
                if (this.mInstancesToLoad.contains(instanceId)) {
                    this.mInstancesToLoad.remove(instanceId);
                    this.mCallbackThrotteler.onInterstitialAdLoadFailed(instanceId, ErrorBuilder.buildGenericError("no ads to show"));
                    logMediationEvent(IronSourceConstants.INTERSTITIAL_AD_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.ERROR_CODE_KEY, Integer.valueOf(IronSourceError.ERROR_CODE_GENERIC)}});
                    logProviderEvent(IronSourceConstants.INTERSTITIAL_AD_LOAD_FAILED, smash, new Object[][]{new Object[]{IronSourceConstants.ERROR_CODE_KEY, Integer.valueOf(IronSourceError.ERROR_CODE_GENERIC)}});
                }
            } else if (smashesCount(AbstractSmash.MEDIATION_STATE.INIT_FAILED) >= this.mSmashArray.size()) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, "Smart Loading - initialization failed - no adapters are initiated and no more left to init, error: " + error.getErrorMessage(), 2);
                if (this.mDidCallLoadInterstitial) {
                    this.mCallbackThrotteler.onInterstitialAdLoadFailed(ErrorBuilder.buildGenericError("no ads to show"));
                    logMediationEvent(IronSourceConstants.INTERSTITIAL_AD_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.ERROR_CODE_KEY, Integer.valueOf(IronSourceError.ERROR_CODE_GENERIC)}});
                    this.mShouldSendAdReadyEvent = false;
                }
                this.mDidFinishToInitInterstitial = true;
            } else {
                startNextAdapter();
                completeIterationRound();
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onInterstitialInitFailed(error:" + error + ", provider:" + smash.getName() + ")", e);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialManagerListener
    public synchronized void onInterstitialAdReady(InterstitialSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onInterstitialAdReady()", 1);
        logProviderEvent(27, smash, new Object[][]{new Object[]{"status", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE}});
        if (this.mIsInISDemandOnlyMode) {
            smash.setMediationState(AbstractSmash.MEDIATION_STATE.AVAILABLE);
            this.mISDemandOnlyInterstitialListener.onInterstitialAdReady(smash.getSubProviderId());
            logMediationEvent(27, new Object[][]{new Object[]{"status", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE}});
        } else {
            smash.setMediationState(AbstractSmash.MEDIATION_STATE.AVAILABLE);
            this.mIsLoadInterstitialInProgress = false;
            if (this.mShouldSendAdReadyEvent) {
                this.mShouldSendAdReadyEvent = false;
                this.mInterstitialListenersWrapper.onInterstitialAdReady();
                logMediationEvent(27, new Object[][]{new Object[]{"status", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE}});
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialManagerListener
    public synchronized void onInterstitialAdLoadFailed(IronSourceError error, InterstitialSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onInterstitialAdLoadFailed(" + error + ")", 1);
        logProviderEvent(IronSourceConstants.INTERSTITIAL_AD_LOAD_FAILED, smash, new Object[][]{new Object[]{IronSourceConstants.ERROR_CODE_KEY, Integer.valueOf(error.getErrorCode())}});
        if (this.mIsInISDemandOnlyMode) {
            this.mCallbackThrotteler.onInterstitialAdLoadFailed(smash.getSubProviderId(), error);
            logMediationEvent(IronSourceConstants.INTERSTITIAL_AD_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.ERROR_CODE_KEY, Integer.valueOf(error.getErrorCode())}});
        } else {
            smash.setMediationState(AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE);
            int availableOrLoadPending = smashesCount(AbstractSmash.MEDIATION_STATE.AVAILABLE, AbstractSmash.MEDIATION_STATE.LOAD_PENDING);
            if (availableOrLoadPending < this.mSmartLoadAmount) {
                Iterator<AbstractSmash> it = this.mSmashArray.iterator();
                while (true) {
                    if (it.hasNext()) {
                        AbstractSmash asmash = it.next();
                        if (asmash.getMediationState() == AbstractSmash.MEDIATION_STATE.INITIATED) {
                            asmash.setMediationState(AbstractSmash.MEDIATION_STATE.LOAD_PENDING);
                            loadAdapterAndSendEvent((InterstitialSmash) asmash);
                            break;
                        }
                    } else if (startNextAdapter() == null && this.mDidCallLoadInterstitial && availableOrLoadPending == 0) {
                        completeIterationRound();
                        this.mIsLoadInterstitialInProgress = false;
                        this.mCallbackThrotteler.onInterstitialAdLoadFailed(error);
                        logMediationEvent(IronSourceConstants.INTERSTITIAL_AD_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.ERROR_CODE_KEY, Integer.valueOf(error.getErrorCode())}});
                    }
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialManagerListener
    public void onInterstitialAdOpened(InterstitialSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onInterstitialAdOpened()", 1);
        logProviderEvent(25, smash, (Object[][]) null);
        if (this.mIsInISDemandOnlyMode) {
            this.mISDemandOnlyInterstitialListener.onInterstitialAdOpened(smash.getSubProviderId());
        } else {
            this.mInterstitialListenersWrapper.onInterstitialAdOpened();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialManagerListener
    public void onInterstitialAdClosed(InterstitialSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onInterstitialAdClosed()", 1);
        logProviderEvent(26, smash, (Object[][]) null);
        if (this.mIsInISDemandOnlyMode) {
            this.mISDemandOnlyInterstitialListener.onInterstitialAdClosed(smash.getSubProviderId());
        } else {
            this.mInterstitialListenersWrapper.onInterstitialAdClosed();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialManagerListener
    public void onInterstitialAdShowSucceeded(InterstitialSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onInterstitialAdShowSucceeded()", 1);
        if (this.mIsInISDemandOnlyMode) {
            this.mISDemandOnlyInterstitialListener.onInterstitialAdShowSucceeded(smash.getSubProviderId());
            return;
        }
        boolean hasAvailable = false;
        for (AbstractSmash asmash : this.mSmashArray) {
            if (asmash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                hasAvailable = true;
                completeAdapterShow(asmash);
            }
        }
        if (!hasAvailable && (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.CAPPED_PER_SESSION || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.EXHAUSTED || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY)) {
            completeIterationRound();
        }
        changeStateToInitiated();
        this.mInterstitialListenersWrapper.onInterstitialAdShowSucceeded();
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialManagerListener
    public void onInterstitialAdShowFailed(IronSourceError error, InterstitialSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onInterstitialAdShowFailed(" + error + ")", 1);
        if (this.mIsInISDemandOnlyMode) {
            this.mISDemandOnlyInterstitialListener.onInterstitialAdShowFailed(smash.getSubProviderId(), error);
            return;
        }
        completeAdapterShow(smash);
        for (AbstractSmash asmash : this.mSmashArray) {
            if (asmash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                this.mDidCallLoadInterstitial = true;
                showInterstitial(this.mCurrentPlacement.getPlacementName());
                return;
            }
        }
        this.mInterstitialListenersWrapper.onInterstitialAdShowFailed(error);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialManagerListener
    public void onInterstitialAdClicked(InterstitialSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onInterstitialAdClicked()", 1);
        logProviderEvent(28, smash, (Object[][]) null);
        if (this.mIsInISDemandOnlyMode) {
            this.mISDemandOnlyInterstitialListener.onInterstitialAdClicked(smash.getSubProviderId());
        } else {
            this.mInterstitialListenersWrapper.onInterstitialAdClicked();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialManagerListener
    public void onInterstitialAdVisible(InterstitialSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onInterstitialAdVisible()", 1);
        logProviderEvent(31, smash, new Object[][]{new Object[]{"placement", this.mCurrentPlacement.getPlacementName()}});
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedInterstitialManagerListener
    public void onInterstitialAdRewarded(InterstitialSmash smash) {
        logProviderEvent(IronSourceConstants.INTERSTITIAL_AD_REWARDED, smash, (Object[][]) null);
        if (this.mRewardedInterstitialListenerWrapper != null) {
            this.mRewardedInterstitialListenerWrapper.onInterstitialAdRewarded();
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdUnitManager
    void shouldTrackNetworkState(Context context, boolean track) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, this.TAG + " Should Track Network State: " + track, 0);
        this.mShouldTrackNetworkState = track;
    }

    @Override // com.ironsource.mediationsdk.MediationInitializer.OnMediationInitializationListener
    public void onInitSuccess(List<IronSource.AD_UNIT> adUnits, boolean revived) {
    }

    @Override // com.ironsource.mediationsdk.MediationInitializer.OnMediationInitializationListener
    public void onInitFailed(String reason) {
        if (this.mIsInISDemandOnlyMode) {
            for (String instanceId : this.mInstancesToLoad) {
                this.mCallbackThrotteler.onInterstitialAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
            }
            this.mInstancesToLoad.clear();
            return;
        }
        if (this.mDidCallLoadInterstitial) {
            this.mCallbackThrotteler.onInterstitialAdLoadFailed(ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
            this.mDidCallLoadInterstitial = false;
            this.mIsLoadInterstitialInProgress = false;
        }
    }

    @Override // com.ironsource.mediationsdk.MediationInitializer.OnMediationInitializationListener
    public void onStillInProgressAfter15Secs() {
        if (this.mIsInISDemandOnlyMode) {
            for (String instanceId : this.mInstancesToLoad) {
                this.mCallbackThrotteler.onInterstitialAdLoadFailed(instanceId, ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial"));
            }
            this.mInstancesToLoad.clear();
            return;
        }
        if (this.mDidCallLoadInterstitial) {
            IronSourceError error = ErrorBuilder.buildInitFailedError("init() had failed", "Interstitial");
            this.mCallbackThrotteler.onInterstitialAdLoadFailed(error);
            this.mDidCallLoadInterstitial = false;
            this.mIsLoadInterstitialInProgress = false;
            if (this.mShouldSendAdReadyEvent) {
                logMediationEvent(IronSourceConstants.INTERSTITIAL_AD_LOAD_FAILED, new Object[][]{new Object[]{IronSourceConstants.ERROR_CODE_KEY, Integer.valueOf(error.getErrorCode())}});
                this.mShouldSendAdReadyEvent = false;
            }
        }
    }

    private boolean isIterationRoundComplete() {
        for (AbstractSmash smash : this.mSmashArray) {
            if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_INITIATED || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.INIT_PENDING || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.INITIATED || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.LOAD_PENDING || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                return false;
            }
        }
        return true;
    }

    private void completeIterationRound() {
        if (isIterationRoundComplete()) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "Reset Iteration", 0);
            for (AbstractSmash smash : this.mSmashArray) {
                if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.EXHAUSTED) {
                    smash.completeIteration();
                }
            }
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "End of Reset Iteration", 0);
        }
    }

    private void completeAdapterShow(AbstractSmash smash) {
        if (!smash.isMediationAvailable()) {
            startNextAdapter();
            completeIterationRound();
        } else {
            smash.setMediationState(AbstractSmash.MEDIATION_STATE.INITIATED);
        }
    }

    private AbstractAdapter startNextAdapter() {
        AbstractAdapter initiatedAdapter = null;
        int activeAdapters = 0;
        for (int i = 0; i < this.mSmashArray.size() && initiatedAdapter == null; i++) {
            if (this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE || this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.INITIATED || this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.INIT_PENDING || this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.LOAD_PENDING) {
                activeAdapters++;
                if (activeAdapters >= this.mSmartLoadAmount) {
                    break;
                }
            } else if (this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_INITIATED && (initiatedAdapter = startAdapter((InterstitialSmash) this.mSmashArray.get(i))) == null) {
                this.mSmashArray.get(i).setMediationState(AbstractSmash.MEDIATION_STATE.INIT_FAILED);
            }
        }
        return initiatedAdapter;
    }

    private synchronized AbstractAdapter startAdapter(InterstitialSmash smash) {
        AbstractAdapter providerAdapter;
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":startAdapter(" + smash.getName() + ")", 1);
        try {
            providerAdapter = getLoadedAdapterOrFetchByReflection(smash);
            if (providerAdapter == null) {
                providerAdapter = null;
            } else {
                IronSourceObject.getInstance().addToISAdaptersList(providerAdapter);
                providerAdapter.setLogListener(this.mLoggerManager);
                smash.setAdapterForSmash(providerAdapter);
                smash.setMediationState(AbstractSmash.MEDIATION_STATE.INIT_PENDING);
                if (this.mRewardedInterstitialListenerWrapper != null) {
                    smash.setRewardedInterstitialManagerListener(this);
                }
                setCustomParams(smash);
                smash.initInterstitial(this.mActivity, this.mAppKey, this.mUserId);
            }
        } catch (Throwable e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, this.TAG + ":startAdapter(" + smash.getName() + ")", e);
            smash.setMediationState(AbstractSmash.MEDIATION_STATE.INIT_FAILED);
            IronSourceError error = ErrorBuilder.buildInitFailedError(smash.getName() + " initialization failed - please verify that required dependencies are in you build path.", "Interstitial");
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, error.toString(), 2);
            providerAdapter = null;
        }
        return providerAdapter;
    }

    void setCurrentPlacement(InterstitialPlacement currentPlacement) {
        this.mCurrentPlacement = currentPlacement;
    }

    private synchronized void loadAdapterAndSendEvent(InterstitialSmash smash) {
        if (this.mIsInISDemandOnlyMode) {
            logMediationEvent(22, (Object[][]) null);
        }
        logProviderEvent(22, smash, (Object[][]) null);
        smash.loadInterstitial();
    }

    private synchronized void changeStateToInitiatedForInstanceId(String instanceId) {
        for (AbstractSmash smash : this.mSmashArray) {
            if (smash.getSubProviderId().equals(instanceId) && (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.LOAD_PENDING || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE)) {
                smash.setMediationState(AbstractSmash.MEDIATION_STATE.INITIATED);
                break;
            }
        }
    }

    private synchronized void changeStateToInitiated() {
        for (AbstractSmash smash : this.mSmashArray) {
            if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.LOAD_PENDING || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE) {
                smash.setMediationState(AbstractSmash.MEDIATION_STATE.INITIATED);
            }
        }
    }

    private void sendShowChanceEvent(AbstractSmash smash, String placementName, boolean status) {
        Object[][] objArr = new Object[2][];
        objArr[0] = new Object[]{"placement", placementName};
        Object[] objArr2 = new Object[2];
        objArr2[0] = "status";
        objArr2[1] = status ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false";
        objArr[1] = objArr2;
        logProviderEvent(IronSourceConstants.INTERSTITIAL_SHOW_CHANCE, smash, objArr);
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

    private void logMediationEvent(int eventId, Object[][] keyVals) {
        JSONObject data = IronSourceUtils.getMediationAdditionalData(this.mIsInISDemandOnlyMode);
        if (keyVals != null) {
            try {
                for (Object[] pair : keyVals) {
                    data.put(pair[0].toString(), pair[1]);
                }
            } catch (Exception e) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "InterstitialManager logMediationEvent " + Log.getStackTraceString(e), 3);
            }
        }
        EventData event = new EventData(eventId, data);
        InterstitialEventsManager.getInstance().log(event);
    }

    private void logProviderEvent(int eventId, AbstractSmash smash, Object[][] keyVals) {
        JSONObject data = IronSourceUtils.getProviderAdditionalData(smash, this.mIsInISDemandOnlyMode);
        if (keyVals != null) {
            try {
                for (Object[] pair : keyVals) {
                    data.put(pair[0].toString(), pair[1]);
                }
            } catch (Exception e) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "InterstitialManager logProviderEvent " + Log.getStackTraceString(e), 3);
            }
        }
        EventData event = new EventData(eventId, data);
        InterstitialEventsManager.getInstance().log(event);
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
        if (this.mSmashArray != null) {
            for (AbstractSmash smash : this.mSmashArray) {
                if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.CAPPED_PER_DAY) {
                    logProviderEvent(IronSourceConstants.INTERSTITIAL_DAILY_CAPPED, smash, new Object[][]{new Object[]{"status", "false"}});
                    if (smash.isCappedPerSession()) {
                        smash.setMediationState(AbstractSmash.MEDIATION_STATE.CAPPED_PER_SESSION);
                    } else if (smash.isExhausted()) {
                        smash.setMediationState(AbstractSmash.MEDIATION_STATE.EXHAUSTED);
                    } else {
                        smash.setMediationState(AbstractSmash.MEDIATION_STATE.INITIATED);
                    }
                }
            }
        }
    }
}
