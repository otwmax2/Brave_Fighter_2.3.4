package com.ironsource.mediationsdk;

import android.app.Activity;
import android.os.Build;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.ironsource.eventsmodule.EventData;
import com.ironsource.mediationsdk.events.InterstitialEventsManager;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.BannerLayoutListener;
import com.ironsource.mediationsdk.sdk.BannerListener;
import com.ironsource.mediationsdk.sdk.BannerManagerListener;
import com.ironsource.mediationsdk.utils.CappingManager;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceBannerLayout extends FrameLayout implements BannerLayoutListener {
    private boolean isAdLoaded;
    private boolean isDestroyed;
    private boolean isImpressionReported;
    private Activity mActivity;
    private BannerListener mBannerListener;
    private BannerManagerListener mBannerManager;
    private View mBannerView;
    private BannerSmash mCurrentlyDisplayedSmash;
    private boolean mIsBannerDisplayed;
    private String mPlacementName;
    private EBannerSize mSize;
    private BannerSmash mSmash;

    public IronSourceBannerLayout(Activity activity, EBannerSize size, BannerManagerListener bannerManager) {
        super(activity);
        this.mCurrentlyDisplayedSmash = null;
        this.isImpressionReported = false;
        this.isAdLoaded = false;
        this.isDestroyed = false;
        this.mIsBannerDisplayed = false;
        this.mBannerManager = bannerManager;
        this.mActivity = activity;
        this.mSize = size == null ? EBannerSize.BANNER : size;
    }

    public void bindSmash(BannerSmash smash) {
        this.mSmash = smash;
        resetBannerImpression();
        getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.ironsource.mediationsdk.IronSourceBannerLayout.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (IronSourceBannerLayout.this.isShown()) {
                    if (Build.VERSION.SDK_INT < 16) {
                        IronSourceBannerLayout.this.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                    } else {
                        IronSourceBannerLayout.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    }
                    if (IronSourceBannerLayout.this.isAdLoaded) {
                        IronSourceBannerLayout.this.reportFirstBannerImpression();
                    }
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerLayoutListener
    public void onBannerAdReloaded(BannerSmash smash) {
        if (this.mBannerManager != null) {
            this.mBannerManager.onBannerAdReloaded(smash);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerLayoutListener
    public void onBannerAdReloadFailed(BannerSmash smash) {
        if (this.mBannerManager != null) {
            this.mBannerManager.onBannerAdReloadFailed(null, smash);
        }
    }

    protected void destroyBanner() {
        this.isDestroyed = true;
        if (this.mSmash != null) {
            this.mSmash.destroyBanner(this);
        }
        resetBannerImpression();
        this.mBannerManager = null;
        this.mBannerListener = null;
        this.mActivity = null;
        this.mSize = null;
        this.mPlacementName = null;
        this.mBannerView = null;
    }

    public boolean isDestroyed() {
        return this.isDestroyed;
    }

    public View getBannerView() {
        return this.mBannerView;
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public EBannerSize getSize() {
        return this.mSize;
    }

    public String getPlacementName() {
        return this.mPlacementName;
    }

    public void setPlacementName(String placementName) {
        this.mPlacementName = placementName;
    }

    public void setBannerListener(BannerListener listener) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "setBannerListener()", 1);
        this.mBannerListener = listener;
    }

    public void removeBannerListener() {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "removeBannerListener()", 1);
        this.mBannerListener = null;
    }

    public BannerListener getBannerListener() {
        return this.mBannerListener;
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerLayoutListener
    public void onBannerAdLoaded(BannerSmash smash) {
        if (this.mCurrentlyDisplayedSmash != null && this.mCurrentlyDisplayedSmash != smash) {
            this.mCurrentlyDisplayedSmash.destroyBanner(this);
        }
        this.mCurrentlyDisplayedSmash = smash;
        if (!shoudIgnoreThisCallback(smash) && !this.isAdLoaded) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onBannerAdLoaded() | internal | adapter: " + smash.getName(), 0);
            this.isAdLoaded = true;
            if (isShown()) {
                reportFirstBannerImpression();
            }
            if (this.mBannerManager != null) {
                this.mBannerManager.onBannerAdLoaded(smash);
            }
            if (this.mBannerListener != null && !this.mIsBannerDisplayed) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onBannerAdLoaded()", 1);
                this.mBannerListener.onBannerAdLoaded();
            }
            this.mIsBannerDisplayed = true;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerLayoutListener
    public void onBannerAdLoadFailed(IronSourceError error, BannerSmash smash) {
        if (this.mIsBannerDisplayed) {
            this.mBannerManager.onBannerAdReloadFailed(error, smash);
            return;
        }
        if (!shoudIgnoreThisCallback(smash)) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onBannerAdLoadFailed() | internal | adapter: " + smash.getName(), 0);
            this.mSmash = null;
            try {
                if (this.mBannerView != null) {
                    removeView(this.mBannerView);
                    this.mBannerView = null;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            smash.destroyBanner(this);
            JSONObject data = IronSourceUtils.getProviderAdditionalData(smash, false);
            try {
                int bannerSizeData = getSize().getValue();
                data.put("status", "false");
                data.put(IronSourceConstants.ERROR_CODE_KEY, error.getErrorCode());
                data.put("bannerAdSize", bannerSizeData);
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            EventData event = new EventData(IronSourceConstants.BANNER_AD_READY_RESULT, data);
            InterstitialEventsManager.getInstance().log(event);
            if (this.mBannerManager != null) {
                this.mBannerManager.onBannerAdLoadFailed(error, smash);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerLayoutListener
    public void onBannerAdClicked(BannerSmash smash) {
        if (!shoudIgnoreThisCallback(smash)) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onBannerAdClicked() | internal | adapter: " + smash.getName(), 0);
            JSONObject data = IronSourceUtils.getProviderAdditionalData(smash, false);
            try {
                int bannerSizeData = getSize().getValue();
                data.put("bannerAdSize", bannerSizeData);
            } catch (Exception e) {
                e.printStackTrace();
            }
            EventData event = new EventData(IronSourceConstants.BANNER_AD_CLICKED, data);
            InterstitialEventsManager.getInstance().log(event);
            if (this.mBannerListener != null) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onBannerAdClicked()", 1);
                this.mBannerListener.onBannerAdClicked();
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerLayoutListener
    public void onBannerAdScreenPresented(BannerSmash smash) {
        if (!shoudIgnoreThisCallback(smash)) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onBannerAdScreenPresented() | internal | adapter: " + smash.getName(), 0);
            if (this.mBannerListener != null) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onBannerAdScreenPresented()", 1);
                this.mBannerListener.onBannerAdScreenPresented();
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerLayoutListener
    public void onBannerAdScreenDismissed(BannerSmash smash) {
        if (!shoudIgnoreThisCallback(smash)) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onBannerAdScreenDismissed() | internal | adapter: " + smash.getName(), 0);
            if (this.mBannerListener != null) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onBannerAdScreenDismissed()", 1);
                this.mBannerListener.onBannerAdScreenDismissed();
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerLayoutListener
    public void onBannerAdLeftApplication(BannerSmash smash) {
        if (!shoudIgnoreThisCallback(smash)) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "onBannerAdLeftApplication() | internal | adapter: " + smash.getName(), 0);
            if (this.mBannerListener != null) {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.CALLBACK, "onBannerAdLeftApplication()", 1);
                this.mBannerListener.onBannerAdLeftApplication();
            }
        }
    }

    private boolean shoudIgnoreThisCallback(BannerSmash smash) {
        return this.mSmash == null || smash == null || !this.mSmash.getName().equals(smash.getName());
    }

    private synchronized void resetBannerImpression() {
        this.isImpressionReported = false;
        this.isAdLoaded = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void reportFirstBannerImpression() {
        if (!this.isImpressionReported) {
            this.isImpressionReported = true;
            CappingManager.incrementShowCounter(this.mActivity, this.mPlacementName);
            if (this.mBannerManager != null && this.mSmash != null) {
                this.mBannerManager.onFirstBannerImpression(this, this.mSmash);
            }
        }
    }

    public void addViewWithFrameLayoutParams(View adView, FrameLayout.LayoutParams layoutParams) {
        removeAllViews();
        this.mBannerView = adView;
        addView(adView, 0, layoutParams);
    }

    public void clearSmash() {
        if (this.mCurrentlyDisplayedSmash != null) {
            this.mCurrentlyDisplayedSmash.destroyBanner(this);
        }
    }
}
