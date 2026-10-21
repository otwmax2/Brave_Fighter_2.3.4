package com.ironsource.mediationsdk;

import android.app.Activity;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.ProviderSettings;
import com.ironsource.mediationsdk.sdk.BaseApi;
import java.util.HashSet;
import java.util.TimerTask;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractSmash implements BaseApi {
    public static final int MAX_ADS_PER_DAY_DEFAULT_VALUE = 99;
    AbstractAdapter mAdapter;
    ProviderSettings mAdapterConfigs;
    TimerTask mInitTimerTask;
    String mInstanceName;
    boolean mIsMultipleInstances;
    TimerTask mLoadTimerTask;
    int mMaxAdsPerDay;
    int mMaxAdsPerIteration;
    int mMaxAdsPerSession;
    String mName;
    String mNameForReflection;
    int mProviderPriority;
    String mSpId;
    final String MAX_ADS_PER_SESSION_KEY = "maxAdsPerSession";
    final String MAX_ADS_PER_ITERATION_KEY = "maxAdsPerIteration";
    final String MAX_ADS_PER_DAY_KEY = "maxAdsPerDay";
    int mIterationShowCounter = 0;
    int mSessionShowCounter = 0;
    MEDIATION_STATE mMediationState = MEDIATION_STATE.NOT_INITIATED;
    IronSourceLoggerManager mLoggerManager = IronSourceLoggerManager.getLogger();
    boolean mIsInForeground = true;

    abstract void completeIteration();

    protected abstract String getAdUnitString();

    abstract void startInitTimer();

    abstract void startLoadTimer();

    public enum MEDIATION_STATE {
        NOT_INITIATED(0),
        INIT_FAILED(1),
        INITIATED(2),
        AVAILABLE(3),
        NOT_AVAILABLE(4),
        EXHAUSTED(5),
        CAPPED_PER_SESSION(6),
        INIT_PENDING(7),
        LOAD_PENDING(8),
        CAPPED_PER_DAY(9);

        private int mValue;

        MEDIATION_STATE(int value) {
            this.mValue = value;
        }

        public int getValue() {
            return this.mValue;
        }
    }

    AbstractSmash(ProviderSettings adapterConfigs) {
        this.mNameForReflection = adapterConfigs.getProviderTypeForReflection();
        this.mInstanceName = adapterConfigs.getProviderInstanceName();
        this.mIsMultipleInstances = adapterConfigs.isMultipleInstances();
        this.mAdapterConfigs = adapterConfigs;
        this.mSpId = adapterConfigs.getSubProviderId();
        if (this.mIsMultipleInstances) {
            this.mName = this.mNameForReflection;
        } else {
            this.mName = adapterConfigs.getProviderName();
        }
    }

    void setAdapterForSmash(AbstractAdapter adapter) {
        this.mAdapter = adapter;
    }

    boolean isExhausted() {
        return this.mIterationShowCounter >= this.mMaxAdsPerIteration;
    }

    boolean isCappedPerSession() {
        return this.mSessionShowCounter >= this.mMaxAdsPerSession;
    }

    boolean isCappedPerDay() {
        return this.mMediationState == MEDIATION_STATE.CAPPED_PER_DAY;
    }

    boolean isMediationAvailable() {
        return (isExhausted() || isCappedPerSession() || isCappedPerDay()) ? false : true;
    }

    void preShow() {
        this.mIterationShowCounter++;
        this.mSessionShowCounter++;
        if (isCappedPerSession()) {
            setMediationState(MEDIATION_STATE.CAPPED_PER_SESSION);
        } else if (isExhausted()) {
            setMediationState(MEDIATION_STATE.EXHAUSTED);
        }
    }

    void stopInitTimer() {
        try {
            if (this.mInitTimerTask != null) {
                this.mInitTimerTask.cancel();
                this.mInitTimerTask = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void stopLoadTimer() {
        try {
            if (this.mLoadTimerTask != null) {
                this.mLoadTimerTask.cancel();
                this.mLoadTimerTask = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    void setPluginData(String pluginType, String pluginFrameworkVersion) {
        if (this.mAdapter != null) {
            this.mAdapter.setPluginData(pluginType, pluginFrameworkVersion);
        }
    }

    MEDIATION_STATE getMediationState() {
        return this.mMediationState;
    }

    String getNameForReflection() {
        return this.mNameForReflection;
    }

    String getInstanceName() {
        return this.mInstanceName;
    }

    public String getName() {
        return this.mName;
    }

    public String getSubProviderId() {
        return this.mSpId;
    }

    int getMaxAdsPerSession() {
        return this.mMaxAdsPerSession;
    }

    int getMaxAdsPerIteration() {
        return this.mMaxAdsPerIteration;
    }

    public int getMaxAdsPerDay() {
        return this.mMaxAdsPerDay;
    }

    public AbstractAdapter getAdapter() {
        return this.mAdapter;
    }

    public int getProviderPriority() {
        return this.mProviderPriority;
    }

    synchronized void setMediationState(MEDIATION_STATE state) {
        if (this.mMediationState != state) {
            this.mMediationState = state;
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, "Smart Loading - " + getInstanceName() + " state changed to " + state.toString(), 0);
            if (this.mAdapter != null && (state == MEDIATION_STATE.CAPPED_PER_SESSION || state == MEDIATION_STATE.CAPPED_PER_DAY)) {
                this.mAdapter.setMediationState(state, getAdUnitString());
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void onResume(Activity activity) {
        if (this.mAdapter != null) {
            this.mAdapter.onResume(activity);
        }
        this.mIsInForeground = true;
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void onPause(Activity activity) {
        if (this.mAdapter != null) {
            this.mAdapter.onPause(activity);
        }
        this.mIsInForeground = false;
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void setAge(int age) {
        if (this.mAdapter != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getName() + ":setAge(age:" + age + ")", 1);
            this.mAdapter.setAge(age);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void setGender(String gender) {
        if (this.mAdapter != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getName() + ":setGender(gender:" + gender + ")", 1);
            this.mAdapter.setGender(gender);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.BaseApi
    public void setMediationSegment(String segment) {
        if (this.mAdapter != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getName() + ":setMediationSegment(segment:" + segment + ")", 1);
            this.mAdapter.setMediationSegment(segment);
        }
    }

    public HashSet<String> getAllSettingsForProvider(String fieldName) {
        return IronSourceObject.getInstance().getAllSettingsForProvider(this.mNameForReflection, fieldName);
    }

    void setProviderPriority(int providerPriority) {
        this.mProviderPriority = providerPriority;
    }

    void setConsent(boolean consent) {
        if (this.mAdapter != null) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, getName() + " | " + getAdUnitString() + "| setConsent(consent:" + consent + ")", 1);
            this.mAdapter.setConsent(consent);
        }
    }
}
