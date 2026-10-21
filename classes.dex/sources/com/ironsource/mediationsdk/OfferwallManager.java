package com.ironsource.mediationsdk;

import android.app.Activity;
import android.text.TextUtils;
import com.ironsource.eventsmodule.EventData;
import com.ironsource.mediationsdk.events.RewardedVideoEventsManager;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.ProviderSettings;
import com.ironsource.mediationsdk.sdk.InternalOfferwallApi;
import com.ironsource.mediationsdk.sdk.InternalOfferwallListener;
import com.ironsource.mediationsdk.sdk.OfferwallAdapterApi;
import com.ironsource.mediationsdk.sdk.OfferwallListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.ServerResponseWrapper;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
class OfferwallManager implements InternalOfferwallApi, InternalOfferwallListener {
    private Activity mActivity;
    private OfferwallAdapterApi mAdapter;
    private String mCurrentPlacementName;
    private InternalOfferwallListener mListenersWrapper;
    private ProviderSettings mProviderSettings;
    private ServerResponseWrapper mServerResponseWrapper;
    private final String TAG = getClass().getName();
    private AtomicBoolean mAtomicShouldPerformInit = new AtomicBoolean(true);
    private AtomicBoolean mIsOfferwallAvailable = new AtomicBoolean(false);
    private IronSourceLoggerManager mLoggerManager = IronSourceLoggerManager.getLogger();

