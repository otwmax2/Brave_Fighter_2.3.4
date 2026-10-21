package com.ironsource.mediationsdk;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import com.ironsource.mediationsdk.AbstractSmash;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.model.ProviderSettings;
import com.ironsource.mediationsdk.sdk.BannerLayoutListener;
import com.ironsource.mediationsdk.sdk.BannerManagerListener;
import com.ironsource.mediationsdk.sdk.BannerSmashApi;
import com.ironsource.mediationsdk.sdk.BannerSmashListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class BannerSmash extends AbstractSmash implements BannerSmashListener, BannerSmashApi {
    private final String TAG;
    private JSONObject mBannerAdapterConfigs;
    private IronSourceBannerLayout mBannerLayout;
    private BannerLayoutListener mBannerLayoutListener;
    private long mBannerLoadRefreshInterval;
    private BannerManagerListener mBannerManagerListener;
    private Handler mHandler;
    private boolean mIsReload;
    private ReloadBannerRunnable mReloadBannerRunnable;
    private EBannerSize mSize;
    private long mTimeoutInMillis;

    BannerSmash(ProviderSettings adapterConfigs, long timeout, int interval) {
        super(adapterConfigs);
        this.TAG = getClass().getName();
        this.mSize = null;
        this.mBannerAdapterConfigs = adapterConfigs.getBannerSettings();
        this.mIsMultipleInstances = adapterConfigs.isMultipleInstances();
        this.mSpId = adapterConfigs.getSubProviderId();
        this.mTimeoutInMillis = timeout;
        this.mBannerLoadRefreshInterval = interval * 1000;
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mReloadBannerRunnable = new ReloadBannerRunnable();
    }

    void initBanners(Activity activity, String appKey, String userId) {
        startInitTimer();
        if (this.mAdapter != null) {
            this.mAdapter.addBannerListener(this);
            this.mAdapter.initBanners(activity, appKey, userId, this.mBannerAdapterConfigs, this);
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractSmash
    boolean isExhausted() {
        return false;
    }

    @Override // com.ironsource.mediationsdk.AbstractSmash
    boolean isCappedPerSession() {
        return false;
    }

    @Override // com.ironsource.mediationsdk.AbstractSmash
    void completeIteration() {
    }

    @Override // com.ironsource.mediationsdk.AbstractSmash
    void startInitTimer() {
        try {
            this.mInitTimerTask = new TimerTask() { // from class: com.ironsource.mediationsdk.BannerSmash.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (BannerSmash.this.mMediationState == AbstractSmash.MEDIATION_STATE.INIT_PENDING && BannerSmash.this.mBannerManagerListener != null) {
                        BannerSmash.this.onBannerInitFailed(ErrorBuilder.buildInitFailedError("Timeout", IronSourceConstants.BANNER_AD_UNIT));
                    }
                }
            };
            Timer timer = new Timer();
            if (this.mInitTimerTask != null) {
                timer.schedule(this.mInitTimerTask, this.mTimeoutInMillis);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractSmash
    void startLoadTimer() {
        try {
            this.mLoadTimerTask = new TimerTask() { // from class: com.ironsource.mediationsdk.BannerSmash.2
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    if (BannerSmash.this.mMediationState == AbstractSmash.MEDIATION_STATE.LOAD_PENDING && BannerSmash.this.mBannerManagerListener != null) {
                        BannerSmash.this.onBannerAdLoadFailed(new IronSourceError(603, "Timeout"));
                    }
                }
            };
            Timer timer = new Timer();
            if (this.mLoadTimerTask != null) {
                timer.schedule(this.mLoadTimerTask, this.mTimeoutInMillis);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.ironsource.mediationsdk.AbstractSmash
    protected String getAdUnitString() {
        return "banner";
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashApi
    public IronSourceBannerLayout createBanner(Activity activity, EBannerSize size) {
        return null;
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashApi
    public void loadBanner(IronSourceBannerLayout banner) {
        if (banner != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":loadBanner()", 1);
            this.mIsReload = false;
            cancelRefresh();
            startLoadTimer();
            this.mBannerLayoutListener = banner;
            this.mBannerLayout = banner;
            this.mSize = banner.getSize();
            this.mBannerLayout.bindSmash(this);
            if (this.mAdapter != null) {
                preShow();
                this.mAdapter.loadBanner(banner, this.mBannerAdapterConfigs, this);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashApi
    public void destroyBanner(IronSourceBannerLayout banner) {
        cancelRefresh();
        if (this.mAdapter != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":destroyBanner()", 1);
            this.mAdapter.destroyBanner(banner, this.mBannerAdapterConfigs);
        } else {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":destroyBanner wasn't called. adapter is null", 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reloadBanner() {
        this.mIsReload = true;
        if (this.mAdapter != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":reloadBanner()", 1);
            this.mAdapter.reloadBanner(this.mBannerAdapterConfigs);
            this.mBannerManagerListener.onBannerReloadAd(this);
        }
    }

    void setBannerManagerListener(BannerManagerListener manager) {
        this.mBannerManagerListener = manager;
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerListener
    public void onBannerAdLoaded() {
        stopLoadTimer();
        scheduleRefresh(this.mBannerLoadRefreshInterval);
        if (this.mIsReload && this.mBannerLayoutListener != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":onBannerAdReloaded()", 1);
            this.mBannerLayoutListener.onBannerAdReloaded(this);
            return;
        }
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":onBannerAdLoaded()", 1);
        if (this.mMediationState == AbstractSmash.MEDIATION_STATE.LOAD_PENDING && this.mBannerLayoutListener != null) {
            this.mBannerLayoutListener.onBannerAdLoaded(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerListener
    public void onBannerAdLoadFailed(IronSourceError error) {
        if (this.mIsReload && this.mBannerLayoutListener != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":onBannerAdReloadFailed()", 1);
            cancelRefresh();
            this.mBannerLayoutListener.onBannerAdReloadFailed(this);
        } else {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getInstanceName() + ":onBannerAdLoadFailed()", 1);
            stopLoadTimer();
            if (this.mMediationState == AbstractSmash.MEDIATION_STATE.LOAD_PENDING && this.mBannerLayoutListener != null) {
                this.mBannerLayoutListener.onBannerAdLoadFailed(error, this);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerListener
    public void onBannerAdClicked() {
        if (this.mBannerLayoutListener != null) {
            this.mBannerLayoutListener.onBannerAdClicked(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerListener
    public void onBannerAdScreenPresented() {
        if (!this.mIsReload && this.mBannerLayoutListener != null) {
            this.mBannerLayoutListener.onBannerAdScreenPresented(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerListener
    public void onBannerAdScreenDismissed() {
        if (!this.mIsReload && this.mBannerLayoutListener != null) {
            this.mBannerLayoutListener.onBannerAdScreenDismissed(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerListener
    public void onBannerAdLeftApplication() {
        if (this.mBannerLayoutListener != null) {
            this.mBannerLayoutListener.onBannerAdLeftApplication(this);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitSuccess() {
        stopInitTimer();
        if (this.mMediationState == AbstractSmash.MEDIATION_STATE.INIT_PENDING) {
            setMediationState(AbstractSmash.MEDIATION_STATE.INITIATED);
            if (this.mBannerManagerListener != null) {
                this.mBannerManagerListener.onBannerInitSuccess(this);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerSmashListener
    public void onBannerInitFailed(IronSourceError error) {
        stopInitTimer();
        if (this.mMediationState == AbstractSmash.MEDIATION_STATE.INIT_PENDING) {
            setMediationState(AbstractSmash.MEDIATION_STATE.INIT_FAILED);
            if (this.mBannerManagerListener != null) {
                this.mBannerManagerListener.onBannerInitFailed(error, this);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void scheduleRefresh(long refreshInterval) {
        if (this.mHandler != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":refreshing banner in " + refreshInterval + " milliseconds ", 1);
            this.mReloadBannerRunnable = new ReloadBannerRunnable();
            this.mHandler.postDelayed(this.mReloadBannerRunnable, refreshInterval);
        }
    }

    private void cancelRefresh() {
        if (this.mHandler != null && this.mReloadBannerRunnable != null) {
            this.mHandler.removeCallbacks(this.mReloadBannerRunnable);
        }
    }

    private class ReloadBannerRunnable implements Runnable {
        private ReloadBannerRunnable() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BannerSmash.this.mBannerLayout != null) {
                if (!BannerSmash.this.mBannerLayout.isShown() || !BannerSmash.this.mIsInForeground) {
                    BannerSmash.this.scheduleRefresh(BannerSmash.this.mBannerLoadRefreshInterval);
                } else {
                    BannerSmash.this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, BannerSmash.this.TAG + ": refreshing banner for : " + BannerSmash.this.getInstanceName(), 1);
                    BannerSmash.this.reloadBanner();
                }
            }
        }
    }

    public EBannerSize getSize() {
        return this.mSize;
    }
}
