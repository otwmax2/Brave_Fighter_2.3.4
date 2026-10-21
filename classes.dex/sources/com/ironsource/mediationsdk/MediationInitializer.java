package com.ironsource.mediationsdk;

import android.app.Activity;
import android.content.IntentFilter;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.text.TextUtils;
import com.ironsource.environment.DeviceStatus;
import com.ironsource.environment.NetworkStateReceiver;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.IronSourceObject;
import com.ironsource.mediationsdk.config.ConfigValidationResult;
import com.ironsource.mediationsdk.integration.IntegrationHelper;
import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.ServerSegmetData;
import com.ironsource.mediationsdk.sdk.GeneralProperties;
import com.ironsource.mediationsdk.sdk.SegmentListener;
import com.ironsource.mediationsdk.utils.ErrorBuilder;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.mediationsdk.utils.ServerResponseWrapper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
class MediationInitializer implements NetworkStateReceiver.NetworkStateReceiverListener {
    private static MediationInitializer sInstance;
    private Activity mActivity;
    private String mAppKey;
    private AtomicBoolean mAtomicShouldPerformInit;
    private CountDownTimer mCountDownTimer;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private boolean mIsInProgressMoreThan15Secs;
    private boolean mIsRevived;
    private NetworkStateReceiver mNetworkStateReceiver;
    private int mRetryAvailabilityLimit;
    private int mRetryCounter;
    private int mRetryDelay;
    private int mRetryGrowLimit;
    private int mRetryLimit;
    private SegmentListener mSegmentListener;
    private ServerResponseWrapper mServerResponseWrapper;
    private String mUserId;
    private String mUserIdType;
    private final String GENERAL_PROPERTIES_USER_ID = ServerResponseWrapper.USER_ID_FIELD;
    private final String GENERAL_PROPERTIES_APP_KEY = ServerResponseWrapper.APP_KEY_FIELD;
    private final String TAG = getClass().getSimpleName();
    private boolean mDidReportInitialAvailability = false;
    private boolean mListenForInit = false;
    private List<OnMediationInitializationListener> mOnMediationInitializationListeners = new ArrayList();
    private InitRunnable initRunnable = new InitRunnable() { // from class: com.ironsource.mediationsdk.MediationInitializer.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                IronSourceObject ironSourceObject = IronSourceObject.getInstance();
                ConfigValidationResult validationResult = MediationInitializer.this.validateUserId(MediationInitializer.this.mUserId);
                if (validationResult.isValid()) {
                    MediationInitializer.this.mUserIdType = IronSourceConstants.TYPE_USER_GENERATED;
                } else {
                    MediationInitializer.this.mUserId = ironSourceObject.getAdvertiserId(MediationInitializer.this.mActivity);
                    if (!TextUtils.isEmpty(MediationInitializer.this.mUserId)) {
                        MediationInitializer.this.mUserIdType = IronSourceConstants.TYPE_GAID;
                    } else {
                        MediationInitializer.this.mUserId = DeviceStatus.getOrGenerateOnceUniqueIdentifier(MediationInitializer.this.mActivity);
                        if (!TextUtils.isEmpty(MediationInitializer.this.mUserId)) {
                            MediationInitializer.this.mUserIdType = IronSourceConstants.TYPE_UUID;
                        } else {
                            MediationInitializer.this.mUserId = "";
                        }
                    }
                    ironSourceObject.setIronSourceUserId(MediationInitializer.this.mUserId);
                }
                GeneralProperties.getProperties().putKey(GeneralProperties.USER_ID_TYPE, MediationInitializer.this.mUserIdType);
                if (!TextUtils.isEmpty(MediationInitializer.this.mUserId)) {
                    GeneralProperties.getProperties().putKey(ServerResponseWrapper.USER_ID_FIELD, MediationInitializer.this.mUserId);
                }
                if (!TextUtils.isEmpty(MediationInitializer.this.mAppKey)) {
                    GeneralProperties.getProperties().putKey(ServerResponseWrapper.APP_KEY_FIELD, MediationInitializer.this.mAppKey);
                }
                MediationInitializer.this.mServerResponseWrapper = ironSourceObject.getServerResponse(MediationInitializer.this.mActivity, MediationInitializer.this.mUserId, this.listener);
                if (MediationInitializer.this.mServerResponseWrapper != null) {
                    MediationInitializer.this.mHandler.removeCallbacks(this);
                    if (MediationInitializer.this.mServerResponseWrapper.isValidResponse()) {
                        MediationInitializer.this.setInitStatus(EInitStatus.INITIATED);
                        if (MediationInitializer.this.mServerResponseWrapper.getConfigurations().getApplicationConfigurations().getIntegration()) {
                            IntegrationHelper.validateIntegration(MediationInitializer.this.mActivity);
                        }
                        List<IronSource.AD_UNIT> adUnits = MediationInitializer.this.mServerResponseWrapper.getInitiatedAdUnits();
                        for (OnMediationInitializationListener listener : MediationInitializer.this.mOnMediationInitializationListeners) {
                            listener.onInitSuccess(adUnits, MediationInitializer.this.wasInitRevived());
                        }
                        if (MediationInitializer.this.mSegmentListener != null) {
                            ServerSegmetData data = MediationInitializer.this.mServerResponseWrapper.getConfigurations().getApplicationConfigurations().getSegmetData();
                            if (data != null) {
                                MediationInitializer.this.mSegmentListener.onSegmentReceived(data.getSegmentName());
                                return;
                            } else {
                                MediationInitializer.this.mSegmentListener.onSegmentReceived("");
                                return;
                            }
                        }
                        return;
                    }
                    if (!MediationInitializer.this.mDidReportInitialAvailability) {
                        MediationInitializer.this.setInitStatus(EInitStatus.INIT_FAILED);
                        MediationInitializer.this.mDidReportInitialAvailability = true;
                        for (OnMediationInitializationListener listener2 : MediationInitializer.this.mOnMediationInitializationListeners) {
                            listener2.onInitFailed(IronSourceConstants.FALSE_AVAILABILITY_REASON_SERVER_RESPONSE_IS_NOT_VALID);
                        }
                        return;
                    }
                    return;
                }
                if (MediationInitializer.this.mRetryCounter == 3) {
                    MediationInitializer.this.mIsInProgressMoreThan15Secs = true;
                    for (OnMediationInitializationListener listener3 : MediationInitializer.this.mOnMediationInitializationListeners) {
                        listener3.onStillInProgressAfter15Secs();
                    }
                }
                if (this.isRecoverable && MediationInitializer.this.mRetryCounter < MediationInitializer.this.mRetryLimit) {
                    MediationInitializer.this.mIsRevived = true;
                    MediationInitializer.this.mHandler.postDelayed(this, MediationInitializer.this.mRetryDelay * 1000);
                    if (MediationInitializer.this.mRetryCounter < MediationInitializer.this.mRetryGrowLimit) {
                        MediationInitializer.this.mRetryDelay *= 2;
                    }
                }
                if ((!this.isRecoverable || MediationInitializer.this.mRetryCounter == MediationInitializer.this.mRetryAvailabilityLimit) && !MediationInitializer.this.mDidReportInitialAvailability) {
                    MediationInitializer.this.mDidReportInitialAvailability = true;
                    if (TextUtils.isEmpty(this.reason)) {
                        this.reason = IronSourceConstants.FALSE_AVAILABILITY_REASON_NO_SERVER_RESPONSE;
                    }
                    for (OnMediationInitializationListener listener4 : MediationInitializer.this.mOnMediationInitializationListeners) {
                        listener4.onInitFailed(this.reason);
                    }
                    MediationInitializer.this.setInitStatus(EInitStatus.INIT_FAILED);
                    IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No server response", 1);
                }
                MediationInitializer.access$1208(MediationInitializer.this);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    };
    private EInitStatus mInitStatus = EInitStatus.NOT_INIT;

