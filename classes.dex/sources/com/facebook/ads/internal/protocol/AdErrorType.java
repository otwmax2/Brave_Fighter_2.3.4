package com.facebook.ads.internal.protocol;

import com.facebook.ads.AdError;
import com.google.android.gms.games.GamesStatusCodes;

/* JADX INFO: loaded from: classes.dex */
public enum AdErrorType {
    UNKNOWN_ERROR(-1, "unknown error", false),
    NETWORK_ERROR(1000, "Network Error", true),
    NO_FILL(1001, "No Fill", true),
    LOAD_TOO_FREQUENTLY(AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE, "Ad was re-loaded too frequently", true),
    DISABLED_APP(1005, "App is disabled from making ad requests", true),
    SERVER_ERROR(2000, "Server Error", true),
    INTERNAL_ERROR(2001, "Internal Error", true),
    START_BEFORE_INIT(2004, "initAd must be called before startAd", true),
    AD_REQUEST_FAILED(1111, "Facebook Ads SDK request for ads failed", false),
    AD_REQUEST_TIMEOUT(1112, "Facebook Ads SDK request for ads timed out", false),
    PARSER_FAILURE(1201, "Failed to parse Facebook Ads SDK delivery response", false),
    UNKNOWN_RESPONSE(1202, "Unknown Facebook Ads SDK delivery response type", false),
    ERROR_MESSAGE(1203, "Facebook Ads SDK delivery response Error message", true),
    NO_AD_PLACEMENT(1302, "Facebook Ads SDK returned no ad placements", false),
    MEDIATION_ERROR(3001, "Mediation Error", true),
    BID_IMPRESSION_MISMATCH(GamesStatusCodes.STATUS_SNAPSHOT_CREATION_FAILED, "Bid payload does not match placement", true),
    BID_PAYLOAD_ERROR(GamesStatusCodes.STATUS_SNAPSHOT_CONTENTS_UNAVAILABLE, "Invalid bid payload", false),
    NO_ADAPTER_ON_LOAD(5001, "Adapter is null onLoad Ad", false),
    NO_ADAPTER_ON_START(5002, "Adapter is null onStart Ad", false);

    private final int a;
    private final String b;
    private final boolean c;

    AdErrorType(int i, String str, boolean z) {
        this.a = i;
        this.b = str;
        this.c = z;
    }

    public static AdErrorType adErrorTypeFromCode(int i) {
        return adErrorTypeFromCode(i, UNKNOWN_ERROR);
    }

    public static AdErrorType adErrorTypeFromCode(int i, AdErrorType adErrorType) {
        for (AdErrorType adErrorType2 : values()) {
            if (adErrorType2.getErrorCode() == i) {
                return adErrorType2;
            }
        }
        return adErrorType;
    }

    public String getDefaultErrorMessage() {
        return this.b;
    }

    public int getErrorCode() {
        return this.a;
    }

    public boolean isPublicError() {
        return this.c;
    }
}
