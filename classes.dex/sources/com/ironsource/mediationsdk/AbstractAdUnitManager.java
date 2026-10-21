package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.BaseApi;
import com.ironsource.mediationsdk.utils.DailyCappingManager;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.tendcloud.tenddata.game.ao;
import java.lang.reflect.Method;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes.dex */
abstract class AbstractAdUnitManager implements BaseApi {
    Activity mActivity;
    String mAppKey;
    boolean mBackFillInitStarted;
    private AbstractSmash mBackfillSmash;
    Boolean mLastMediationAvailabilityState;
    private AbstractSmash mPremiumSmash;
    int mSmartLoadAmount;
    String mUserId;
    final String KEY_REASON = ao.q;
    final String KEY_STATUS = "status";
    final String KEY_PLACEMENT = "placement";
    final String KEY_REWARD_NAME = "rewardName";
    final String KEY_REWARD_AMOUNT = "rewardAmount";
    final String KEY_PROVIDER_PRIORITY = "providerPriority";
    boolean mShouldTrackNetworkState = false;
    boolean mCanShowPremium = true;
    boolean mIsInISDemandOnlyMode = false;
    final CopyOnWriteArrayList<AbstractSmash> mSmashArray = new CopyOnWriteArrayList<>();
    IronSourceLoggerManager mLoggerManager = IronSourceLoggerManager.getLogger();
    DailyCappingManager mDailyCappingManager = null;

    abstract void shouldTrackNetworkState(Context context, boolean z);

    AbstractAdUnitManager() {
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void onResume(Activity activity) {
        if (activity != null) {
            this.mActivity = activity;
        }
        synchronized (this.mSmashArray) {
            if (this.mSmashArray != null) {
                for (AbstractSmash smash : this.mSmashArray) {
                    smash.onResume(activity);
                }
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void onPause(Activity activity) {
        synchronized (this.mSmashArray) {
            if (this.mSmashArray != null) {
                for (AbstractSmash smash : this.mSmashArray) {
                    smash.onPause(activity);
                }
            }
        }
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

    void setSmartLoadAmount(int numberOfAdaptersToLoad) {
        this.mSmartLoadAmount = numberOfAdaptersToLoad;
    }

    void addSmashToArray(AbstractSmash smash) {
        this.mSmashArray.add(smash);
        if (this.mDailyCappingManager != null) {
            this.mDailyCappingManager.addSmash(smash);
        }
    }

    void setBackfillSmash(AbstractSmash backfill) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, backfill.getInstanceName() + " is set as backfill", 0);
        this.mBackfillSmash = backfill;
    }

    void setPremiumSmash(AbstractSmash premium) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, premium.getInstanceName() + " is set as premium", 0);
        this.mPremiumSmash = premium;
    }

    AbstractSmash getBackfillSmash() {
        return this.mBackfillSmash;
    }

    AbstractSmash getPremiumSmash() {
        return this.mPremiumSmash;
    }

    void setCustomParams(AbstractSmash smash) {
        try {
            Integer age = IronSourceObject.getInstance().getAge();
            if (age != null) {
                smash.setAge(age.intValue());
            }
            String gender = IronSourceObject.getInstance().getGender();
            if (!TextUtils.isEmpty(gender)) {
                smash.setGender(gender);
            }
            String segment = IronSourceObject.getInstance().getMediationSegment();
            if (!TextUtils.isEmpty(segment)) {
                smash.setMediationSegment(segment);
            }
            String pluginType = ConfigFile.getConfigFile().getPluginType();
            if (!TextUtils.isEmpty(pluginType)) {
                smash.setPluginData(pluginType, ConfigFile.getConfigFile().getPluginFrameworkVersion());
            }
            Boolean consent = IronSourceObject.getInstance().getConsent();
            if (consent != null) {
                smash.setConsent(consent.booleanValue());
            }
        } catch (Exception e) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, ":setCustomParams():" + e.toString(), 3);
        }
    }

    synchronized boolean canShowPremium() {
        return this.mCanShowPremium;
    }

    synchronized void disablePremiumForCurrentSession() {
        this.mCanShowPremium = false;
    }

    synchronized AbstractAdapter getLoadedAdapterOrFetchByReflection(AbstractSmash smash) {
        AbstractAdapter providerAdapter;
        try {
            IronSourceObject sso = IronSourceObject.getInstance();
            providerAdapter = sso.getExistingAdapter(smash.getName());
            if (providerAdapter == null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "loading " + smash.getName() + " with reflection", 0);
                Class<?> mAdapterClass = Class.forName("com.ironsource.adapters." + smash.getNameForReflection().toLowerCase() + "." + smash.getNameForReflection() + "Adapter");
                Method startAdapterMethod = mAdapterClass.getMethod(IronSourceConstants.START_ADAPTER, String.class);
                providerAdapter = (AbstractAdapter) startAdapterMethod.invoke(mAdapterClass, smash.getName());
            } else {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "using previously loaded " + smash.getName(), 0);
            }
        } catch (Exception e) {
            providerAdapter = null;
        }
        return providerAdapter;
    }

    void setConsent(boolean consent) {
        for (AbstractSmash smash : this.mSmashArray) {
            if (smash != null) {
                smash.setConsent(consent);
            }
        }
    }
}
