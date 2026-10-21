package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.text.TextUtils;
import com.facebook.internal.ServerProtocol;
import com.ironsource.eventsmodule.EventData;
import com.ironsource.mediationsdk.AbstractSmash;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.MediationInitializer;
import com.ironsource.mediationsdk.events.InterstitialEventsManager;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.BannerPlacement;
import com.ironsource.mediationsdk.sdk.BannerApi;
import com.ironsource.mediationsdk.sdk.BannerManagerListener;
import com.ironsource.mediationsdk.utils.CappingManager;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.tendcloud.tenddata.game.ao;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BannerManager extends AbstractAdUnitManager implements BannerApi, BannerManagerListener, MediationInitializer.OnMediationInitializationListener {
    private static final long LOAD_FAILED_COOLDOWN_IN_MILLIS = 15000;
    private boolean isFirstLoad;
    private boolean isReloading;
    private BannerPlacement mCurrentPlacement;
    private boolean mDidFinishToInitBanner;
    private Handler mHandler;
    private long mLastLoadFailTimestamp;
    private LoadFailedRunnable mLoadFailedRunnable;
    private IronSourceBannerLayout mPendingToLoadBannerLayout;
    private final String TAG = getClass().getName();
    private boolean mDidCallLoad = false;
    private boolean mLoadInProgress = false;
    private HandlerThread mHandlerThread = new HandlerThread("IronSourceBannerHandler");

    @Override // com.ironsource.mediationsdk.AbstractAdUnitManager, com.ironsource.mediationsdk.sdk.BaseApi
    public /* bridge */ /* synthetic */ void onPause(Activity activity) {
        super.onPause(activity);
    }

    @Override // com.ironsource.mediationsdk.AbstractAdUnitManager, com.ironsource.mediationsdk.sdk.BaseApi
    public /* bridge */ /* synthetic */ void onResume(Activity activity) {
        super.onResume(activity);
    }

    @Override // com.ironsource.mediationsdk.AbstractAdUnitManager, com.ironsource.mediationsdk.sdk.BaseApi
    public /* bridge */ /* synthetic */ void setAge(int i) {
        super.setAge(i);
    }

    @Override // com.ironsource.mediationsdk.AbstractAdUnitManager, com.ironsource.mediationsdk.sdk.BaseApi
    public /* bridge */ /* synthetic */ void setGender(String str) {
        super.setGender(str);
    }

    @Override // com.ironsource.mediationsdk.AbstractAdUnitManager, com.ironsource.mediationsdk.sdk.BaseApi
    public /* bridge */ /* synthetic */ void setMediationSegment(String str) {
        super.setMediationSegment(str);
    }

    public BannerManager() {
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper());
        this.isFirstLoad = true;
    }

    public void initBanners(Activity activity, String appKey, String userId) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":initBanners(appKey: " + appKey + ", userId: " + userId + ")", 1);
        this.mAppKey = appKey;
        this.mUserId = userId;
        this.mActivity = activity;
        startNextAdapter();
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
            } else if (this.mSmashArray.get(i).getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_INITIATED && (initiatedAdapter = startAdapter((BannerSmash) this.mSmashArray.get(i))) == null) {
                this.mSmashArray.get(i).setMediationState(AbstractSmash.MEDIATION_STATE.INIT_FAILED);
            }
        }
        return initiatedAdapter;
    }

    private AbstractAdapter startAdapter(BannerSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":startAdapter(" + smash.getName() + ")", 1);
        try {
            AbstractAdapter providerAdapter = getLoadedAdapterOrFetchByReflection(smash);
            if (providerAdapter == null) {
                return null;
            }
            IronSourceObject.getInstance().addToBannerAdaptersList(providerAdapter);
            providerAdapter.setLogListener(this.mLoggerManager);
            smash.setAdapterForSmash(providerAdapter);
            smash.setMediationState(AbstractSmash.MEDIATION_STATE.INIT_PENDING);
            setCustomParams(smash);
            smash.initBanners(this.mActivity, this.mAppKey, this.mUserId);
            return providerAdapter;
        } catch (Throwable e) {
            e.printStackTrace();
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, this.TAG + ":startAdapter(" + smash.getName() + ")", e);
            smash.setMediationState(AbstractSmash.MEDIATION_STATE.INIT_FAILED);
            IronSourceError error = ErrorBuilder.buildInitFailedError(smash.getName() + " initialization failed - please verify that required dependencies are in you build path.", IronSourceConstants.BANNER_AD_UNIT);
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, error.toString(), 2);
            return null;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerApi
    public IronSourceBannerLayout createBanner(Activity activity, EBannerSize size) {
        return new IronSourceBannerLayout(activity, size, this);
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerApi
    public void loadBanner(IronSourceBannerLayout banner, String placementName) {
        try {
            innerDestroy();
            this.isReloading = false;
            if (banner == null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Load Banner can't be called on null object", 1);
            } else if (banner.isDestroyed()) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Banner is already destroyed and can't be used anymore. Please create a new one using IronSource.createBanner API", 1);
            } else if (this.mLoadInProgress) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Load Banner is already in progress", 1);
            } else {
                resetLoadRound();
                this.mDidCallLoad = true;
                this.mPendingToLoadBannerLayout = banner;
                this.mLoadInProgress = true;
                MediationInitializer.EInitStatus currentInitStatus = MediationInitializer.getInstance().getCurrentInitStatus();
                if (currentInitStatus == MediationInitializer.EInitStatus.INIT_FAILED || currentInitStatus == MediationInitializer.EInitStatus.NOT_INIT) {
                    sendOrScheduleLoadFailedCallback(new IronSourceError(IronSourceError.BANNER_INIT_FAILED, "Load Banner can't be called before the Banner ad unit initialization completed successfully"), false);
                } else if (currentInitStatus == MediationInitializer.EInitStatus.INIT_IN_PROGRESS) {
                    sendOrScheduleLoadFailedCallback(new IronSourceError(IronSourceError.BANNER_INIT_IN_PROGRESS, "Load Banner can't be called before the Banner ad unit initialization completed successfully"), true);
                } else if (!IronSourceUtils.isNetworkConnected(this.mActivity)) {
                    sendOrScheduleLoadFailedCallback(ErrorBuilder.buildNoInternetConnectionLoadFailError(IronSourceConstants.BANNER_AD_UNIT), false);
                } else {
                    this.isFirstLoad = false;
                    this.mCurrentPlacement = IronSourceObject.getInstance().validateBannerPlacement(placementName);
                    sendMediationLevelLoadEvent(banner, this.mCurrentPlacement.getPlacementName());
                    CappingManager.ECappingStatus status = IronSourceObject.getInstance().getBannerCappingStatus(this.mCurrentPlacement.getPlacementName());
                    String cappedMessage = IronSourceObject.getInstance().getCappingMessage(this.mCurrentPlacement.getPlacementName(), status);
                    if (!TextUtils.isEmpty(cappedMessage)) {
                        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, cappedMessage, 1);
                        sendOrScheduleLoadFailedCallback(ErrorBuilder.buildCappedPerPlacementError(IronSourceConstants.BANNER_AD_UNIT, cappedMessage), false);
                    } else {
                        banner.setPlacementName(this.mCurrentPlacement.getPlacementName());
                        changeStateToInitiated();
                        Iterator<AbstractSmash> it = this.mSmashArray.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                AbstractSmash smash = it.next();
                                if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.INITIATED) {
                                    smash.setMediationState(AbstractSmash.MEDIATION_STATE.LOAD_PENDING);
                                    loadAdapterAndSendEvent((BannerSmash) smash, banner);
                                    break;
                                }
                            } else if (this.mDidFinishToInitBanner) {
                                sendOrScheduleLoadFailedCallback(new IronSourceError(603, "no ads to show"), false);
                            }
                        }
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            sendOrScheduleLoadFailedCallback(new IronSourceError(IronSourceError.BANNER_LOAD_EXCEPTION, "loadBanner exception"), false);
        }
    }

    private void sendMediationLevelLoadEvent(IronSourceBannerLayout banner, String placementName) {
        JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
        int bannerSizeData = 0;
        if (banner != null) {
            try {
                bannerSizeData = banner.getSize().getValue();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        data.put("bannerAdSize", bannerSizeData);
        data.put("placement", placementName);
        EventData event = new EventData(IronSourceConstants.LOAD_BANNER_CODE, data);
        InterstitialEventsManager.getInstance().log(event);
    }

    private synchronized void sendOrScheduleLoadFailedCallback(IronSourceError error, boolean shouldWait) {
        removeScheduledLoadFailedCallback();
        this.mLoadFailedRunnable = new LoadFailedRunnable(error);
        long currentTimestamp = System.currentTimeMillis();
        long timeFromPreviousLoadFailed = shouldWait ? 0L : currentTimestamp - this.mLastLoadFailTimestamp;
        if (timeFromPreviousLoadFailed >= LOAD_FAILED_COOLDOWN_IN_MILLIS) {
            if (this.mHandler != null) {
                this.mHandler.post(this.mLoadFailedRunnable);
            }
        } else {
            long timeToNextLoadFailed = LOAD_FAILED_COOLDOWN_IN_MILLIS - timeFromPreviousLoadFailed;
            if (this.mHandler != null) {
                this.mHandler.postDelayed(this.mLoadFailedRunnable, timeToNextLoadFailed);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.MediationInitializer.OnMediationInitializationListener
    public void onInitSuccess(List<IronSource.AD_UNIT> adUnits, boolean revived) {
    }

    @Override // com.ironsource.mediationsdk.MediationInitializer.OnMediationInitializationListener
    public void onInitFailed(String reason) {
        if (this.mDidCallLoad) {
            sendOrScheduleLoadFailedCallback(new IronSourceError(IronSourceError.BANNER_NO_ADS_TO_SHOW2, "no ads to show"), false);
        }
    }

    @Override // com.ironsource.mediationsdk.MediationInitializer.OnMediationInitializationListener
    public void onStillInProgressAfter15Secs() {
    }

    private class LoadFailedRunnable implements Runnable {
        IronSourceError error;

        LoadFailedRunnable(IronSourceError error) {
            this.error = error;
        }

        @Override // java.lang.Runnable
        public void run() {
            BannerManager.this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Load Banner failed: " + this.error.getErrorMessage(), 1);
            BannerManager.this.mLastLoadFailTimestamp = System.currentTimeMillis();
            if (BannerManager.this.mPendingToLoadBannerLayout != null && BannerManager.this.mPendingToLoadBannerLayout.getBannerListener() != null) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onBannerAdLoadFailed(), error: " + this.error.getErrorMessage(), 1);
                JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
                try {
                    int bannerSizeData = BannerManager.this.mPendingToLoadBannerLayout.getSize().getValue();
                    data.put("status", "false");
                    data.put(IronSourceConstants.ERROR_CODE_KEY, this.error.getErrorCode());
                    data.put("bannerAdSize", bannerSizeData);
                } catch (Exception e) {
                    e.printStackTrace();
                }
                EventData event = new EventData(IronSourceConstants.BANNER_AD_READY_RESULT, data);
                InterstitialEventsManager.getInstance().log(event);
                BannerManager.this.mPendingToLoadBannerLayout.getBannerListener().onBannerAdLoadFailed(this.error);
            }
            BannerManager.this.resetLoadRound();
        }
    }

    private synchronized void removeScheduledLoadFailedCallback() {
        if (this.mHandler != null && this.mLoadFailedRunnable != null) {
            this.mHandler.removeCallbacks(this.mLoadFailedRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void resetLoadRound() {
        this.mLoadInProgress = false;
        this.mDidCallLoad = false;
        this.mPendingToLoadBannerLayout = null;
        if (this.mLoadFailedRunnable != null) {
            this.mHandler.removeCallbacks(this.mLoadFailedRunnable);
        }
    }

    private synchronized void changeStateToInitiated() {
        for (AbstractSmash smash : this.mSmashArray) {
            if (smash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.LOAD_PENDING || smash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE) {
                smash.setMediationState(AbstractSmash.MEDIATION_STATE.INITIATED);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerApi
    public void destroyBanner(IronSourceBannerLayout banner) {
        this.isReloading = false;
        if (banner != null) {
            if (banner.isDestroyed()) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Banner is already destroyed and can't be used anymore. Please create a new one using IronSource.createBanner API", 1);
                return;
            }
            JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
            EventData event = new EventData(IronSourceConstants.DESTROY_BANNER_CODE, data);
            InterstitialEventsManager.getInstance().log(event);
            this.mLoadInProgress = false;
            this.mDidCallLoad = false;
            banner.destroyBanner();
        }
    }

    private void innerDestroy() {
        if (this.mPendingToLoadBannerLayout != null) {
            this.mPendingToLoadBannerLayout.clearSmash();
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractAdUnitManager
    void shouldTrackNetworkState(Context context, boolean track) {
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001b A[Catch: all -> 0x0033, TRY_ENTER, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0002, B:6:0x0008, B:8:0x0012, B:9:0x001b, B:13:0x002f), top: B:20:0x0002, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private synchronized void loadAdapterAndSendEvent(com.ironsource.mediationsdk.BannerSmash r6, com.ironsource.mediationsdk.IronSourceBannerLayout r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            r3 = 0
            org.json.JSONObject r0 = com.ironsource.mediationsdk.utils.IronSourceUtils.getProviderAdditionalData(r6, r3)     // Catch: java.lang.Throwable -> L33
            if (r7 == 0) goto L1b
            java.lang.String r3 = r7.getPlacementName()     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L33
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L33
            if (r3 != 0) goto L1b
            java.lang.String r3 = "placement"
            java.lang.String r4 = r7.getPlacementName()     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L33
            r0.put(r3, r4)     // Catch: java.lang.Exception -> L2e java.lang.Throwable -> L33
        L1b:
            com.ironsource.eventsmodule.EventData r2 = new com.ironsource.eventsmodule.EventData     // Catch: java.lang.Throwable -> L33
            r3 = 402(0x192, float:5.63E-43)
            r2.<init>(r3, r0)     // Catch: java.lang.Throwable -> L33
            com.ironsource.mediationsdk.events.InterstitialEventsManager r3 = com.ironsource.mediationsdk.events.InterstitialEventsManager.getInstance()     // Catch: java.lang.Throwable -> L33
            r3.log(r2)     // Catch: java.lang.Throwable -> L33
            r6.loadBanner(r7)     // Catch: java.lang.Throwable -> L33
            monitor-exit(r5)
            return
        L2e:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L33
            goto L1b
        L33:
            r3 = move-exception
            monitor-exit(r5)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.BannerManager.loadAdapterAndSendEvent(com.ironsource.mediationsdk.BannerSmash, com.ironsource.mediationsdk.IronSourceBannerLayout):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00cc A[Catch: all -> 0x00c9, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0024, B:7:0x0030, B:11:0x003d, B:13:0x0043, B:14:0x0049, B:16:0x004f, B:18:0x005d, B:21:0x0066, B:23:0x006a, B:25:0x006e, B:27:0x00b5, B:32:0x00cc), top: B:34:0x0001 }] */
    @Override // com.ironsource.mediationsdk.sdk.BannerManagerListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void onBannerInitSuccess(com.ironsource.mediationsdk.BannerSmash r9) {
        /*
            Method dump skipped, instruction units count: 216
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.BannerManager.onBannerInitSuccess(com.ironsource.mediationsdk.BannerSmash):void");
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerManagerListener
    public synchronized void onBannerInitFailed(IronSourceError error, BannerSmash smash) {
        try {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, smash.getInstanceName() + ":onBannerInitFailed(" + error + ")", 1);
            int initFailed = 0;
            Iterator<AbstractSmash> it = this.mSmashArray.iterator();
            while (true) {
                if (it.hasNext()) {
                    AbstractSmash asmash = it.next();
                    if (asmash.getMediationState() == AbstractSmash.MEDIATION_STATE.INIT_FAILED && (initFailed = initFailed + 1) >= this.mSmashArray.size()) {
                        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, "Smart Loading - initialization failed - no adapters are initiated and no more left to init, error: " + error.getErrorMessage(), 2);
                        if (this.mDidCallLoad) {
                            sendOrScheduleLoadFailedCallback(new IronSourceError(IronSourceError.BANNER_NO_ADS_TO_SHOW3, "no ads to show"), false);
                        }
                        this.mDidFinishToInitBanner = true;
                    }
                } else {
                    startNextAdapter();
                    break;
                }
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onBannerInitFailed(error:" + error + ", provider:" + smash.getName() + ")", e);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerManagerListener
    public void onFirstBannerImpression(IronSourceBannerLayout banner, BannerSmash smash) {
        if (smash == null || smash.getAdapter() == null || banner == null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":onBannerImpression error: adapter or banner is null", 2);
            return;
        }
        JSONObject data = IronSourceUtils.getProviderAdditionalData(smash, false);
        try {
            int bannerSizeData = banner.getSize().getValue();
            data.put("bannerAdSize", bannerSizeData);
        } catch (Exception e) {
            e.printStackTrace();
        }
        EventData event = new EventData(IronSourceConstants.BANNER_AD_OPENED, data);
        InterstitialEventsManager.getInstance().log(event);
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerManagerListener
    public void onBannerAdLoaded(BannerSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":onBannerAdLoaded", 1);
        JSONObject providerData = IronSourceUtils.getProviderAdditionalData(smash, false);
        JSONObject mediationData = IronSourceUtils.getMediationAdditionalData(false);
        try {
            int bannerSizeData = smash.getSize().getValue();
            providerData.put("status", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            mediationData.put("status", ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            providerData.put("bannerAdSize", bannerSizeData);
            mediationData.put("bannerAdSize", bannerSizeData);
        } catch (Exception e) {
            e.printStackTrace();
        }
        EventData providerEvent = new EventData(IronSourceConstants.BANNER_AD_READY_RESULT, providerData);
        EventData mediationEvent = new EventData(IronSourceConstants.BANNER_AD_READY_RESULT, mediationData);
        InterstitialEventsManager.getInstance().log(providerEvent);
        InterstitialEventsManager.getInstance().log(mediationEvent);
        if (this.mDidCallLoad) {
            smash.setMediationState(AbstractSmash.MEDIATION_STATE.AVAILABLE);
        }
        removeScheduledLoadFailedCallback();
        this.mLoadInProgress = false;
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerManagerListener
    public void onBannerReloadAd(BannerSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":onBannerReloadAd", 1);
        JSONObject data = IronSourceUtils.getProviderAdditionalData(smash, this.mIsInISDemandOnlyMode);
        EventData event = new EventData(IronSourceConstants.RELOAD_BANNER_CODE, data);
        InterstitialEventsManager.getInstance().log(event);
        JSONObject impressionData = IronSourceUtils.getProviderAdditionalData(smash, this.mIsInISDemandOnlyMode);
        try {
            int bannerSizeData = smash.getSize().getValue();
            impressionData.put("bannerAdSize", bannerSizeData);
            impressionData.put(ao.q, 100);
        } catch (Exception e) {
            e.printStackTrace();
        }
        EventData impressionEvent = new EventData(IronSourceConstants.BANNER_AD_OPENED, impressionData);
        InterstitialEventsManager.getInstance().log(impressionEvent);
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerManagerListener
    public void onBannerAdLoadFailed(IronSourceError error, BannerSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":onBannerAdLoadFailed", 1);
        smash.setMediationState(AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE);
        for (AbstractSmash asmash : this.mSmashArray) {
            if (asmash.getMediationState() != AbstractSmash.MEDIATION_STATE.AVAILABLE && asmash.getMediationState() != AbstractSmash.MEDIATION_STATE.LOAD_PENDING) {
                if (asmash.getMediationState() == AbstractSmash.MEDIATION_STATE.INITIATED && this.mPendingToLoadBannerLayout != null) {
                    asmash.setMediationState(AbstractSmash.MEDIATION_STATE.LOAD_PENDING);
                    loadAdapterAndSendEvent((BannerSmash) asmash, this.mPendingToLoadBannerLayout);
                    return;
                }
            } else {
                return;
            }
        }
        AbstractAdapter initiatedAdapter = startNextAdapter();
        if (this.mDidCallLoad && initiatedAdapter == null) {
            sendOrScheduleLoadFailedCallback(error, false);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerManagerListener
    public void onBannerAdReloaded(BannerSmash smash) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":onBannerAdReloaded", 1);
        smash.setMediationState(AbstractSmash.MEDIATION_STATE.AVAILABLE);
        JSONObject data = IronSourceUtils.getProviderAdditionalData(smash, this.mIsInISDemandOnlyMode);
        EventData event = new EventData(IronSourceConstants.BANNER_RELOADED_AD_READY, data);
        InterstitialEventsManager.getInstance().log(event);
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerManagerListener
    public void onBannerAdReloadFailed(IronSourceError error, BannerSmash smash) {
        this.isReloading = true;
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":onBannerAdReloadFailed", 1);
        smash.setMediationState(AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE);
        JSONObject data = IronSourceUtils.getProviderAdditionalData(smash, this.mIsInISDemandOnlyMode);
        EventData event = new EventData(IronSourceConstants.BANNER_RELOADED_AD_FAIL, data);
        InterstitialEventsManager.getInstance().log(event);
        int notAvailable = 1;
        for (AbstractSmash abstractSmash : this.mSmashArray) {
            if (!smash.getInstanceName().equals(abstractSmash.getInstanceName())) {
                if (abstractSmash.getMediationState() == AbstractSmash.MEDIATION_STATE.INITIATED || abstractSmash.getMediationState() == AbstractSmash.MEDIATION_STATE.AVAILABLE) {
                    abstractSmash.setMediationState(AbstractSmash.MEDIATION_STATE.LOAD_PENDING);
                    ((BannerSmash) abstractSmash).loadBanner(this.mPendingToLoadBannerLayout);
                    return;
                } else {
                    if (abstractSmash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_INITIATED) {
                        startNextAdapter();
                        return;
                    }
                    if (abstractSmash.getMediationState() == AbstractSmash.MEDIATION_STATE.NOT_AVAILABLE) {
                        notAvailable++;
                    }
                    if (notAvailable >= this.mSmashArray.size()) {
                        sendOrScheduleLoadFailedCallback(new IronSourceError(IronSourceError.ERROR_CODE_NO_ADS_TO_RELOAD, "no ads to show"), true);
                        return;
                    }
                }
            }
        }
    }
}
