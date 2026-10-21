package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.ironsource.environment.DeviceStatus;
import com.ironsource.eventsmodule.EventData;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.MediationInitializer;
import com.ironsource.mediationsdk.config.ConfigValidationResult;
import com.ironsource.mediationsdk.events.InterstitialEventsManager;
import com.ironsource.mediationsdk.events.RewardedVideoEventsManager;
import com.ironsource.mediationsdk.events.SuperLooper;
import com.ironsource.mediationsdk.logger.ConsoleLogger;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.logger.LogListener;
import com.ironsource.mediationsdk.logger.PublisherLogger;
import com.ironsource.mediationsdk.model.ApplicationEvents;
import com.ironsource.mediationsdk.model.BannerPlacement;
import com.ironsource.mediationsdk.model.InterstitialPlacement;
import com.ironsource.mediationsdk.model.OfferwallPlacement;
import com.ironsource.mediationsdk.model.Placement;
import com.ironsource.mediationsdk.model.ProviderSettings;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyInterstitialListener;
import com.ironsource.mediationsdk.sdk.ISDemandOnlyRewardedVideoListener;
import com.ironsource.mediationsdk.sdk.InterstitialListener;
import com.ironsource.mediationsdk.sdk.IronSourceInterface;
import com.ironsource.mediationsdk.sdk.ListenersWrapper;
import com.ironsource.mediationsdk.sdk.OfferwallListener;
import com.ironsource.mediationsdk.sdk.RewardedInterstitialListener;
import com.ironsource.mediationsdk.sdk.RewardedVideoListener;
import com.ironsource.mediationsdk.sdk.SegmentListener;
import com.ironsource.mediationsdk.server.HttpFunctions;
import com.ironsource.mediationsdk.server.ServerURL;
import com.ironsource.mediationsdk.utils.CappingManager;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.GeneralPropertiesWorker;
import com.ironsource.mediationsdk.utils.IronSourceAES;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.ServerResponseWrapper;
import com.ironsource.sdk.constants.Constants;
import com.tendcloud.tenddata.game.ao;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceObject implements IronSourceInterface, MediationInitializer.OnMediationInitializationListener {
    private static IronSourceObject sInstance;
    private Activity mActivity;
    private Set<IronSource.AD_UNIT> mAdUnitsToInitialize;
    private AtomicBoolean mAtomicIsFirstInit;
    private ArrayList<AbstractAdapter> mBannerAdaptersList;
    private BannerManager mBannerManager;
    private ArrayList<IronSource.AD_UNIT> mDemandOnlyAdUnits;
    private boolean mDidInitInterstitial;
    private AtomicBoolean mEventManagersInit;
    private int mInitCounter;
    private List<IronSource.AD_UNIT> mInitiatedAdUnits;
    private ArrayList<AbstractAdapter> mInterstitialAdaptersList;
    private InterstitialManager mInterstitialManager;
    private IronSourceSegment mIronSegment;
    private ListenersWrapper mListenersWrapper;
    private IronSourceLoggerManager mLoggerManager;
    private AbstractAdapter mOfferwallAdapter;
    private OfferwallManager mOfferwallManager;
    private PublisherLogger mPublisherLogger;
    private Set<IronSource.AD_UNIT> mRequestedAdUnits;
    private ArrayList<AbstractAdapter> mRewardedVideoAdaptersList;
    private RewardedVideoManager mRewardedVideoManager;
    private final String TAG = getClass().getName();
    private final Object mServerResponseLocker = new Object();
    private ServerResponseWrapper mCurrentServerResponse = null;
    private String mAppKey = null;
    private String mUserId = null;
    private Integer mUserAge = null;
    private String mUserGender = null;
    private String mSegment = null;
    private String mDynamicUserId = null;
    private Map<String, String> mRvServerParams = null;
    private String mMediationType = null;
    private boolean mInitSucceeded = false;
    private boolean mShouldSendGetInstanceEvent = true;
    private final String KEY_INIT_COUNTER = Constants.RequestParameters.SESSION_DEPTH;
    private Boolean mConsent = null;

    public interface IResponseListener {
        void onUnrecoverableError(String str);
    }

    public static synchronized IronSourceObject getInstance() {
        if (sInstance == null) {
            sInstance = new IronSourceObject();
        }
        return sInstance;
    }

    private IronSourceObject() {
        initializeManagers();
        this.mEventManagersInit = new AtomicBoolean();
        this.mDemandOnlyAdUnits = new ArrayList<>();
        this.mRewardedVideoAdaptersList = new ArrayList<>();
        this.mInterstitialAdaptersList = new ArrayList<>();
        this.mBannerAdaptersList = new ArrayList<>();
        this.mAdUnitsToInitialize = new HashSet();
        this.mRequestedAdUnits = new HashSet();
        this.mAtomicIsFirstInit = new AtomicBoolean(true);
        this.mInitCounter = 0;
        this.mDidInitInterstitial = false;
    }

    public synchronized void init(Activity activity, String appKey, boolean isDemandOnlyInit, IronSource.AD_UNIT... adUnits) {
        synchronized (this) {
            if (this.mAtomicIsFirstInit != null && this.mAtomicIsFirstInit.compareAndSet(true, false)) {
                if (adUnits == null || adUnits.length == 0) {
                    for (IronSource.AD_UNIT adUnit : IronSource.AD_UNIT.values()) {
                        this.mAdUnitsToInitialize.add(adUnit);
                    }
                    this.mDidInitInterstitial = true;
                } else {
                    for (IronSource.AD_UNIT adUnit2 : adUnits) {
                        this.mAdUnitsToInitialize.add(adUnit2);
                        this.mRequestedAdUnits.add(adUnit2);
                        if (adUnit2.equals(IronSource.AD_UNIT.INTERSTITIAL)) {
                            this.mDidInitInterstitial = true;
                        }
                    }
                }
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "init(appKey:" + appKey + ")", 1);
                if (activity == null) {
                    this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Init Fail - provided activity is null", 2);
                } else {
                    this.mActivity = activity;
                    prepareEventManagers(activity);
                    ConfigValidationResult validationResultAppKey = validateAppKey(appKey);
                    if (validationResultAppKey.isValid()) {
                        this.mAppKey = appKey;
                        if (this.mShouldSendGetInstanceEvent) {
                            JSONObject data = IronSourceUtils.getMediationAdditionalData(isDemandOnlyInit);
                            if (adUnits != null) {
                                try {
                                    for (IronSource.AD_UNIT adUnit3 : adUnits) {
                                        data.put(adUnit3.toString(), true);
                                    }
                                    int i = this.mInitCounter + 1;
                                    this.mInitCounter = i;
                                    data.put(Constants.RequestParameters.SESSION_DEPTH, i);
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                                EventData instanceEvent = new EventData(14, data);
                                RewardedVideoEventsManager.getInstance().log(instanceEvent);
                                this.mShouldSendGetInstanceEvent = false;
                            } else {
                                int i2 = this.mInitCounter + 1;
                                this.mInitCounter = i2;
                                data.put(Constants.RequestParameters.SESSION_DEPTH, i2);
                                EventData instanceEvent2 = new EventData(14, data);
                                RewardedVideoEventsManager.getInstance().log(instanceEvent2);
                                this.mShouldSendGetInstanceEvent = false;
                            }
                        }
                        if (this.mAdUnitsToInitialize.contains(IronSource.AD_UNIT.INTERSTITIAL)) {
                            MediationInitializer.getInstance().addMediationInitializationListener(this.mInterstitialManager);
                        }
                        MediationInitializer.getInstance().addMediationInitializationListener(this);
                        MediationInitializer.getInstance().init(activity, appKey, this.mUserId, adUnits);
                    } else {
                        if (this.mAdUnitsToInitialize.contains(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                            this.mListenersWrapper.onRewardedVideoAvailabilityChanged(false);
                        }
                        if (this.mAdUnitsToInitialize.contains(IronSource.AD_UNIT.OFFERWALL)) {
                            this.mListenersWrapper.onOfferwallAvailable(false, validationResultAppKey.getIronSourceError());
                        }
                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, validationResultAppKey.getIronSourceError().toString(), 1);
                    }
                }
            } else if (adUnits != null) {
                attachAdUnits(isDemandOnlyInit, adUnits);
            } else {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Multiple calls to init without ad units are not allowed", 3);
            }
        }
    }

    public synchronized void initISDemandOnly(Activity activity, String appKey, IronSource.AD_UNIT... adUnits) {
        ArrayList<IronSource.AD_UNIT> validAdUnitsList = new ArrayList<>();
        if (adUnits != null) {
            for (IronSource.AD_UNIT adUnit : adUnits) {
                if (adUnit.equals(IronSource.AD_UNIT.BANNER) || adUnit.equals(IronSource.AD_UNIT.OFFERWALL)) {
                    this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, adUnit + " ad unit cannot be initialized in demand only mode", 3);
                } else {
                    if (adUnit.equals(IronSource.AD_UNIT.INTERSTITIAL)) {
                        this.mDidInitInterstitial = true;
                    }
                    validAdUnitsList.add(adUnit);
                    if (!this.mDemandOnlyAdUnits.contains(adUnit)) {
                        this.mDemandOnlyAdUnits.add(adUnit);
                        if (adUnit.equals(IronSource.AD_UNIT.INTERSTITIAL)) {
                            this.mInterstitialManager.mIsInISDemandOnlyMode = true;
                        }
                    }
                }
            }
            if (validAdUnitsList.size() > 0) {
                IronSource.AD_UNIT[] validAdUnitsArr = new IronSource.AD_UNIT[validAdUnitsList.size()];
                init(activity, appKey, true, (IronSource.AD_UNIT[]) validAdUnitsList.toArray(validAdUnitsArr));
            }
        }
    }

    private synchronized void attachAdUnits(boolean isDemandOnlyInit, IronSource.AD_UNIT... adUnits) {
        int i = 0;
        synchronized (this) {
            for (IronSource.AD_UNIT ad_unit : adUnits) {
                if (ad_unit.equals(IronSource.AD_UNIT.INTERSTITIAL)) {
                    this.mDidInitInterstitial = true;
                }
            }
            if (MediationInitializer.getInstance().getCurrentInitStatus() == MediationInitializer.EInitStatus.INIT_FAILED) {
                try {
                    if (this.mListenersWrapper != null) {
                        int length = adUnits.length;
                        while (i < length) {
                            IronSource.AD_UNIT adUnit = adUnits[i];
                            if (!this.mAdUnitsToInitialize.contains(adUnit)) {
                                notifyPublisherAboutInitFailed(adUnit, true);
                            }
                            i++;
                        }
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }
            } else if (!this.mInitSucceeded) {
                JSONObject data = IronSourceUtils.getMediationAdditionalData(isDemandOnlyInit);
                boolean shouldSentInstanceEvent = false;
                int length2 = adUnits.length;
                while (i < length2) {
                    IronSource.AD_UNIT adUnit2 = adUnits[i];
                    if (!this.mAdUnitsToInitialize.contains(adUnit2)) {
                        shouldSentInstanceEvent = true;
                        this.mAdUnitsToInitialize.add(adUnit2);
                        this.mRequestedAdUnits.add(adUnit2);
                        try {
                            data.put(adUnit2.toString(), true);
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    } else {
                        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, adUnit2 + " ad unit has already been initialized", 3);
                        if (isDemandOnlyInit && this.mDemandOnlyAdUnits.contains(adUnit2)) {
                            this.mDemandOnlyAdUnits.remove(adUnit2);
                        }
                    }
                    i++;
                }
                if (shouldSentInstanceEvent) {
                    try {
                        int i2 = this.mInitCounter + 1;
                        this.mInitCounter = i2;
                        data.put(Constants.RequestParameters.SESSION_DEPTH, i2);
                    } catch (Exception e3) {
                        e3.printStackTrace();
                    }
                    EventData instanceEvent = new EventData(14, data);
                    RewardedVideoEventsManager.getInstance().log(instanceEvent);
                }
            } else if (this.mInitiatedAdUnits != null) {
                JSONObject data2 = IronSourceUtils.getMediationAdditionalData(isDemandOnlyInit);
                boolean shouldSentInstanceEvent2 = false;
                int length3 = adUnits.length;
                while (i < length3) {
                    IronSource.AD_UNIT adUnit3 = adUnits[i];
                    if (!this.mAdUnitsToInitialize.contains(adUnit3)) {
                        shouldSentInstanceEvent2 = true;
                        this.mAdUnitsToInitialize.add(adUnit3);
                        this.mRequestedAdUnits.add(adUnit3);
                        try {
                            data2.put(adUnit3.toString(), true);
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                        if (this.mInitiatedAdUnits != null && this.mInitiatedAdUnits.contains(adUnit3)) {
                            startAdUnit(adUnit3);
                        } else {
                            notifyPublisherAboutInitFailed(adUnit3, false);
                        }
                    } else {
                        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, adUnit3 + " ad unit has already been initialized", 3);
                        if (isDemandOnlyInit && this.mDemandOnlyAdUnits.contains(adUnit3)) {
                            this.mDemandOnlyAdUnits.remove(adUnit3);
                        }
                    }
                    i++;
                }
                if (shouldSentInstanceEvent2) {
                    try {
                        int i3 = this.mInitCounter + 1;
                        this.mInitCounter = i3;
                        data2.put(Constants.RequestParameters.SESSION_DEPTH, i3);
                    } catch (Exception e5) {
                        e5.printStackTrace();
                    }
                    EventData instanceEvent2 = new EventData(14, data2);
                    RewardedVideoEventsManager.getInstance().log(instanceEvent2);
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.MediationInitializer.OnMediationInitializationListener
    public void onInitSuccess(List<IronSource.AD_UNIT> adUnits, boolean revived) {
        try {
            this.mInitiatedAdUnits = adUnits;
            this.mInitSucceeded = true;
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "onInitSuccess()", 1);
            if (revived) {
                JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
                try {
                    data.put("revived", true);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                EventData revivedEvent = new EventData(IronSourceConstants.REVIVED_EVENT, data);
                RewardedVideoEventsManager.getInstance().log(revivedEvent);
            }
            InterstitialEventsManager.getInstance().triggerEventsSend();
            RewardedVideoEventsManager.getInstance().triggerEventsSend();
            for (IronSource.AD_UNIT adUnit : IronSource.AD_UNIT.values()) {
                if (this.mAdUnitsToInitialize.contains(adUnit)) {
                    if (adUnits.contains(adUnit)) {
                        startAdUnit(adUnit);
                    } else {
                        notifyPublisherAboutInitFailed(adUnit, false);
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void startAdUnit(IronSource.AD_UNIT adUnit) {
        switch (adUnit) {
            case REWARDED_VIDEO:
                startRewardedVideo();
                break;
            case INTERSTITIAL:
                startInterstitial();
                break;
            case OFFERWALL:
                this.mOfferwallManager.initOfferwall(this.mActivity, getIronSourceAppKey(), getIronSourceUserId());
                break;
            case BANNER:
                startBanner();
                break;
        }
    }

    private void startRewardedVideo() {
        ProviderSettings providerSettings;
        ProviderSettings providerSettings2;
        ProviderSettings providerSettings3;
        this.mRewardedVideoManager.mIsInISDemandOnlyMode = this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.REWARDED_VIDEO);
        if (this.mRewardedVideoManager.mIsInISDemandOnlyMode) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "Rewarded Video started in Demand Only mode", 0);
        }
        int rewardedVideoTimeout = this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoAdaptersSmartLoadTimeout();
        for (int i = 0; i < this.mCurrentServerResponse.getProviderOrder().getRewardedVideoProviderOrder().size(); i++) {
            String provider = this.mCurrentServerResponse.getProviderOrder().getRewardedVideoProviderOrder().get(i);
            if (!TextUtils.isEmpty(provider) && (providerSettings3 = this.mCurrentServerResponse.getProviderSettingsHolder().getProviderSettings(provider)) != null) {
                RewardedVideoSmash smash = new RewardedVideoSmash(providerSettings3, rewardedVideoTimeout);
                if (validateSmash(smash)) {
                    smash.setRewardedVideoManagerListener(this.mRewardedVideoManager);
                    smash.setProviderPriority(i + 1);
                    this.mRewardedVideoManager.addSmashToArray(smash);
                }
            }
        }
        if (this.mRewardedVideoManager.mSmashArray.size() > 0) {
            boolean ultraEventsEnabled = this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoEventsConfigurations().isUltraEventsEnabled();
            this.mRewardedVideoManager.setIsUltraEventsEnabled(ultraEventsEnabled);
            int smartLoadAmount = this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoAdaptersSmartLoadAmount();
            this.mRewardedVideoManager.setSmartLoadAmount(smartLoadAmount);
            String backfillProvider = this.mCurrentServerResponse.getRVBackFillProvider();
            if (!TextUtils.isEmpty(backfillProvider) && (providerSettings2 = this.mCurrentServerResponse.getProviderSettingsHolder().getProviderSettings(backfillProvider)) != null) {
                RewardedVideoSmash backfillSmash = new RewardedVideoSmash(providerSettings2, rewardedVideoTimeout);
                if (validateSmash(backfillSmash)) {
                    backfillSmash.setRewardedVideoManagerListener(this.mRewardedVideoManager);
                    this.mRewardedVideoManager.setBackfillSmash(backfillSmash);
                }
            }
            String premiumProvider = this.mCurrentServerResponse.getRVPremiumProvider();
            if (!TextUtils.isEmpty(premiumProvider) && (providerSettings = this.mCurrentServerResponse.getProviderSettingsHolder().getProviderSettings(premiumProvider)) != null) {
                RewardedVideoSmash premiumSmash = new RewardedVideoSmash(providerSettings, rewardedVideoTimeout);
                if (validateSmash(premiumSmash)) {
                    premiumSmash.setRewardedVideoManagerListener(this.mRewardedVideoManager);
                    this.mRewardedVideoManager.setPremiumSmash(premiumSmash);
                }
            }
            this.mRewardedVideoManager.initRewardedVideo(this.mActivity, getIronSourceAppKey(), getIronSourceUserId());
            return;
        }
        notifyPublisherAboutInitFailed(IronSource.AD_UNIT.REWARDED_VIDEO, false);
    }

    private void startInterstitial() {
        ProviderSettings providerSettings;
        this.mInterstitialManager.mIsInISDemandOnlyMode = this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.INTERSTITIAL);
        if (this.mInterstitialManager.mIsInISDemandOnlyMode) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "Interstitial started in Demand Only mode", 0);
        }
        int interstitialTimeout = this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations().getInterstitialAdaptersSmartLoadTimeout();
        for (int i = 0; i < this.mCurrentServerResponse.getProviderOrder().getInterstitialProviderOrder().size(); i++) {
            String provider = this.mCurrentServerResponse.getProviderOrder().getInterstitialProviderOrder().get(i);
            if (!TextUtils.isEmpty(provider) && (providerSettings = this.mCurrentServerResponse.getProviderSettingsHolder().getProviderSettings(provider)) != null) {
                InterstitialSmash smash = new InterstitialSmash(providerSettings, interstitialTimeout);
                if (validateSmash(smash)) {
                    smash.setInterstitialManagerListener(this.mInterstitialManager);
                    smash.setProviderPriority(i + 1);
                    this.mInterstitialManager.addSmashToArray(smash);
                }
            }
        }
        if (this.mInterstitialManager.mSmashArray.size() > 0) {
            int smartLoadAmount = this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations().getInterstitialAdaptersSmartLoadAmount();
            this.mInterstitialManager.setSmartLoadAmount(smartLoadAmount);
            this.mInterstitialManager.initInterstitial(this.mActivity, getIronSourceAppKey(), getIronSourceUserId());
            return;
        }
        notifyPublisherAboutInitFailed(IronSource.AD_UNIT.INTERSTITIAL, false);
    }

    private void startBanner() {
        ProviderSettings providerSettings;
        long bannerTimeout = this.mCurrentServerResponse.getConfigurations().getBannerConfigurations().getBannerAdaptersSmartLoadTimeout();
        int bannerInterval = this.mCurrentServerResponse.getConfigurations().getBannerConfigurations().getBannerRefreshInterval();
        for (int i = 0; i < this.mCurrentServerResponse.getProviderOrder().getBannerProviderOrder().size(); i++) {
            String provider = this.mCurrentServerResponse.getProviderOrder().getBannerProviderOrder().get(i);
            if (!TextUtils.isEmpty(provider) && (providerSettings = this.mCurrentServerResponse.getProviderSettingsHolder().getProviderSettings(provider)) != null) {
                BannerSmash smash = new BannerSmash(providerSettings, bannerTimeout, bannerInterval);
                smash.setBannerManagerListener(this.mBannerManager);
                smash.setProviderPriority(i + 1);
                this.mBannerManager.addSmashToArray(smash);
            }
        }
        if (this.mBannerManager.mSmashArray.size() > 0) {
            int smartLoadAmount = this.mCurrentServerResponse.getConfigurations().getBannerConfigurations().getBannerAdaptersSmartLoadAmount();
            this.mBannerManager.setSmartLoadAmount(smartLoadAmount);
            this.mBannerManager.initBanners(this.mActivity, getIronSourceAppKey(), getIronSourceUserId());
            return;
        }
        notifyPublisherAboutInitFailed(IronSource.AD_UNIT.BANNER, false);
    }

    private boolean validateSmash(AbstractSmash smash) {
        return smash.getMaxAdsPerIteration() >= 1 && smash.getMaxAdsPerSession() >= 1;
    }

    @Override // com.ironsource.mediationsdk.MediationInitializer.OnMediationInitializationListener
    public void onInitFailed(String reason) {
        try {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "onInitFailed(reason:" + reason + ")", 1);
            if (this.mListenersWrapper != null) {
                for (IronSource.AD_UNIT adUnit : this.mAdUnitsToInitialize) {
                    notifyPublisherAboutInitFailed(adUnit, true);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.ironsource.mediationsdk.MediationInitializer.OnMediationInitializationListener
    public void onStillInProgressAfter15Secs() {
    }

    private void notifyPublisherAboutInitFailed(IronSource.AD_UNIT adUnit, boolean isInitFailed) {
        switch (adUnit) {
            case REWARDED_VIDEO:
                if (isInitFailed || isRewardedVideoConfigurationsReady() || this.mRequestedAdUnits.contains(adUnit)) {
                    this.mListenersWrapper.onRewardedVideoAvailabilityChanged(false);
                }
                break;
            case OFFERWALL:
                if (isInitFailed || isOfferwallConfigurationsReady() || this.mRequestedAdUnits.contains(adUnit)) {
                    this.mListenersWrapper.onOfferwallAvailable(false);
                }
                break;
        }
    }

    private void prepareEventManagers(Activity activity) {
        if (this.mEventManagersInit != null && this.mEventManagersInit.compareAndSet(false, true)) {
            SuperLooper.getLooper().post(new GeneralPropertiesWorker(activity.getApplicationContext()));
            InterstitialEventsManager.getInstance().start(activity.getApplicationContext(), this.mIronSegment);
            RewardedVideoEventsManager.getInstance().start(activity.getApplicationContext(), this.mIronSegment);
        }
    }

    synchronized void addToRVAdaptersList(AbstractAdapter adapter) {
        if (this.mRewardedVideoAdaptersList != null && adapter != null && !this.mRewardedVideoAdaptersList.contains(adapter)) {
            this.mRewardedVideoAdaptersList.add(adapter);
        }
    }

    synchronized void addToISAdaptersList(AbstractAdapter adapter) {
        if (this.mInterstitialAdaptersList != null && adapter != null && !this.mInterstitialAdaptersList.contains(adapter)) {
            this.mInterstitialAdaptersList.add(adapter);
        }
    }

    synchronized void addToBannerAdaptersList(AbstractAdapter adapter) {
        if (this.mBannerAdaptersList != null && adapter != null && !this.mBannerAdaptersList.contains(adapter)) {
            this.mBannerAdaptersList.add(adapter);
        }
    }

    synchronized void addOWAdapter(AbstractAdapter adapter) {
        this.mOfferwallAdapter = adapter;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0027 A[Catch: Exception -> 0x0078, all -> 0x0096, TryCatch #1 {Exception -> 0x0078, blocks: (B:3:0x0001, B:5:0x0005, B:6:0x000b, B:8:0x0011, B:12:0x0023, B:14:0x0027, B:15:0x002d, B:17:0x0033, B:20:0x0044, B:22:0x0048, B:23:0x004e, B:25:0x0054, B:28:0x0065, B:30:0x0069, B:32:0x0075), top: B:40:0x0001, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0044 A[Catch: Exception -> 0x0078, all -> 0x0096, TryCatch #1 {Exception -> 0x0078, blocks: (B:3:0x0001, B:5:0x0005, B:6:0x000b, B:8:0x0011, B:12:0x0023, B:14:0x0027, B:15:0x002d, B:17:0x0033, B:20:0x0044, B:22:0x0048, B:23:0x004e, B:25:0x0054, B:28:0x0065, B:30:0x0069, B:32:0x0075), top: B:40:0x0001, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0048 A[Catch: Exception -> 0x0078, all -> 0x0096, TryCatch #1 {Exception -> 0x0078, blocks: (B:3:0x0001, B:5:0x0005, B:6:0x000b, B:8:0x0011, B:12:0x0023, B:14:0x0027, B:15:0x002d, B:17:0x0033, B:20:0x0044, B:22:0x0048, B:23:0x004e, B:25:0x0054, B:28:0x0065, B:30:0x0069, B:32:0x0075), top: B:40:0x0001, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0065 A[Catch: Exception -> 0x0078, all -> 0x0096, TryCatch #1 {Exception -> 0x0078, blocks: (B:3:0x0001, B:5:0x0005, B:6:0x000b, B:8:0x0011, B:12:0x0023, B:14:0x0027, B:15:0x002d, B:17:0x0033, B:20:0x0044, B:22:0x0048, B:23:0x004e, B:25:0x0054, B:28:0x0065, B:30:0x0069, B:32:0x0075), top: B:40:0x0001, outer: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    synchronized com.ironsource.mediationsdk.AbstractAdapter getExistingAdapter(java.lang.String r7) {
        /*
            r6 = this;
            monitor-enter(r6)
            java.util.ArrayList<com.ironsource.mediationsdk.AbstractAdapter> r2 = r6.mRewardedVideoAdaptersList     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r2 == 0) goto L23
            java.util.ArrayList<com.ironsource.mediationsdk.AbstractAdapter> r2 = r6.mRewardedVideoAdaptersList     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
        Lb:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r3 == 0) goto L23
            java.lang.Object r0 = r2.next()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            com.ironsource.mediationsdk.AbstractAdapter r0 = (com.ironsource.mediationsdk.AbstractAdapter) r0     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            java.lang.String r3 = r0.getProviderName()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            boolean r3 = r3.equals(r7)     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r3 == 0) goto Lb
        L21:
            monitor-exit(r6)
            return r0
        L23:
            java.util.ArrayList<com.ironsource.mediationsdk.AbstractAdapter> r2 = r6.mInterstitialAdaptersList     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r2 == 0) goto L44
            java.util.ArrayList<com.ironsource.mediationsdk.AbstractAdapter> r2 = r6.mInterstitialAdaptersList     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
        L2d:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r3 == 0) goto L44
            java.lang.Object r0 = r2.next()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            com.ironsource.mediationsdk.AbstractAdapter r0 = (com.ironsource.mediationsdk.AbstractAdapter) r0     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            java.lang.String r3 = r0.getProviderName()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            boolean r3 = r3.equals(r7)     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r3 == 0) goto L2d
            goto L21
        L44:
            java.util.ArrayList<com.ironsource.mediationsdk.AbstractAdapter> r2 = r6.mBannerAdaptersList     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r2 == 0) goto L65
            java.util.ArrayList<com.ironsource.mediationsdk.AbstractAdapter> r2 = r6.mBannerAdaptersList     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            java.util.Iterator r2 = r2.iterator()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
        L4e:
            boolean r3 = r2.hasNext()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r3 == 0) goto L65
            java.lang.Object r0 = r2.next()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            com.ironsource.mediationsdk.AbstractAdapter r0 = (com.ironsource.mediationsdk.AbstractAdapter) r0     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            java.lang.String r3 = r0.getProviderName()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            boolean r3 = r3.equals(r7)     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r3 == 0) goto L4e
            goto L21
        L65:
            com.ironsource.mediationsdk.AbstractAdapter r2 = r6.mOfferwallAdapter     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r2 == 0) goto L94
            com.ironsource.mediationsdk.AbstractAdapter r2 = r6.mOfferwallAdapter     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            java.lang.String r2 = r2.getProviderName()     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            boolean r2 = r2.equals(r7)     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            if (r2 == 0) goto L94
            com.ironsource.mediationsdk.AbstractAdapter r0 = r6.mOfferwallAdapter     // Catch: java.lang.Exception -> L78 java.lang.Throwable -> L96
            goto L21
        L78:
            r1 = move-exception
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r2 = r6.mLoggerManager     // Catch: java.lang.Throwable -> L96
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r3 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.INTERNAL     // Catch: java.lang.Throwable -> L96
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L96
            r4.<init>()     // Catch: java.lang.Throwable -> L96
            java.lang.String r5 = "getExistingAdapter exception: "
            java.lang.StringBuilder r4 = r4.append(r5)     // Catch: java.lang.Throwable -> L96
            java.lang.StringBuilder r4 = r4.append(r1)     // Catch: java.lang.Throwable -> L96
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> L96
            r5 = 1
            r2.log(r3, r4, r5)     // Catch: java.lang.Throwable -> L96
        L94:
            r0 = 0
            goto L21
        L96:
            r2 = move-exception
            monitor-exit(r6)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.IronSourceObject.getExistingAdapter(java.lang.String):com.ironsource.mediationsdk.AbstractAdapter");
    }

    private void initializeManagers() {
        this.mLoggerManager = IronSourceLoggerManager.getLogger(0);
        this.mPublisherLogger = new PublisherLogger(null, 1);
        this.mLoggerManager.addLogger(this.mPublisherLogger);
        this.mListenersWrapper = new ListenersWrapper();
        this.mRewardedVideoManager = new RewardedVideoManager();
        this.mRewardedVideoManager.setRewardedVideoListener(this.mListenersWrapper);
        this.mRewardedVideoManager.setISDemandOnlyRewardedVideoListener(this.mListenersWrapper);
        this.mInterstitialManager = new InterstitialManager();
        this.mInterstitialManager.setInterstitialListener(this.mListenersWrapper);
        this.mInterstitialManager.setRewardedInterstitialListener(this.mListenersWrapper);
        this.mInterstitialManager.setISDemandOnlyInterstitialListener(this.mListenersWrapper);
        this.mOfferwallManager = new OfferwallManager();
        this.mOfferwallManager.setInternalOfferwallListener(this.mListenersWrapper);
        this.mBannerManager = new BannerManager();
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void onResume(Activity activity) {
        try {
            this.mActivity = activity;
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "onResume()", 1);
            if (this.mRewardedVideoManager != null) {
                this.mRewardedVideoManager.onResume(activity);
            }
            if (this.mInterstitialManager != null) {
                this.mInterstitialManager.onResume(activity);
            }
            if (this.mBannerManager != null) {
                this.mBannerManager.onResume(activity);
            }
        } catch (Throwable e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "onResume()", e);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void onPause(Activity activity) {
        try {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "onPause()", 1);
            if (this.mRewardedVideoManager != null) {
                this.mRewardedVideoManager.onPause(activity);
            }
            if (this.mInterstitialManager != null) {
                this.mInterstitialManager.onPause(activity);
            }
            if (this.mBannerManager != null) {
                this.mBannerManager.onPause(activity);
            }
        } catch (Throwable e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "onPause()", e);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public synchronized void setAge(int age) {
        try {
            String logMessage = this.TAG + ":setAge(age:" + age + ")";
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
            ConfigValidationResult result = new ConfigValidationResult();
            validateAge(age, result);
            if (result.isValid()) {
                this.mUserAge = Integer.valueOf(age);
            } else {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, result.getIronSourceError().toString(), 2);
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, this.TAG + ":setAge(age:" + age + ")", e);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public synchronized void setGender(String gender) {
        try {
            String logMessage = this.TAG + ":setGender(gender:" + gender + ")";
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
            ConfigValidationResult result = new ConfigValidationResult();
            validateGender(gender, result);
            if (result.isValid()) {
                this.mUserGender = gender;
            } else {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, result.getIronSourceError().toString(), 2);
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, this.TAG + ":setGender(gender:" + gender + ")", e);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void setMediationSegment(String segment) {
        try {
            String logMessage = this.TAG + ":setMediationSegment(segment:" + segment + ")";
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
            ConfigValidationResult result = new ConfigValidationResult();
            validateSegment(segment, result);
            if (result.isValid()) {
                this.mSegment = segment;
            } else {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, result.getIronSourceError().toString(), 2);
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, this.TAG + ":setMediationSegment(segment:" + segment + ")", e);
        }
    }

    public void setSegment(IronSourceSegment segment) {
        if (MediationInitializer.getInstance().getCurrentInitStatus() == MediationInitializer.EInitStatus.INIT_IN_PROGRESS || MediationInitializer.getInstance().getCurrentInitStatus() == MediationInitializer.EInitStatus.INITIATED) {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Segments must be set prior to Init. Setting a segment after the init will be ignored", 0);
        } else {
            this.mIronSegment = segment;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public boolean setDynamicUserId(String dynamicUserId) {
        boolean z = true;
        try {
            String logMessage = this.TAG + ":setDynamicUserId(dynamicUserId:" + dynamicUserId + ")";
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
            ConfigValidationResult result = new ConfigValidationResult();
            validateDynamicUserId(dynamicUserId, result);
            if (result.isValid()) {
                this.mDynamicUserId = dynamicUserId;
            } else {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, result.getIronSourceError().toString(), 2);
                z = false;
            }
            return z;
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, this.TAG + ":setDynamicUserId(dynamicUserId:" + dynamicUserId + ")", e);
            return false;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public void setAdaptersDebug(boolean enabled) {
        IronSourceLoggerManager.getLogger().setAdaptersDebug(enabled);
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public void setMediationType(String mediationType) {
        try {
            String logMessage = this.TAG + ":setMediationType(mediationType:" + mediationType + ")";
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, logMessage, 1);
            if (validateLength(mediationType, 1, 64) && validateAlphanumeric(mediationType)) {
                this.mMediationType = mediationType;
            } else {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, " mediationType value is invalid - should be alphanumeric and 1-64 chars in length", 1);
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, this.TAG + ":setMediationType(mediationType:" + mediationType + ")", e);
        }
    }

    public synchronized Integer getAge() {
        return this.mUserAge;
    }

    public synchronized String getGender() {
        return this.mUserGender;
    }

    synchronized String getMediationSegment() {
        return this.mSegment;
    }

    synchronized String getDynamicUserId() {
        return this.mDynamicUserId;
    }

    synchronized Map<String, String> getRvServerParams() {
        return this.mRvServerParams;
    }

    public synchronized String getMediationType() {
        return this.mMediationType;
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoApi
    public void initRewardedVideo(Activity activity, String appKey, String userId) {
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialApi
    public void initInterstitial(Activity activity, String appKey, String userId) {
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    public void initOfferwall(Activity activity, String appKey, String userId) {
    }

    public void showRewardedVideo() {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "showRewardedVideo()", 1);
        try {
            if (this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead", 3);
            } else if (!isRewardedVideoConfigurationsReady()) {
                this.mListenersWrapper.onRewardedVideoAdShowFailed(ErrorBuilder.buildInitFailedError("showRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else {
                Placement defaultPlacement = this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations().getDefaultRewardedVideoPlacement();
                if (defaultPlacement != null) {
                    String placementName = defaultPlacement.getPlacementName();
                    showRewardedVideo(placementName);
                }
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "showRewardedVideo()", e);
            this.mListenersWrapper.onRewardedVideoAdShowFailed(ErrorBuilder.buildInitFailedError("showRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoApi
    public void showRewardedVideo(String placementName) {
        String logMessage = "showRewardedVideo(" + placementName + ")";
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
        try {
            if (this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Rewarded Video was initialized in demand only mode. Use showISDemandOnlyRewardedVideo instead", 3);
                return;
            }
            if (!isRewardedVideoConfigurationsReady()) {
                this.mListenersWrapper.onRewardedVideoAdShowFailed(ErrorBuilder.buildInitFailedError("showRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            Placement placement = getPlacementToShowWithEvent(placementName);
            if (placement != null) {
                JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
                try {
                    data.put("placement", placement.getPlacementName());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                EventData event = new EventData(2, data);
                RewardedVideoEventsManager.getInstance().log(event);
                this.mRewardedVideoManager.setCurrentPlacement(placement);
                this.mRewardedVideoManager.showRewardedVideo(placement.getPlacementName());
            }
        } catch (Exception e2) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, logMessage, e2);
            this.mListenersWrapper.onRewardedVideoAdShowFailed(ErrorBuilder.buildInitFailedError("showRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoApi
    public boolean isRewardedVideoAvailable() {
        boolean isAvailable = false;
        try {
            if (this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Rewarded Video was initialized in demand only mode. Use isISDemandOnlyRewardedVideoAvailable instead", 3);
                return false;
            }
            isAvailable = this.mRewardedVideoManager.isRewardedVideoAvailable();
            JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
            try {
                data.put("status", String.valueOf(isAvailable));
            } catch (JSONException e) {
                e.printStackTrace();
            }
            EventData event = new EventData(18, data);
            RewardedVideoEventsManager.getInstance().log(event);
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "isRewardedVideoAvailable():" + isAvailable, 1);
        } catch (Throwable e2) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "isRewardedVideoAvailable():" + isAvailable, 1);
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "isRewardedVideoAvailable()", e2);
            isAvailable = false;
        }
        return isAvailable;
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedVideoApi
    public void setRewardedVideoListener(RewardedVideoListener listener) {
        if (listener == null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setRewardedVideoListener(RVListener:null)", 1);
        } else {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setRewardedVideoListener(RVListener)", 1);
        }
        this.mListenersWrapper.setRewardedVideoListener(listener);
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public void setRewardedVideoServerParameters(Map<String, String> params) {
        if (params != null) {
            try {
                if (params.size() != 0) {
                    String logMessage = this.TAG + ":setRewardedVideoServerParameters(params:" + params.toString() + ")";
                    this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
                    this.mRvServerParams = new HashMap(params);
                }
            } catch (Exception e) {
                this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, this.TAG + ":setRewardedVideoServerParameters(params:" + params.toString() + ")", e);
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public void clearRewardedVideoServerParameters() {
        this.mRvServerParams = null;
    }

    public void showISDemandOnlyRewardedVideo(String instanceId) {
        String logMessage = "showISDemandOnlyRewardedVideo(" + instanceId + ")";
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
        try {
            if (!this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Rewarded Video was initialized in mediation mode. Use showRewardedVideo instead", 3);
            } else if (!isRewardedVideoConfigurationsReady()) {
                this.mListenersWrapper.onRewardedVideoAdShowFailed(instanceId, ErrorBuilder.buildInitFailedError("showISDemandOnlyRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
            } else {
                Placement defaultPlacement = this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations().getDefaultRewardedVideoPlacement();
                if (defaultPlacement != null) {
                    String placementName = defaultPlacement.getPlacementName();
                    showISDemandOnlyRewardedVideo(instanceId, placementName);
                }
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, logMessage, e);
            this.mListenersWrapper.onRewardedVideoAdShowFailed(instanceId, ErrorBuilder.buildInitFailedError("showISDemandOnlyRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
    }

    public void showISDemandOnlyRewardedVideo(String instanceId, String placementName) {
        String logMessage = "showISDemandOnlyRewardedVideo(" + instanceId + (placementName == null ? ")" : " , " + placementName + ")");
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
        try {
            if (!this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Rewarded Video was initialized in mediation mode. Use showRewardedVideo instead", 3);
                return;
            }
            if (!isRewardedVideoConfigurationsReady()) {
                this.mListenersWrapper.onRewardedVideoAdShowFailed(instanceId, ErrorBuilder.buildInitFailedError("showISDemandOnlyRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
                return;
            }
            Placement placement = getPlacementToShowWithEvent(placementName);
            if (placement != null) {
                JSONObject data = IronSourceUtils.getMediationAdditionalData(true);
                try {
                    data.put("placement", placement.getPlacementName());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                EventData event = new EventData(2, data);
                RewardedVideoEventsManager.getInstance().log(event);
                this.mRewardedVideoManager.setCurrentPlacement(placement);
                this.mRewardedVideoManager.showRewardedVideo(instanceId, placement.getPlacementName());
            }
        } catch (Exception e2) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, logMessage, e2);
            this.mListenersWrapper.onRewardedVideoAdShowFailed(instanceId, ErrorBuilder.buildInitFailedError("showISDemandOnlyRewardedVideo can't be called before the Rewarded Video ad unit initialization completed successfully", IronSourceConstants.REWARDED_VIDEO_AD_UNIT));
        }
    }

    public boolean isISDemandOnlyRewardedVideoAvailable(String instanceId) {
        boolean isAvailable = false;
        try {
            if (!this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.REWARDED_VIDEO)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Rewarded Video was initialized in mediation mode. Use isRewardedVideoAvailable instead", 3);
                return false;
            }
            isAvailable = this.mRewardedVideoManager.isRewardedVideoAvailable(instanceId);
            JSONObject data = IronSourceUtils.getMediationAdditionalData(true);
            try {
                data.put("status", String.valueOf(isAvailable));
            } catch (JSONException e) {
                e.printStackTrace();
            }
            EventData event = new EventData(18, data);
            RewardedVideoEventsManager.getInstance().log(event);
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "isISDemandOnlyRewardedVideoAvailable():" + isAvailable, 1);
        } catch (Throwable e2) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "isISDemandOnlyRewardedVideoAvailable():" + isAvailable, 1);
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "isISDemandOnlyRewardedVideoAvailable()", e2);
            isAvailable = false;
        }
        return isAvailable;
    }

    void setISDemandOnlyRewardedVideoListener(ISDemandOnlyRewardedVideoListener listener) {
        if (listener == null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setISDemandOnlyRewardedVideoListener(ISDemandOnlyRewardedVideoListener:null)", 1);
        } else {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setISDemandOnlyRewardedVideoListener(ISDemandOnlyRewardedVideoListener)", 1);
        }
        this.mListenersWrapper.setISDemandOnlyRewardedVideoListener(listener);
    }

    private boolean isRewardedVideoConfigurationsReady() {
        return (this.mCurrentServerResponse == null || this.mCurrentServerResponse.getConfigurations() == null || this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations() == null) ? false : true;
    }

    private Placement getPlacementToShowWithEvent(String placementName) {
        Placement placement = this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoPlacement(placementName);
        if (placement == null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 3);
            placement = this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations().getDefaultRewardedVideoPlacement();
            if (placement == null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found, please make sure you are using the right placements.", 3);
                return null;
            }
        }
        CappingManager.ECappingStatus cappingStatus = CappingManager.isPlacementCapped(this.mActivity, placement);
        String cappedMessage = getCappingMessage(placement.getPlacementName(), cappingStatus);
        if (TextUtils.isEmpty(cappedMessage)) {
            return placement;
        }
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, cappedMessage, 1);
        this.mListenersWrapper.onRewardedVideoAdShowFailed(ErrorBuilder.buildCappedPerPlacementError(IronSourceConstants.REWARDED_VIDEO_AD_UNIT, cappedMessage));
        return null;
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialApi
    public void loadInterstitial() {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "loadInterstitial()", 1);
        try {
            if (this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.INTERSTITIAL)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in demand only mode. Use loadISDemandOnlyInterstitial instead", 3);
            } else if (!this.mDidInitInterstitial) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "init() must be called before loadInterstitial()", 3);
            } else {
                this.mInterstitialManager.loadInterstitial();
            }
        } catch (Throwable e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "loadInterstitial()", e);
        }
    }

    public void showInterstitial() {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "showInterstitial()", 1);
        try {
            if (this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.INTERSTITIAL)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead", 3);
            } else if (!isInterstitialConfigurationsReady()) {
                this.mListenersWrapper.onInterstitialAdShowFailed(ErrorBuilder.buildInitFailedError("showInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
            } else {
                InterstitialPlacement defaultPlacement = this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations().getDefaultInterstitialPlacement();
                if (defaultPlacement != null) {
                    String placementName = defaultPlacement.getPlacementName();
                    showInterstitial(placementName);
                }
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "showInterstitial()", e);
            this.mListenersWrapper.onInterstitialAdShowFailed(ErrorBuilder.buildInitFailedError("showInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialApi
    public void showInterstitial(String placementName) {
        String logMessage = "showInterstitial(" + placementName + ")";
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
        try {
            if (this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.INTERSTITIAL)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in demand only mode. Use showISDemandOnlyInterstitial instead", 3);
                return;
            }
            if (!isInterstitialConfigurationsReady()) {
                this.mListenersWrapper.onInterstitialAdShowFailed(ErrorBuilder.buildInitFailedError("showInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
                return;
            }
            InterstitialPlacement placement = getInterstitialPlacementToShowWithEvent(placementName);
            if (placement != null) {
                JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
                try {
                    data.put("placement", placement.getPlacementName());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                EventData event = new EventData(23, data);
                InterstitialEventsManager.getInstance().log(event);
                this.mInterstitialManager.setCurrentPlacement(placement);
                this.mInterstitialManager.showInterstitial(placement.getPlacementName());
            }
        } catch (Exception e2) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, logMessage, e2);
            this.mListenersWrapper.onInterstitialAdShowFailed(ErrorBuilder.buildInitFailedError("showInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialApi
    public boolean isInterstitialReady() {
        boolean isAvailable = false;
        try {
            if (this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.INTERSTITIAL)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in demand only mode. Use isISDemandOnlyInterstitialReady instead", 3);
                return false;
            }
            isAvailable = this.mInterstitialManager.isInterstitialReady();
            JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
            try {
                data.put("status", String.valueOf(isAvailable));
            } catch (JSONException e) {
                e.printStackTrace();
            }
            EventData event = new EventData(30, data);
            InterstitialEventsManager.getInstance().log(event);
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "isInterstitialReady():" + isAvailable, 1);
        } catch (Throwable e2) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "isInterstitialReady():" + isAvailable, 1);
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "isInterstitialReady()", e2);
            isAvailable = false;
        }
        return isAvailable;
    }

    @Override // com.ironsource.mediationsdk.sdk.InterstitialApi
    public void setInterstitialListener(InterstitialListener listener) {
        if (listener == null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setInterstitialListener(ISListener:null)", 1);
        } else {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setInterstitialListener(ISListener)", 1);
        }
        this.mListenersWrapper.setInterstitialListener(listener);
    }

    public void loadISDemandOnlyInterstitial(String instanceId) {
        String logMessage = "loadISDemandOnlyInterstitial(" + instanceId + ")";
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
        try {
            if (!this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.INTERSTITIAL)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in mediation mode. Use loadInterstitial instead", 3);
            } else if (!this.mDidInitInterstitial) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "init() must be called before loadInterstitial()", 3);
            } else {
                this.mInterstitialManager.loadInterstitial(instanceId);
            }
        } catch (Throwable e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, logMessage, e);
        }
    }

    public void showISDemandOnlyInterstitial(String instanceId) {
        String logMessage = "showISDemandOnlyInterstitial(" + instanceId + ")";
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
        try {
            if (!this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.INTERSTITIAL)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in mediation mode. Use showInterstitial instead", 3);
            } else if (!isInterstitialConfigurationsReady()) {
                this.mListenersWrapper.onInterstitialAdShowFailed(instanceId, ErrorBuilder.buildInitFailedError("showISDemandOnlyInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
            } else {
                InterstitialPlacement defaultPlacement = this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations().getDefaultInterstitialPlacement();
                if (defaultPlacement != null) {
                    String placementName = defaultPlacement.getPlacementName();
                    showISDemandOnlyInterstitial(instanceId, placementName);
                }
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, logMessage, e);
            this.mListenersWrapper.onInterstitialAdShowFailed(instanceId, ErrorBuilder.buildInitFailedError("showISDemandOnlyInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
        }
    }

    public void showISDemandOnlyInterstitial(String instanceId, String placementName) {
        String logMessage = "showISDemandOnlyInterstitial(" + instanceId + (placementName == null ? ")" : " , " + placementName + ")");
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
        try {
            if (!this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.INTERSTITIAL)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in mediation mode. Use showInterstitial instead", 3);
                return;
            }
            if (!isInterstitialConfigurationsReady()) {
                this.mListenersWrapper.onInterstitialAdShowFailed(instanceId, ErrorBuilder.buildInitFailedError("showISDemandOnlyInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
                return;
            }
            InterstitialPlacement placement = getInterstitialPlacementToShowWithEvent(placementName);
            if (placement != null) {
                JSONObject data = IronSourceUtils.getMediationAdditionalData(true);
                try {
                    data.put("placement", placement.getPlacementName());
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                EventData event = new EventData(23, data);
                InterstitialEventsManager.getInstance().log(event);
                this.mInterstitialManager.setCurrentPlacement(placement);
                this.mInterstitialManager.showInterstitial(instanceId, placement.getPlacementName());
            }
        } catch (Exception e2) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, logMessage, e2);
            this.mListenersWrapper.onInterstitialAdShowFailed(instanceId, ErrorBuilder.buildInitFailedError("showISDemandOnlyInterstitial can't be called before the Interstitial ad unit initialization completed successfully", "Interstitial"));
        }
    }

    public boolean isISDemandOnlyInterstitialReady(String instanceId) {
        boolean isAvailable = false;
        try {
            if (!this.mDemandOnlyAdUnits.contains(IronSource.AD_UNIT.INTERSTITIAL)) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Interstitial was initialized in mediation mode. Use isInterstitialReady instead", 3);
                return false;
            }
            isAvailable = this.mInterstitialManager.isInterstitialReady(instanceId);
            JSONObject data = IronSourceUtils.getMediationAdditionalData(true);
            try {
                data.put("status", String.valueOf(isAvailable));
            } catch (JSONException e) {
                e.printStackTrace();
            }
            EventData event = new EventData(30, data);
            InterstitialEventsManager.getInstance().log(event);
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "isISDemandOnlyInterstitialReady(instanceId: " + instanceId + "):" + isAvailable, 1);
        } catch (Throwable e2) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "isISDemandOnlyInterstitialReady(instanceId: " + instanceId + "):" + isAvailable, 1);
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "isISDemandOnlyInterstitialReady(instanceId: " + instanceId + ")", e2);
            isAvailable = false;
        }
        return isAvailable;
    }

    public void setISDemandOnlyInterstitialListener(ISDemandOnlyInterstitialListener listener) {
        if (listener == null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setISDemandOnlyInterstitialListener(ISDemandOnlyInterstitialListener:null)", 1);
        } else {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setISDemandOnlyInterstitialListener(ISDemandOnlyInterstitialListener)", 1);
        }
        this.mListenersWrapper.setISDemandOnlyInterstitialListener(listener);
    }

    private boolean isInterstitialConfigurationsReady() {
        return (this.mCurrentServerResponse == null || this.mCurrentServerResponse.getConfigurations() == null || this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations() == null) ? false : true;
    }

    private InterstitialPlacement getInterstitialPlacementToShowWithEvent(String placementName) {
        InterstitialPlacement placement = this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations().getInterstitialPlacement(placementName);
        if (placement == null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 3);
            placement = this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations().getDefaultInterstitialPlacement();
            if (placement == null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found, please make sure you are using the right placements.", 3);
                return null;
            }
        }
        CappingManager.ECappingStatus cappingStatus = getInterstitialCappingStatus(placement.getPlacementName());
        String cappedMessage = getCappingMessage(placement.getPlacementName(), cappingStatus);
        if (TextUtils.isEmpty(cappedMessage)) {
            return placement;
        }
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, cappedMessage, 1);
        this.mListenersWrapper.onInterstitialAdShowFailed(ErrorBuilder.buildCappedPerPlacementError("Interstitial", cappedMessage));
        return null;
    }

    private boolean isOfferwallConfigurationsReady() {
        return (this.mCurrentServerResponse == null || this.mCurrentServerResponse.getConfigurations() == null || this.mCurrentServerResponse.getConfigurations().getOfferwallConfigurations() == null) ? false : true;
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    public void showOfferwall() {
        try {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "showOfferwall()", 1);
            if (!isOfferwallConfigurationsReady()) {
                this.mListenersWrapper.onOfferwallShowFailed(ErrorBuilder.buildInitFailedError("showOfferwall can't be called before the Offerwall ad unit initialization completed successfully", IronSourceConstants.OFFERWALL_AD_UNIT));
            } else {
                OfferwallPlacement defaultPlacement = this.mCurrentServerResponse.getConfigurations().getOfferwallConfigurations().getDefaultOfferwallPlacement();
                if (defaultPlacement != null) {
                    String placementName = defaultPlacement.getPlacementName();
                    showOfferwall(placementName);
                }
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "showOfferwall()", e);
            this.mListenersWrapper.onOfferwallShowFailed(ErrorBuilder.buildInitFailedError("showOfferwall can't be called before the Offerwall ad unit initialization completed successfully", IronSourceConstants.OFFERWALL_AD_UNIT));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0080 A[Catch: Exception -> 0x006a, PHI: r4
      0x0080: PHI (r4v1 'placement' com.ironsource.mediationsdk.model.OfferwallPlacement) = 
      (r4v0 'placement' com.ironsource.mediationsdk.model.OfferwallPlacement)
      (r4v2 'placement' com.ironsource.mediationsdk.model.OfferwallPlacement)
     binds: [B:8:0x0043, B:10:0x005d] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #0 {Exception -> 0x006a, blocks: (B:3:0x0021, B:5:0x0027, B:7:0x0035, B:9:0x0045, B:11:0x005f, B:15:0x0080), top: B:18:0x0021 }] */
    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void showOfferwall(java.lang.String r9) {
        /*
            r8 = this;
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            java.lang.String r6 = "showOfferwall("
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r9)
            java.lang.String r6 = ")"
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r1 = r5.toString()
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r5 = r8.mLoggerManager
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r6 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            r7 = 1
            r5.log(r6, r1, r7)
            boolean r5 = r8.isOfferwallConfigurationsReady()     // Catch: java.lang.Exception -> L6a
            if (r5 != 0) goto L35
            com.ironsource.mediationsdk.sdk.ListenersWrapper r5 = r8.mListenersWrapper     // Catch: java.lang.Exception -> L6a
            java.lang.String r6 = "showOfferwall can't be called before the Offerwall ad unit initialization completed successfully"
            java.lang.String r7 = "Offerwall"
            com.ironsource.mediationsdk.logger.IronSourceError r6 = com.ironsource.mediationsdk.utils.ErrorBuilder.buildInitFailedError(r6, r7)     // Catch: java.lang.Exception -> L6a
            r5.onOfferwallShowFailed(r6)     // Catch: java.lang.Exception -> L6a
        L34:
            return
        L35:
            com.ironsource.mediationsdk.utils.ServerResponseWrapper r5 = r8.mCurrentServerResponse     // Catch: java.lang.Exception -> L6a
            com.ironsource.mediationsdk.model.Configurations r5 = r5.getConfigurations()     // Catch: java.lang.Exception -> L6a
            com.ironsource.mediationsdk.model.OfferwallConfigurations r5 = r5.getOfferwallConfigurations()     // Catch: java.lang.Exception -> L6a
            com.ironsource.mediationsdk.model.OfferwallPlacement r4 = r5.getOfferwallPlacement(r9)     // Catch: java.lang.Exception -> L6a
            if (r4 != 0) goto L80
            java.lang.String r3 = "Placement is not valid, please make sure you are using the right placements, using the default placement."
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r5 = r8.mLoggerManager     // Catch: java.lang.Exception -> L6a
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r6 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API     // Catch: java.lang.Exception -> L6a
            r7 = 3
            r5.log(r6, r3, r7)     // Catch: java.lang.Exception -> L6a
            com.ironsource.mediationsdk.utils.ServerResponseWrapper r5 = r8.mCurrentServerResponse     // Catch: java.lang.Exception -> L6a
            com.ironsource.mediationsdk.model.Configurations r5 = r5.getConfigurations()     // Catch: java.lang.Exception -> L6a
            com.ironsource.mediationsdk.model.OfferwallConfigurations r5 = r5.getOfferwallConfigurations()     // Catch: java.lang.Exception -> L6a
            com.ironsource.mediationsdk.model.OfferwallPlacement r4 = r5.getDefaultOfferwallPlacement()     // Catch: java.lang.Exception -> L6a
            if (r4 != 0) goto L80
            java.lang.String r2 = "Default placement was not found, please make sure you are using the right placements."
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r5 = r8.mLoggerManager     // Catch: java.lang.Exception -> L6a
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r6 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API     // Catch: java.lang.Exception -> L6a
            r7 = 3
            r5.log(r6, r2, r7)     // Catch: java.lang.Exception -> L6a
            goto L34
        L6a:
            r0 = move-exception
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r5 = r8.mLoggerManager
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r6 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.API
            r5.logException(r6, r1, r0)
            com.ironsource.mediationsdk.sdk.ListenersWrapper r5 = r8.mListenersWrapper
            java.lang.String r6 = "showOfferwall can't be called before the Offerwall ad unit initialization completed successfully"
            java.lang.String r7 = "Offerwall"
            com.ironsource.mediationsdk.logger.IronSourceError r6 = com.ironsource.mediationsdk.utils.ErrorBuilder.buildInitFailedError(r6, r7)
            r5.onOfferwallShowFailed(r6)
            goto L34
        L80:
            com.ironsource.mediationsdk.OfferwallManager r5 = r8.mOfferwallManager     // Catch: java.lang.Exception -> L6a
            java.lang.String r6 = r4.getPlacementName()     // Catch: java.lang.Exception -> L6a
            r5.showOfferwall(r6)     // Catch: java.lang.Exception -> L6a
            goto L34
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.IronSourceObject.showOfferwall(java.lang.String):void");
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    public boolean isOfferwallAvailable() {
        try {
            if (this.mOfferwallManager == null) {
                return false;
            }
            boolean result = this.mOfferwallManager.isOfferwallAvailable();
            return result;
        } catch (Exception e) {
            return false;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    public void getOfferwallCredits() {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "getOfferwallCredits()", 1);
        try {
            this.mOfferwallManager.getOfferwallCredits();
        } catch (Throwable e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "getOfferwallCredits()", e);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    public void setOfferwallListener(OfferwallListener offerwallListener) {
        if (offerwallListener == null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setOfferwallListener(OWListener:null)", 1);
        } else {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setOfferwallListener(OWListener)", 1);
        }
        this.mListenersWrapper.setOfferwallListener(offerwallListener);
    }

    @Override // com.ironsource.mediationsdk.logger.LoggingApi
    public void setLogListener(LogListener logListener) {
        if (logListener == null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setLogListener(LogListener:null)", 1);
        } else {
            this.mPublisherLogger.setLogListener(logListener);
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "setLogListener(LogListener:" + logListener.getClass().getSimpleName() + ")", 1);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.RewardedInterstitialApi
    public void setRewardedInterstitialListener(RewardedInterstitialListener listener) {
        this.mListenersWrapper.setRewardedInterstitialListener(listener);
    }

    private boolean isBannerConfigurationsReady() {
        return (this.mCurrentServerResponse == null || this.mCurrentServerResponse.getConfigurations() == null || this.mCurrentServerResponse.getConfigurations().getBannerConfigurations() == null) ? false : true;
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerApi
    public IronSourceBannerLayout createBanner(Activity activity, EBannerSize size) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "createBanner()", 1);
        if (activity != null) {
            return this.mBannerManager.createBanner(activity, size);
        }
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "createBanner() : Activity cannot be null", 3);
        return null;
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerApi
    public void loadBanner(IronSourceBannerLayout banner, String placementName) {
        String logMessage = "loadBanner(" + placementName + ")";
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, logMessage, 1);
        try {
            if (banner == null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "loadBanner can't be called with a null parameter", 1);
            } else {
                this.mBannerManager.loadBanner(banner, placementName);
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, logMessage, e);
        }
    }

    public void loadBanner(IronSourceBannerLayout banner) {
        try {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "loadBanner()", 1);
            if (banner == null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "loadBanner can't be called with a null parameter", 1);
            } else {
                this.mBannerManager.loadBanner(banner, null);
            }
        } catch (Exception e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "loadBanner()", e);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BannerApi
    public void destroyBanner(IronSourceBannerLayout banner) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "destroyBanner()", 1);
        try {
            this.mBannerManager.destroyBanner(banner);
        } catch (Throwable e) {
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, "destroyBanner()", e);
        }
    }

    ServerResponseWrapper getServerResponse(Context context, String userId, IResponseListener listener) {
        ServerResponseWrapper response;
        synchronized (this.mServerResponseLocker) {
            if (this.mCurrentServerResponse != null) {
                response = new ServerResponseWrapper(this.mCurrentServerResponse);
            } else {
                response = connectAndGetServerResponse(context, userId, listener);
                if (response == null || !response.isValidResponse()) {
                    response = getCachedResponse(context, userId);
                }
                if (response != null) {
                    this.mCurrentServerResponse = response;
                    IronSourceUtils.saveLastResponse(context, response.toString());
                    initializeSettingsFromServerResponse(this.mCurrentServerResponse, context);
                }
                InterstitialEventsManager.getInstance().setHasServerResponse(true);
                RewardedVideoEventsManager.getInstance().setHasServerResponse(true);
            }
        }
        return response;
    }

    private ServerResponseWrapper getCachedResponse(Context context, String userId) {
        JSONObject cachedJsonObject;
        String cachedResponseString = IronSourceUtils.getLastResponse(context);
        try {
            cachedJsonObject = new JSONObject(cachedResponseString);
        } catch (JSONException e) {
            cachedJsonObject = new JSONObject();
        }
        String cachedAppKey = cachedJsonObject.optString(ServerResponseWrapper.APP_KEY_FIELD);
        String cachedUserId = cachedJsonObject.optString(ServerResponseWrapper.USER_ID_FIELD);
        String cachedSettings = cachedJsonObject.optString(ServerResponseWrapper.RESPONSE_FIELD);
        if (TextUtils.isEmpty(cachedAppKey) || TextUtils.isEmpty(cachedUserId) || TextUtils.isEmpty(cachedSettings) || getIronSourceAppKey() == null || !cachedAppKey.equals(getIronSourceAppKey()) || !cachedUserId.equals(userId)) {
            return null;
        }
        ServerResponseWrapper response = new ServerResponseWrapper(context, cachedAppKey, cachedUserId, cachedSettings);
        IronSourceError sse = ErrorBuilder.buildUsingCachedConfigurationError(cachedAppKey, cachedUserId);
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, sse.toString(), 1);
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, sse.toString() + ": " + response.toString(), 0);
        return response;
    }

    private ServerResponseWrapper connectAndGetServerResponse(Context context, String userId, IResponseListener listener) {
        if (!IronSourceUtils.isNetworkConnected(context)) {
            return null;
        }
        ServerResponseWrapper response = null;
        try {
            String gaid = getAdvertiserId(context);
            if (TextUtils.isEmpty(gaid)) {
                gaid = DeviceStatus.getOrGenerateOnceUniqueIdentifier(context);
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "using custom identifier", 1);
            }
            Vector<Pair<String, String>> additionParams = null;
            if (this.mIronSegment != null) {
                additionParams = this.mIronSegment.getSegmentData();
            }
            String mediationType = getMediationType();
            String serverResponseString = HttpFunctions.getStringFromURL(ServerURL.getCPVProvidersURL(context, getIronSourceAppKey(), userId, gaid, mediationType, additionParams), listener);
            if (serverResponseString == null) {
                return null;
            }
            if (IronSourceUtils.getSerr() == 1) {
                JSONObject encryptedResponseJson = new JSONObject(serverResponseString);
                String encryptedResponse = encryptedResponseJson.optString(ServerResponseWrapper.RESPONSE_FIELD, null);
                if (TextUtils.isEmpty(encryptedResponse)) {
                    return null;
                }
                serverResponseString = IronSourceAES.decode(IronSourceUtils.KEY, encryptedResponse);
            }
            ServerResponseWrapper response2 = new ServerResponseWrapper(context, getIronSourceAppKey(), userId, serverResponseString);
            try {
                if (response2.isValidResponse()) {
                    return response2;
                }
                return null;
            } catch (Exception e) {
                e = e;
                response = response2;
            }
        } catch (Exception e2) {
            e = e2;
        }
        e.printStackTrace();
        return response;
    }

    private void initializeSettingsFromServerResponse(ServerResponseWrapper response, Context context) {
        initializeLoggerManager(response);
        initializeEventsSettings(response, context);
    }

    private void initializeEventsSettings(ServerResponseWrapper response, Context context) {
        boolean isRVEventsEnabled = false;
        if (isRewardedVideoConfigurationsReady()) {
            isRVEventsEnabled = response.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoEventsConfigurations().isEventsEnabled();
        }
        boolean isISEventsEnabled = false;
        if (isInterstitialConfigurationsReady()) {
            isISEventsEnabled = response.getConfigurations().getInterstitialConfigurations().getInterstitialEventsConfigurations().isEventsEnabled();
        }
        boolean isBNEventsEnabled = false;
        if (isBannerConfigurationsReady()) {
            isBNEventsEnabled = response.getConfigurations().getBannerConfigurations().getBannerEventsConfigurations().isEventsEnabled();
        }
        if (isRVEventsEnabled) {
            RewardedVideoEventsManager.getInstance().setFormatterType(response.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoEventsConfigurations().getEventsType(), context);
            RewardedVideoEventsManager.getInstance().setEventsUrl(response.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoEventsConfigurations().getEventsURL(), context);
            RewardedVideoEventsManager.getInstance().setMaxNumberOfEvents(response.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoEventsConfigurations().getMaxNumberOfEvents());
            RewardedVideoEventsManager.getInstance().setMaxEventsPerBatch(response.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoEventsConfigurations().getMaxEventsPerBatch());
            RewardedVideoEventsManager.getInstance().setBackupThreshold(response.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoEventsConfigurations().getEventsBackupThreshold());
            RewardedVideoEventsManager.getInstance().setOptOutEvents(response.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoEventsConfigurations().getOptOutEvents(), context);
            RewardedVideoEventsManager.getInstance().setServerSegmentData(response.getConfigurations().getApplicationConfigurations().getSegmetData());
        } else {
            RewardedVideoEventsManager.getInstance().setIsEventsEnabled(false);
        }
        if (isISEventsEnabled) {
            InterstitialEventsManager.getInstance().setFormatterType(response.getConfigurations().getInterstitialConfigurations().getInterstitialEventsConfigurations().getEventsType(), context);
            InterstitialEventsManager.getInstance().setEventsUrl(response.getConfigurations().getInterstitialConfigurations().getInterstitialEventsConfigurations().getEventsURL(), context);
            InterstitialEventsManager.getInstance().setMaxNumberOfEvents(response.getConfigurations().getInterstitialConfigurations().getInterstitialEventsConfigurations().getMaxNumberOfEvents());
            InterstitialEventsManager.getInstance().setMaxEventsPerBatch(response.getConfigurations().getInterstitialConfigurations().getInterstitialEventsConfigurations().getMaxEventsPerBatch());
            InterstitialEventsManager.getInstance().setBackupThreshold(response.getConfigurations().getInterstitialConfigurations().getInterstitialEventsConfigurations().getEventsBackupThreshold());
            InterstitialEventsManager.getInstance().setOptOutEvents(response.getConfigurations().getInterstitialConfigurations().getInterstitialEventsConfigurations().getOptOutEvents(), context);
            InterstitialEventsManager.getInstance().setServerSegmentData(response.getConfigurations().getApplicationConfigurations().getSegmetData());
            return;
        }
        if (isBNEventsEnabled) {
            ApplicationEvents config = response.getConfigurations().getBannerConfigurations().getBannerEventsConfigurations();
            InterstitialEventsManager.getInstance().setFormatterType(config.getEventsType(), context);
            InterstitialEventsManager.getInstance().setEventsUrl(config.getEventsURL(), context);
            InterstitialEventsManager.getInstance().setMaxNumberOfEvents(config.getMaxNumberOfEvents());
            InterstitialEventsManager.getInstance().setMaxEventsPerBatch(config.getMaxEventsPerBatch());
            InterstitialEventsManager.getInstance().setBackupThreshold(config.getEventsBackupThreshold());
            InterstitialEventsManager.getInstance().setOptOutEvents(config.getOptOutEvents(), context);
            InterstitialEventsManager.getInstance().setServerSegmentData(response.getConfigurations().getApplicationConfigurations().getSegmetData());
            return;
        }
        InterstitialEventsManager.getInstance().setIsEventsEnabled(false);
    }

    private void initializeLoggerManager(ServerResponseWrapper response) {
        this.mPublisherLogger.setDebugLevel(response.getConfigurations().getApplicationConfigurations().getLoggerConfigurations().getPublisherLoggerLevel());
        this.mLoggerManager.setLoggerDebugLevel(ConsoleLogger.NAME, response.getConfigurations().getApplicationConfigurations().getLoggerConfigurations().getConsoleLoggerLevel());
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public void removeRewardedVideoListener() {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "removeRewardedVideoListener()", 1);
        this.mListenersWrapper.setRewardedVideoListener(null);
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public void removeInterstitialListener() {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "removeInterstitialListener()", 1);
        this.mListenersWrapper.setInterstitialListener(null);
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public void removeOfferwallListener() {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "removeOfferwallListener()", 1);
        this.mListenersWrapper.setOfferwallListener(null);
    }

    synchronized void setIronSourceUserId(String userId) {
        this.mUserId = userId;
    }

    public synchronized String getIronSourceAppKey() {
        return this.mAppKey;
    }

    public synchronized String getIronSourceUserId() {
        return this.mUserId;
    }

    private ConfigValidationResult validateAppKey(String appKey) {
        ConfigValidationResult result = new ConfigValidationResult();
        if (appKey != null) {
            if (validateLength(appKey, 5, 10)) {
                if (!validateAlphanumeric(appKey)) {
                    IronSourceError error = ErrorBuilder.buildInvalidCredentialsError(ServerResponseWrapper.APP_KEY_FIELD, appKey, "should contain only english characters and numbers");
                    result.setInvalid(error);
                }
            } else {
                IronSourceError error2 = ErrorBuilder.buildInvalidCredentialsError(ServerResponseWrapper.APP_KEY_FIELD, appKey, "length should be between 5-10 characters");
                result.setInvalid(error2);
            }
        } else {
            IronSourceError error3 = new IronSourceError(IronSourceError.ERROR_CODE_INVALID_KEY_VALUE, "Init Fail - appKey is missing");
            result.setInvalid(error3);
        }
        return result;
    }

    private void validateGender(String gender, ConfigValidationResult result) {
        if (gender != null) {
            try {
                String gender2 = gender.toLowerCase().trim();
                if (!IronSourceConstants.Gender.MALE.equals(gender2) && !IronSourceConstants.Gender.FEMALE.equals(gender2) && !"unknown".equals(gender2)) {
                    result.setInvalid(ErrorBuilder.buildInvalidKeyValueError("gender", IronSourceConstants.IRONSOURCE_CONFIG_NAME, "gender value should be one of male/female/unknown."));
                }
            } catch (Exception e) {
                result.setInvalid(ErrorBuilder.buildInvalidKeyValueError("gender", IronSourceConstants.IRONSOURCE_CONFIG_NAME, "gender value should be one of male/female/unknown."));
            }
        }
    }

    private void validateAge(int age, ConfigValidationResult result) {
        if (age < 5 || age > 120) {
            try {
                result.setInvalid(ErrorBuilder.buildInvalidKeyValueError("age", IronSourceConstants.IRONSOURCE_CONFIG_NAME, "age value should be between 5-120"));
            } catch (NumberFormatException e) {
                result.setInvalid(ErrorBuilder.buildInvalidKeyValueError("age", IronSourceConstants.IRONSOURCE_CONFIG_NAME, "age value should be between 5-120"));
            }
        }
    }

    private void validateSegment(String segment, ConfigValidationResult result) {
        if (segment != null) {
            try {
                if (segment.length() > 64) {
                    result.setInvalid(ErrorBuilder.buildInvalidKeyValueError("segment", IronSourceConstants.IRONSOURCE_CONFIG_NAME, "segment value should not exceed 64 characters."));
                }
            } catch (Exception e) {
                result.setInvalid(ErrorBuilder.buildInvalidKeyValueError("segment", IronSourceConstants.IRONSOURCE_CONFIG_NAME, "segment value should not exceed 64 characters."));
            }
        }
    }

    private void validateDynamicUserId(String dynamicUserId, ConfigValidationResult result) {
        if (!validateLength(dynamicUserId, 1, 128)) {
            result.setInvalid(ErrorBuilder.buildInvalidKeyValueError("dynamicUserId", IronSourceConstants.IRONSOURCE_CONFIG_NAME, "dynamicUserId is invalid, should be between 1-128 chars in length."));
        }
    }

    private boolean validateLength(String key, int minLength, int maxLength) {
        return key != null && key.length() >= minLength && key.length() <= maxLength;
    }

    private boolean validateAlphanumeric(String key) {
        if (key == null) {
            return false;
        }
        return key.matches("^[a-zA-Z0-9]*$");
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public InterstitialPlacement getInterstitialPlacementInfo(String placementName) {
        InterstitialPlacement result = null;
        try {
            result = this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations().getInterstitialPlacement(placementName);
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "getPlacementInfo(placement: " + placementName + "):" + result, 1);
            return result;
        } catch (Exception e) {
            return result;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public Placement getRewardedVideoPlacementInfo(String placementName) {
        Placement result = null;
        try {
            result = this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoPlacement(placementName);
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "getPlacementInfo(placement: " + placementName + "):" + result, 1);
            return result;
        } catch (Exception e) {
            return result;
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public String getAdvertiserId(Context context) {
        try {
            String[] deviceInfo = DeviceStatus.getAdvertisingIdInfo(context);
            if (deviceInfo.length > 0 && deviceInfo[0] != null) {
                return deviceInfo[0];
            }
            return "";
        } catch (Exception e) {
            return "";
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.IronSourceInterface
    public void shouldTrackNetworkState(Context context, boolean track) {
        if (this.mRewardedVideoManager != null) {
            this.mRewardedVideoManager.shouldTrackNetworkState(context, track);
        }
        if (this.mInterstitialManager != null) {
            this.mInterstitialManager.shouldTrackNetworkState(context, track);
        }
        if (this.mBannerManager != null) {
            this.mBannerManager.shouldTrackNetworkState(context, track);
        }
    }

    boolean isInterstitialPlacementCapped(String placementName) {
        boolean isCapped = false;
        CappingManager.ECappingStatus cappingStatus = getInterstitialCappingStatus(placementName);
        if (cappingStatus != null) {
            switch (cappingStatus) {
                case CAPPED_PER_DELIVERY:
                case CAPPED_PER_COUNT:
                case CAPPED_PER_PACE:
                    isCapped = true;
                    break;
            }
        }
        sendIsCappedEvent("Interstitial", isCapped);
        return isCapped;
    }

    boolean isRewardedVideoPlacementCapped(String placementName) {
        boolean isCapped = false;
        CappingManager.ECappingStatus cappingStatus = getRewardedVideoCappingStatus(placementName);
        if (cappingStatus != null) {
            switch (cappingStatus) {
                case CAPPED_PER_DELIVERY:
                case CAPPED_PER_COUNT:
                case CAPPED_PER_PACE:
                    isCapped = true;
                    break;
            }
        }
        sendIsCappedEvent(IronSourceConstants.REWARDED_VIDEO_AD_UNIT, isCapped);
        return isCapped;
    }

    boolean isBannerPlacementCapped(String placementName) {
        boolean isCapped = false;
        CappingManager.ECappingStatus cappingStatus = getBannerCappingStatus(placementName);
        if (cappingStatus != null) {
            switch (cappingStatus) {
                case CAPPED_PER_DELIVERY:
                case CAPPED_PER_COUNT:
                case CAPPED_PER_PACE:
                    isCapped = true;
                    break;
            }
        }
        sendIsCappedEvent(IronSourceConstants.BANNER_AD_UNIT, isCapped);
        return isCapped;
    }

    private CappingManager.ECappingStatus getInterstitialCappingStatus(String placementName) {
        if (this.mCurrentServerResponse == null || this.mCurrentServerResponse.getConfigurations() == null || this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations() == null) {
            return CappingManager.ECappingStatus.NOT_CAPPED;
        }
        InterstitialPlacement placement = null;
        try {
            placement = this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations().getInterstitialPlacement(placementName);
            if (placement == null && (placement = this.mCurrentServerResponse.getConfigurations().getInterstitialConfigurations().getDefaultInterstitialPlacement()) == null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found", 3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (placement == null) {
            return CappingManager.ECappingStatus.NOT_CAPPED;
        }
        return CappingManager.isPlacementCapped(this.mActivity, placement);
    }

    private CappingManager.ECappingStatus getRewardedVideoCappingStatus(String placementName) {
        if (this.mCurrentServerResponse == null || this.mCurrentServerResponse.getConfigurations() == null || this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations() == null) {
            return CappingManager.ECappingStatus.NOT_CAPPED;
        }
        Placement placement = null;
        try {
            placement = this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations().getRewardedVideoPlacement(placementName);
            if (placement == null && (placement = this.mCurrentServerResponse.getConfigurations().getRewardedVideoConfigurations().getDefaultRewardedVideoPlacement()) == null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found", 3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (placement == null) {
            return CappingManager.ECappingStatus.NOT_CAPPED;
        }
        return CappingManager.isPlacementCapped(this.mActivity, placement);
    }

    CappingManager.ECappingStatus getBannerCappingStatus(String placementName) {
        if (this.mCurrentServerResponse == null || this.mCurrentServerResponse.getConfigurations() == null || this.mCurrentServerResponse.getConfigurations().getBannerConfigurations() == null) {
            return CappingManager.ECappingStatus.NOT_CAPPED;
        }
        BannerPlacement placement = null;
        try {
            placement = this.mCurrentServerResponse.getConfigurations().getBannerConfigurations().getBannerPlacement(placementName);
            if (placement == null && (placement = this.mCurrentServerResponse.getConfigurations().getBannerConfigurations().getDefaultBannerPlacement()) == null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found", 3);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (placement == null) {
            return CappingManager.ECappingStatus.NOT_CAPPED;
        }
        return CappingManager.isPlacementCapped((Context) this.mActivity, placement);
    }

    private void sendIsCappedEvent(String adUnit, boolean isCapped) {
        if (isCapped) {
            boolean isDemandOnly = false;
            if (adUnit.equals("Interstitial") && this.mInterstitialManager != null) {
                isDemandOnly = this.mInterstitialManager.mIsInISDemandOnlyMode;
            } else if (adUnit.equals(IronSourceConstants.REWARDED_VIDEO_AD_UNIT) && this.mRewardedVideoManager != null) {
                isDemandOnly = this.mRewardedVideoManager.mIsInISDemandOnlyMode;
            }
            JSONObject data = IronSourceUtils.getMediationAdditionalData(isDemandOnly);
            try {
                data.put(ao.q, 1);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if ("Interstitial".equals(adUnit)) {
                EventData event = new EventData(34, data);
                InterstitialEventsManager.getInstance().log(event);
            } else if (IronSourceConstants.REWARDED_VIDEO_AD_UNIT.equals(adUnit)) {
                EventData event2 = new EventData(20, data);
                RewardedVideoEventsManager.getInstance().log(event2);
            } else if (IronSourceConstants.BANNER_AD_UNIT.equals(adUnit)) {
                EventData event3 = new EventData(IronSourceConstants.BANNER_PLACEMENT_CAPPED, data);
                InterstitialEventsManager.getInstance().log(event3);
            }
        }
    }

    String getCappingMessage(String placementName, CappingManager.ECappingStatus cappingStatus) {
        if (cappingStatus == null) {
            return null;
        }
        switch (cappingStatus) {
            case CAPPED_PER_DELIVERY:
                return "Placement " + placementName + " is capped by disabled delivery";
            case CAPPED_PER_COUNT:
                return "Placement " + placementName + " has reached its capping limit";
            case CAPPED_PER_PACE:
                return "Placement " + placementName + " has reached its limit as defined per pace";
            default:
                return null;
        }
    }

    ServerResponseWrapper getCurrentServerResponse() {
        return this.mCurrentServerResponse;
    }

    void setSegmentListener(SegmentListener listener) {
        if (this.mListenersWrapper != null) {
            this.mListenersWrapper.setSegmentListener(listener);
            MediationInitializer.getInstance().setSegmentListener(this.mListenersWrapper);
        }
    }

    HashSet<String> getAllSettingsForProvider(String providerName, String fieldName) {
        return this.mCurrentServerResponse == null ? new HashSet<>() : this.mCurrentServerResponse.getProviderSettingsHolder().getProviderSettingsByReflectionName(providerName, fieldName);
    }

    BannerPlacement validateBannerPlacement(String placementName) {
        BannerPlacement placement = this.mCurrentServerResponse.getConfigurations().getBannerConfigurations().getBannerPlacement(placementName);
        if (placement == null) {
            if (placementName != null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Placement is not valid, please make sure you are using the right placements, using the default placement.", 3);
            }
            placement = this.mCurrentServerResponse.getConfigurations().getBannerConfigurations().getDefaultBannerPlacement();
            if (placement == null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "Default placement was not found, please make sure you are using the right placements.", 3);
            }
        }
        return placement;
    }

    public void setConsent(boolean consent) {
        this.mConsent = Boolean.valueOf(consent);
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "setConsent : " + consent, 1);
        if (this.mRewardedVideoManager != null) {
            this.mRewardedVideoManager.setConsent(consent);
        }
        if (this.mInterstitialManager != null) {
            this.mInterstitialManager.setConsent(consent);
        }
        if (this.mBannerManager != null) {
            this.mBannerManager.setConsent(consent);
        }
        if (this.mOfferwallAdapter != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, "Offerwall | setConsent(consent:" + consent + ")", 1);
            this.mOfferwallAdapter.setConsent(consent);
        }
        int code = 40;
        if (!consent) {
            code = 41;
        }
        JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
        EventData instanceEvent = new EventData(code, data);
        RewardedVideoEventsManager.getInstance().log(instanceEvent);
    }

    Boolean getConsent() {
        return this.mConsent;
    }
}