    OfferwallManager() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    public synchronized void initOfferwall(Activity activity, String appKey, String userId) {
        AbstractAdapter abstractAdapterStartOfferwallAdapter;
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":initOfferwall(appKey: " + appKey + ", userId: " + userId + ")", 1);
        this.mActivity = activity;
        this.mServerResponseWrapper = IronSourceObject.getInstance().getCurrentServerResponse();
        if (this.mServerResponseWrapper == null) {
            reportInitFail(ErrorBuilder.buildInitFailedError("Please check configurations for Offerwall adapters", IronSourceConstants.OFFERWALL_AD_UNIT));
        } else {
            this.mProviderSettings = this.mServerResponseWrapper.getProviderSettingsHolder().getProviderSettings(IronSourceConstants.IRONSOURCE_CONFIG_NAME);
            if (this.mProviderSettings == null || (abstractAdapterStartOfferwallAdapter = startOfferwallAdapter()) == 0) {
                reportInitFail(ErrorBuilder.buildInitFailedError("Please check configurations for Offerwall adapters", IronSourceConstants.OFFERWALL_AD_UNIT));
            } else {
                setCustomParams(abstractAdapterStartOfferwallAdapter);
                abstractAdapterStartOfferwallAdapter.setLogListener(this.mLoggerManager);
                this.mAdapter = (OfferwallAdapterApi) abstractAdapterStartOfferwallAdapter;
                this.mAdapter.setInternalOfferwallListener(this);
                this.mAdapter.initOfferwall(activity, appKey, userId, this.mProviderSettings.getRewardedVideoSettings());
            }
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    public void showOfferwall() {
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006d A[Catch: Exception -> 0x0064, PHI: r4
      0x006d: PHI (r4v1 'placement' com.ironsource.mediationsdk.model.OfferwallPlacement) = 
      (r4v0 'placement' com.ironsource.mediationsdk.model.OfferwallPlacement)
      (r4v2 'placement' com.ironsource.mediationsdk.model.OfferwallPlacement)
     binds: [B:8:0x003d, B:10:0x0057] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #0 {Exception -> 0x0064, blocks: (B:3:0x0019, B:5:0x0021, B:7:0x002d, B:9:0x003f, B:11:0x0059, B:15:0x006d, B:17:0x0079, B:19:0x0081, B:21:0x0085), top: B:24:0x0019 }] */
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
            java.lang.String r6 = "OWManager:showOfferwall("
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r5 = r5.append(r9)
            java.lang.String r6 = ")"
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r1 = r5.toString()
            android.app.Activity r5 = r8.mActivity     // Catch: java.lang.Exception -> L64
            boolean r5 = com.ironsource.mediationsdk.utils.IronSourceUtils.isNetworkConnected(r5)     // Catch: java.lang.Exception -> L64
            if (r5 != 0) goto L2d
            com.ironsource.mediationsdk.sdk.InternalOfferwallListener r5 = r8.mListenersWrapper     // Catch: java.lang.Exception -> L64
            java.lang.String r6 = "Offerwall"
            com.ironsource.mediationsdk.logger.IronSourceError r6 = com.ironsource.mediationsdk.utils.ErrorBuilder.buildNoInternetConnectionShowFailError(r6)     // Catch: java.lang.Exception -> L64
            r5.onOfferwallShowFailed(r6)     // Catch: java.lang.Exception -> L64
        L2c:
            return
        L2d:
            r8.mCurrentPlacementName = r9     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.utils.ServerResponseWrapper r5 = r8.mServerResponseWrapper     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.model.Configurations r5 = r5.getConfigurations()     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.model.OfferwallConfigurations r5 = r5.getOfferwallConfigurations()     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.model.OfferwallPlacement r4 = r5.getOfferwallPlacement(r9)     // Catch: java.lang.Exception -> L64
            if (r4 != 0) goto L6d
            java.lang.String r3 = "Placement is not valid, please make sure you are using the right placements, using the default placement."
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r5 = r8.mLoggerManager     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r6 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.INTERNAL     // Catch: java.lang.Exception -> L64
            r7 = 3
            r5.log(r6, r3, r7)     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.utils.ServerResponseWrapper r5 = r8.mServerResponseWrapper     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.model.Configurations r5 = r5.getConfigurations()     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.model.OfferwallConfigurations r5 = r5.getOfferwallConfigurations()     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.model.OfferwallPlacement r4 = r5.getDefaultOfferwallPlacement()     // Catch: java.lang.Exception -> L64
            if (r4 != 0) goto L6d
            java.lang.String r2 = "Default placement was not found, please make sure you are using the right placements."
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r5 = r8.mLoggerManager     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r6 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.INTERNAL     // Catch: java.lang.Exception -> L64
            r7 = 3
            r5.log(r6, r2, r7)     // Catch: java.lang.Exception -> L64
            goto L2c
        L64:
            r0 = move-exception
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r5 = r8.mLoggerManager
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r6 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.INTERNAL
            r5.logException(r6, r1, r0)
            goto L2c
        L6d:
            com.ironsource.mediationsdk.logger.IronSourceLoggerManager r5 = r8.mLoggerManager     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag r6 = com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag.INTERNAL     // Catch: java.lang.Exception -> L64
            r7 = 1
            r5.log(r6, r1, r7)     // Catch: java.lang.Exception -> L64
            java.util.concurrent.atomic.AtomicBoolean r5 = r8.mIsOfferwallAvailable     // Catch: java.lang.Exception -> L64
            if (r5 == 0) goto L2c
            java.util.concurrent.atomic.AtomicBoolean r5 = r8.mIsOfferwallAvailable     // Catch: java.lang.Exception -> L64
            boolean r5 = r5.get()     // Catch: java.lang.Exception -> L64
            if (r5 == 0) goto L2c
            com.ironsource.mediationsdk.sdk.OfferwallAdapterApi r5 = r8.mAdapter     // Catch: java.lang.Exception -> L64
            if (r5 == 0) goto L2c
            com.ironsource.mediationsdk.sdk.OfferwallAdapterApi r5 = r8.mAdapter     // Catch: java.lang.Exception -> L64
            int r6 = r4.getPlacementId()     // Catch: java.lang.Exception -> L64
            java.lang.String r6 = java.lang.String.valueOf(r6)     // Catch: java.lang.Exception -> L64
            com.ironsource.mediationsdk.model.ProviderSettings r7 = r8.mProviderSettings     // Catch: java.lang.Exception -> L64
            org.json.JSONObject r7 = r7.getRewardedVideoSettings()     // Catch: java.lang.Exception -> L64
            r5.showOfferwall(r6, r7)     // Catch: java.lang.Exception -> L64
            goto L2c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.mediationsdk.OfferwallManager.showOfferwall(java.lang.String):void");
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    public synchronized boolean isOfferwallAvailable() {
        boolean result;
        result = this.mIsOfferwallAvailable != null ? this.mIsOfferwallAvailable.get() : false;
        return result;
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    public void getOfferwallCredits() {
        if (this.mAdapter != null) {
            this.mAdapter.getOfferwallCredits();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallApi
    public void setOfferwallListener(OfferwallListener offerwallListener) {
    }

    @Override // com.ironsource.mediationsdk.sdk.InternalOfferwallApi
    public void setInternalOfferwallListener(InternalOfferwallListener listener) {
        this.mListenersWrapper = listener;
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallAvailable(boolean isAvailable) {
        onOfferwallAvailable(isAvailable, null);
    }

    @Override // com.ironsource.mediationsdk.sdk.InternalOfferwallListener
    public void onOfferwallAvailable(boolean isAvailable, IronSourceError error) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallAvailable(isAvailable: " + isAvailable + ")", 1);
        if (isAvailable) {
            this.mIsOfferwallAvailable.set(true);
            if (this.mListenersWrapper != null) {
                this.mListenersWrapper.onOfferwallAvailable(true);
                return;
            }
            return;
        }
        reportInitFail(error);
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallOpened() {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallOpened()", 1);
        JSONObject data = IronSourceUtils.getMediationAdditionalData(false);
        try {
            if (!TextUtils.isEmpty(this.mCurrentPlacementName)) {
                data.put("placement", this.mCurrentPlacementName);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        EventData event = new EventData(IronSourceConstants.OFFERWALL_OPENED, data);
        RewardedVideoEventsManager.getInstance().log(event);
        if (this.mListenersWrapper != null) {
            this.mListenersWrapper.onOfferwallOpened();
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallShowFailed(IronSourceError error) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallShowFailed(" + error + ")", 1);
        if (this.mListenersWrapper != null) {
            this.mListenersWrapper.onOfferwallShowFailed(error);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public boolean onOfferwallAdCredited(int credits, int totalCredits, boolean totalCreditsFlag) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallAdCredited()", 1);
        if (this.mListenersWrapper != null) {
            return this.mListenersWrapper.onOfferwallAdCredited(credits, totalCredits, totalCreditsFlag);
        }
        return false;
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onGetOfferwallCreditsFailed(IronSourceError error) {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onGetOfferwallCreditsFailed(" + error + ")", 1);
        if (this.mListenersWrapper != null) {
            this.mListenersWrapper.onGetOfferwallCreditsFailed(error);
        }
    }

    @Override // com.ironsource.mediationsdk.sdk.OfferwallListener
    public void onOfferwallClosed() {
        this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_CALLBACK, "onOfferwallClosed()", 1);
        if (this.mListenersWrapper != null) {
            this.mListenersWrapper.onOfferwallClosed();
        }
    }

    private synchronized void reportInitFail(IronSourceError error) {
        if (this.mIsOfferwallAvailable != null) {
            this.mIsOfferwallAvailable.set(false);
        }
        if (this.mAtomicShouldPerformInit != null) {
            this.mAtomicShouldPerformInit.set(true);
        }
        if (this.mListenersWrapper != null) {
            this.mListenersWrapper.onOfferwallAvailable(false, error);
        }
    }

    private AbstractAdapter startOfferwallAdapter() {
        try {
            IronSourceObject sso = IronSourceObject.getInstance();
            AbstractAdapter providerAdapter = sso.getExistingAdapter(IronSourceConstants.IRONSOURCE_CONFIG_NAME);
            if (providerAdapter == null) {
                Class<?> mAdapterClass = Class.forName("com.ironsource.adapters." + IronSourceConstants.IRONSOURCE_CONFIG_NAME.toLowerCase() + "." + IronSourceConstants.IRONSOURCE_CONFIG_NAME + "Adapter");
                Method startAdapterMethod = mAdapterClass.getMethod(IronSourceConstants.START_ADAPTER, String.class);
                providerAdapter = (AbstractAdapter) startAdapterMethod.invoke(mAdapterClass, IronSourceConstants.IRONSOURCE_CONFIG_NAME);
                if (providerAdapter == null) {
                    return null;
                }
            }
            sso.addOWAdapter(providerAdapter);
            return providerAdapter;
        } catch (Throwable e) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.API, "SupersonicAds initialization failed - please verify that required dependencies are in you build path.", 2);
            this.mLoggerManager.logException(IronSourceLogger.IronSourceTag.API, this.TAG + ":startOfferwallAdapter", e);
            return null;
        }
    }

    private void setCustomParams(AbstractAdapter providerAdapter) {
        try {
            Integer age = IronSourceObject.getInstance().getAge();
            if (age != null) {
                providerAdapter.setAge(age.intValue());
            }
            String gender = IronSourceObject.getInstance().getGender();
            if (gender != null) {
                providerAdapter.setGender(gender);
            }
            String segment = IronSourceObject.getInstance().getMediationSegment();
            if (segment != null) {
                providerAdapter.setMediationSegment(segment);
            }
            Boolean consent = IronSourceObject.getInstance().getConsent();
            if (consent != null) {
                this.mLoggerManager.log(IronSourceLogger.IronSourceTag.ADAPTER_API, "Offerwall | setConsent(consent:" + consent + ")", 1);
                providerAdapter.setConsent(consent.booleanValue());
            }
        } catch (Exception e) {
            this.mLoggerManager.log(IronSourceLogger.IronSourceTag.INTERNAL, ":setCustomParams():" + e.toString(), 3);
        }
    }
}
