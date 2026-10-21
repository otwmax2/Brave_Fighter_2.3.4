package com.ironsource.mediationsdk;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.View;
import com.ironsource.mediationsdk.AbstractSmash;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.logger.LogListener;
import com.ironsource.mediationsdk.logger.LoggingApi;
import com.ironsource.mediationsdk.sdk.BannerAdapterApi;
import com.ironsource.mediationsdk.sdk.BannerSmashListener;
import com.ironsource.mediationsdk.sdk.BaseApi;
import com.ironsource.mediationsdk.sdk.InterstitialAdapterApi;
import com.ironsource.mediationsdk.sdk.InterstitialSmashListener;
import com.ironsource.mediationsdk.sdk.RewardedInterstitialApi;
import com.ironsource.mediationsdk.sdk.RewardedInterstitialListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi;
import com.ironsource.mediationsdk.sdk.RewardedVideoSmashListener;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractAdapter implements BaseApi, InterstitialAdapterApi, RewardedVideoAdapterApi, BannerAdapterApi, LoggingApi, RewardedInterstitialApi {
    protected BannerSmashListener mActiveBannerSmash;
    protected InterstitialSmashListener mActiveInterstitialSmash;
    protected RewardedVideoSmashListener mActiveRewardedVideoSmash;
    protected CopyOnWriteArrayList<BannerSmashListener> mAllBannerSmashes;
    protected View mCurrentAdNetworkBanner;
    protected IronSourceBannerLayout mIronSourceBanner;
    private String mPluginFrameworkVersion;
    private String mPluginType;
    private String mProviderName;
    protected RewardedInterstitialListener mRewardedInterstitial;
    private IronSourceLoggerManager mLoggerManager = IronSourceLoggerManager.getLogger();
    protected CopyOnWriteArrayList<RewardedVideoSmashListener> mAllRewardedVideoSmashes = new CopyOnWriteArrayList<>();
    protected CopyOnWriteArrayList<InterstitialSmashListener> mAllInterstitialSmashes = new CopyOnWriteArrayList<>();
    protected ConcurrentHashMap<String, RewardedVideoSmashListener> mRewardedVideoPlacementToListenerMap = new ConcurrentHashMap<>();
    protected ConcurrentHashMap<String, InterstitialSmashListener> mInterstitialPlacementToListenerMap = new ConcurrentHashMap<>();
    protected ConcurrentHashMap<String, BannerSmashListener> mBannerPlacementToListenerMap = new ConcurrentHashMap<>();

    public abstract String getCoreSDKVersion();

    public abstract String getVersion();

    public AbstractAdapter(String providerName) {
        this.mProviderName = providerName;
    }

    public String getProviderName() {
        return this.mProviderName;
    }

    protected String getDynamicUserId() {
        return IronSourceObject.getInstance().getDynamicUserId();
    }

    void setPluginData(String pluginType, String pluginFrameworkVersion) {
        this.mPluginType = pluginType;
        this.mPluginFrameworkVersion = pluginFrameworkVersion;
    }

    public String getPluginType() {
        return this.mPluginType;
    }

    public String getPluginFrameworkVersion() {
        return this.mPluginFrameworkVersion;
    }

    protected void log(IronSourceLogger.IronSourceTag tag, String message, int logLevel) {
        this.mLoggerManager.onLog(tag, message, logLevel);
    }

    protected void removeBannerViews() {
        Handler handler = new Handler(Looper.getMainLooper());
        handler.post(new Runnable() { // from class: com.ironsource.mediationsdk.AbstractAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (AbstractAdapter.this.mIronSourceBanner != null && AbstractAdapter.this.mCurrentAdNetworkBanner != null && AbstractAdapter.this.mCurrentAdNetworkBanner.getParent() == AbstractAdapter.this.mIronSourceBanner) {
                        AbstractAdapter.this.mIronSourceBanner.removeView(AbstractAdapter.this.mCurrentAdNetworkBanner);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
    }

    @Override // com.ironsource.mediationsdk.logger.LoggingApi
    public void setLogListener(LogListener logListener) {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedInterstitialApi
    public void setRewardedInterstitialListener(RewardedInterstitialListener listener) {
        this.mRewardedInterstitial = listener;
    }

    protected boolean isAdaptersDebugEnabled() {
        return this.mLoggerManager.isDebugEnabled();
    }

    public void initBanners(Activity activity, String appKey, String userId, JSONObject config, BannerSmashListener listener) {
    }

    public void loadBanner(IronSourceBannerLayout banner, JSONObject config, BannerSmashListener listener) {
    }

    public void destroyBanner(IronSourceBannerLayout banner, JSONObject config) {
    }

    public void reloadBanner(JSONObject config) {
    }

    protected void addBannerListener(BannerSmashListener listener) {
    }

    protected void removeBannerListener(BannerSmashListener listener) {
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void addRewardedVideoListener(RewardedVideoSmashListener listener) {
        this.mAllRewardedVideoSmashes.add(listener);
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoAdapterApi
    public void removeRewardedVideoListener(RewardedVideoSmashListener listener) {
        this.mAllRewardedVideoSmashes.remove(listener);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void addInterstitialListener(InterstitialSmashListener listener) {
        this.mAllInterstitialSmashes.add(listener);
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialAdapterApi
    public void removeInterstitialListener(InterstitialSmashListener listener) {
        this.mAllInterstitialSmashes.remove(listener);
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void onResume(Activity activity) {
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void onPause(Activity activity) {
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void setAge(int age) {
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void setGender(String gender) {
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void setMediationSegment(String segment) {
    }

    protected boolean isLargeScreen(Activity activity) {
        DisplayMetrics displayMetrics = activity.getResources().getDisplayMetrics();
        float dpHeight = displayMetrics.heightPixels / displayMetrics.density;
        return dpHeight > 720.0f;
    }

    protected int getScreenWidthPixels(Activity activity) {
        return activity.getResources().getDisplayMetrics().widthPixels;
    }

    protected void setMediationState(AbstractSmash.MEDIATION_STATE state, String adUnit) {
    }

    protected void setConsent(boolean consent) {
    }
}
