package com.ironsource.mediationsdk.logger;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceError {
    public static final int BANNER_INIT_FAILED = 600;
    public static final int BANNER_INIT_IN_PROGRESS = 601;
    public static final int BANNER_LOAD_EXCEPTION = 602;
    public static final int BANNER_NO_ADS_TO_SHOW = 603;
    public static final int BANNER_NO_ADS_TO_SHOW2 = 604;
    public static final int BANNER_NO_ADS_TO_SHOW3 = 605;
    public static final int BANNER_TIMEOUT = 603;
    public static final int ERROR_CAPPED_PER_SESSION = 526;
    public static final int ERROR_CODE_GENERIC = 510;
    public static final int ERROR_CODE_INIT_FAILED = 508;
    public static final int ERROR_CODE_INVALID_KEY_VALUE = 506;
    public static final int ERROR_CODE_KEY_NOT_SET = 505;
    public static final int ERROR_CODE_NO_ADS_TO_RELOAD = 519;
    public static final int ERROR_CODE_NO_ADS_TO_SHOW = 509;
    public static final int ERROR_CODE_NO_CONFIGURATION_AVAILABLE = 501;
    public static final int ERROR_CODE_USING_CACHED_CONFIGURATION = 502;
    public static final int ERROR_NON_EXISTENT_INSTANCE = 527;
    public static final int ERROR_NO_INTERNET_CONNECTION = 520;
    public static final int ERROR_REACHED_CAP_LIMIT_PER_PLACEMENT = 524;
    private int mErrorCode;
    private String mErrorMsg;

    public IronSourceError(int key, String msg) {
        this.mErrorCode = key;
        this.mErrorMsg = msg == null ? "" : msg;
    }

    public int getErrorCode() {
        return this.mErrorCode;
    }

    public String getErrorMessage() {
        return this.mErrorMsg;
    }

    public String toString() {
        return "errorCode:" + this.mErrorCode + ", errorMessage:" + this.mErrorMsg;
    }
}