    enum EInitStatus {
        NOT_INIT,
        INIT_IN_PROGRESS,
        INIT_FAILED,
        INITIATED
    }

    interface OnMediationInitializationListener {
        void onInitFailed(String str);

        void onInitSuccess(List<IronSource.AD_UNIT> list, boolean z);

        void onStillInProgressAfter15Secs();
    }

    static /* synthetic */ int access$1208(MediationInitializer x0) {
        int i = x0.mRetryCounter;
        x0.mRetryCounter = i + 1;
        return i;
    }

    abstract class InitRunnable implements Runnable {
        boolean isRecoverable = true;
        protected IronSourceObject.IResponseListener listener = new IronSourceObject.IResponseListener() { // from class: com.ironsource.mediationsdk.MediationInitializer.InitRunnable.1
            @Override // com.ironsource.mediationsdk.IronSourceObject.IResponseListener
            public void onUnrecoverableError(String errorMessage) {
                InitRunnable.this.isRecoverable = false;
                InitRunnable.this.reason = errorMessage;
            }
        };
        String reason;

        InitRunnable() {
        }
    }

    public static synchronized MediationInitializer getInstance() {
        if (sInstance == null) {
            sInstance = new MediationInitializer();
        }
        return sInstance;
    }

    private MediationInitializer() {
        this.mHandlerThread = null;
        this.mHandlerThread = new HandlerThread("IronSourceInitiatorHandler");
        this.mHandlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper());
        this.mRetryDelay = 1;
        this.mRetryCounter = 0;
        this.mRetryLimit = 62;
        this.mRetryGrowLimit = 12;
        this.mRetryAvailabilityLimit = 5;
        this.mAtomicShouldPerformInit = new AtomicBoolean(true);
        this.mIsRevived = false;
        this.mIsInProgressMoreThan15Secs = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setInitStatus(EInitStatus status) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setInitStatus(old status: " + this.mInitStatus + ", new status: " + status + ")", 0);
        this.mInitStatus = status;
    }

    public synchronized void init(Activity activity, String appKey, String userId, IronSource.AD_UNIT... adUnits) {
        try {
            if (this.mAtomicShouldPerformInit != null && this.mAtomicShouldPerformInit.compareAndSet(true, false)) {
                setInitStatus(EInitStatus.INIT_IN_PROGRESS);
                this.mActivity = activity;
                this.mUserId = userId;
                this.mAppKey = appKey;
                if (IronSourceUtils.isNetworkConnected(activity)) {
                    this.mHandler.post(this.initRunnable);
                } else {
                    this.mListenForInit = true;
                    if (this.mNetworkStateReceiver == null) {
                        this.mNetworkStateReceiver = new NetworkStateReceiver(activity, this);
                    }
                    activity.getApplicationContext().registerReceiver(this.mNetworkStateReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.ironsource.mediationsdk.MediationInitializer.2
                        /* JADX WARN: Type inference failed for: r0v0, types: [com.ironsource.mediationsdk.MediationInitializer$2$1] */
                        @Override // java.lang.Runnable
                        public void run() {
                            MediationInitializer.this.mCountDownTimer = new CountDownTimer(60000L, 15000L) { // from class: com.ironsource.mediationsdk.MediationInitializer.2.1
                                @Override // android.os.CountDownTimer
                                public void onTick(long millisUntilFinished) {
                                    if (millisUntilFinished <= 45000) {
                                        MediationInitializer.this.mIsInProgressMoreThan15Secs = true;
                                        for (OnMediationInitializationListener listener : MediationInitializer.this.mOnMediationInitializationListeners) {
                                            listener.onStillInProgressAfter15Secs();
                                        }
                                    }
                                }

                                @Override // android.os.CountDownTimer
                                public void onFinish() {
                                    if (!MediationInitializer.this.mDidReportInitialAvailability) {
                                        MediationInitializer.this.mDidReportInitialAvailability = true;
                                        for (OnMediationInitializationListener listener : MediationInitializer.this.mOnMediationInitializationListeners) {
                                            listener.onInitFailed(IronSourceConstants.FALSE_AVAILABILITY_REASON_NO_INTERNET);
                                        }
                                        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, "Mediation availability false reason: No internet connection", 1);
                                    }
                                }
                            }.start();
                        }
                    });
                }
            } else {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.API, this.TAG + ": Multiple calls to init are not allowed", 2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // com.ironsource.environment.NetworkStateReceiver.NetworkStateReceiverListener
    public void onNetworkAvailabilityChanged(boolean connected) {
        if (this.mListenForInit && connected) {
            if (this.mCountDownTimer != null) {
                this.mCountDownTimer.cancel();
            }
            this.mListenForInit = false;
            this.mIsRevived = true;
            this.mHandler.post(this.initRunnable);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean wasInitRevived() {
        return this.mIsRevived;
    }

    public synchronized EInitStatus getCurrentInitStatus() {
        return this.mInitStatus;
    }

    public synchronized boolean isInProgressMoreThan15Secs() {
        return this.mIsInProgressMoreThan15Secs;
    }

    public void addMediationInitializationListener(OnMediationInitializationListener listener) {
        if (listener != null) {
            this.mOnMediationInitializationListeners.add(listener);
        }
    }

    public void removeMediationInitializationListener(OnMediationInitializationListener listener) {
        if (listener != null && this.mOnMediationInitializationListeners.size() != 0) {
            this.mOnMediationInitializationListeners.remove(listener);
        }
    }

    void setSegmentListener(SegmentListener listener) {
        this.mSegmentListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ConfigValidationResult validateUserId(String userId) {
        ConfigValidationResult result = new ConfigValidationResult();
        if (userId != null) {
            if (!validateLength(userId, 1, 64)) {
                IronSourceError error = ErrorBuilder.buildInvalidCredentialsError(ServerResponseWrapper.USER_ID_FIELD, userId, null);
                result.setInvalid(error);
            }
        } else {
            IronSourceError error2 = ErrorBuilder.buildInvalidCredentialsError(ServerResponseWrapper.USER_ID_FIELD, userId, "it's missing");
            result.setInvalid(error2);
        }
        return result;
    }

    private boolean validateLength(String key, int minLength, int maxLength) {
        return key != null && key.length() >= minLength && key.length() <= maxLength;
    }
}
