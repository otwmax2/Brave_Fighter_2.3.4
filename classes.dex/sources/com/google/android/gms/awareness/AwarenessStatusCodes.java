package com.google.android.gms.awareness;

import com.google.android.gms.common.api.CommonStatusCodes;

/* JADX INFO: loaded from: classes.dex */
public class AwarenessStatusCodes extends CommonStatusCodes {
    public static final int ACL_ACCESS_DENIED = 7503;
    public static final int API_NOT_AVAILABLE = 7512;
    public static final int BAD_ACCOUNT = 7504;
    public static final int BLUETOOTH_OFF = 7506;
    public static final int FENCE_NOT_AVAILABLE = 7514;
    public static final int INCONSISTENT_ACCOUNT = 7510;
    public static final int INCONSISTENT_MODULE_ID = 7511;
    public static final int INCONSISTENT_UID = 7513;
    public static final int INTERNAL_API_CLIENT_CONNECTION_FAILED = 7507;
    public static final int MAX_LIMIT_OF_FENCE_REGISTRATIONS_EXCEEDED = 7515;

    private AwarenessStatusCodes() {
    }

    public static String getStatusCodeString(int i) {
        switch (i) {
            case -7501:
                return "SUCCESS_WROTE_INJECTED";
            case -7500:
                return "SUCCESS_INJECTED_ONLY";
            case 7500:
                return "MISSING_MODULE_ID";
            case 7501:
                return "EMPTY_CONTEXT_DATA_FILTER";
            case 7502:
                return "EMPTY_TRANSITION_FILTER";
            case ACL_ACCESS_DENIED /* 7503 */:
                return "ACL_ACCESS_DENIED";
            case BAD_ACCOUNT /* 7504 */:
                return "BAD_ACCOUNT";
            case 7505:
                return "WRITE_FAILED";
            case BLUETOOTH_OFF /* 7506 */:
                return "BLUETOOTH_OFF";
            case INTERNAL_API_CLIENT_CONNECTION_FAILED /* 7507 */:
                return "INTERNAL_API_CLIENT_CONNECTION_FAILED";
            case 7508:
                return "PLACES_API_CALL_FAILED";
            case 7509:
                return "UNRESOLVED_PLACE_ALIAS";
            case INCONSISTENT_ACCOUNT /* 7510 */:
                return "INCONSISTENT_ACCOUNT";
            case INCONSISTENT_MODULE_ID /* 7511 */:
                return "INCONSISTENT_MODULE_ID";
            case API_NOT_AVAILABLE /* 7512 */:
                return "API_NOT_AVAILABLE";
            case INCONSISTENT_UID /* 7513 */:
                return "INCONSISTENT_UID";
            case FENCE_NOT_AVAILABLE /* 7514 */:
                return "FENCE_NOT_AVAILABLE";
            case MAX_LIMIT_OF_FENCE_REGISTRATIONS_EXCEEDED /* 7515 */:
                return "MAX_LIMIT_OF_FENCE_REGISTRATIONS_EXCEEDED";
            default:
                return CommonStatusCodes.getStatusCodeString(i);
        }
    }
}
