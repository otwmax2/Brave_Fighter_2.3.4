package com.google.android.gms.internal;

import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;

/* JADX INFO: loaded from: classes.dex */
public enum zznk {
    CLIENT_LOGIN_DISABLED("ClientLoginDisabled"),
    DEVICE_MANAGEMENT_REQUIRED("DeviceManagementRequiredOrSyncDisabled"),
    SOCKET_TIMEOUT("SocketTimeout"),
    SUCCESS("Ok"),
    UNKNOWN_ERROR("UNKNOWN_ERR"),
    NETWORK_ERROR(NativeProtocol.ERROR_NETWORK_ERROR),
    SERVICE_UNAVAILABLE("ServiceUnavailable"),
    INTNERNAL_ERROR("InternalError"),
    BAD_AUTHENTICATION("BadAuthentication"),
    EMPTY_CONSUMER_PKG_OR_SIG("EmptyConsumerPackageOrSig"),
    NEEDS_2F("InvalidSecondFactor"),
    NEEDS_POST_SIGN_IN_FLOW("PostSignInFlowRequired"),
    NEEDS_BROWSER("NeedsBrowser"),
    UNKNOWN(AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN),
    NOT_VERIFIED("NotVerified"),
    TERMS_NOT_AGREED("TermsNotAgreed"),
    ACCOUNT_DISABLED("AccountDisabled"),
    CAPTCHA("CaptchaRequired"),
    ACCOUNT_DELETED("AccountDeleted"),
    SERVICE_DISABLED(NativeProtocol.ERROR_SERVICE_DISABLED),
    NEED_PERMISSION("NeedPermission"),
    INVALID_SCOPE("INVALID_SCOPE"),
    USER_CANCEL("UserCancel"),
    PERMISSION_DENIED(NativeProtocol.ERROR_PERMISSION_DENIED),
    INVALID_AUDIENCE("INVALID_AUDIENCE"),
    UNREGISTERED_ON_API_CONSOLE("UNREGISTERED_ON_API_CONSOLE"),
    THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED("ThirdPartyDeviceManagementRequired"),
    DM_INTERNAL_ERROR("DeviceManagementInternalError"),
    DM_SYNC_DISABLED("DeviceManagementSyncDisabled"),
    DM_ADMIN_BLOCKED("DeviceManagementAdminBlocked"),
    DM_ADMIN_PENDING_APPROVAL("DeviceManagementAdminPendingApproval"),
    DM_STALE_SYNC_REQUIRED("DeviceManagementStaleSyncRequired"),
    DM_DEACTIVATED("DeviceManagementDeactivated"),
    DM_REQUIRED("DeviceManagementRequired"),
    ALREADY_HAS_GMAIL("ALREADY_HAS_GMAIL"),
    BAD_PASSWORD("WeakPassword"),
    BAD_REQUEST("BadRequest"),
    BAD_USERNAME("BadUsername"),
    DELETED_GMAIL("DeletedGmail"),
    EXISTING_USERNAME("ExistingUsername"),
    LOGIN_FAIL("LoginFail"),
    NOT_LOGGED_IN("NotLoggedIn"),
    NO_GMAIL("NoGmail"),
    REQUEST_DENIED("RequestDenied"),
    SERVER_ERROR("ServerError"),
    USERNAME_UNAVAILABLE("UsernameUnavailable"),
    GPLUS_OTHER("GPlusOther"),
    GPLUS_NICKNAME("GPlusNickname"),
    GPLUS_INVALID_CHAR("GPlusInvalidChar"),
    GPLUS_INTERSTITIAL("GPlusInterstitial"),
    GPLUS_PROFILE_ERROR("ProfileUpgradeError");

    private final String fx;

    zznk(String str) {
        this.fx = str;
    }

    public static boolean zza(zznk zznkVar) {
        return BAD_AUTHENTICATION.equals(zznkVar) || CAPTCHA.equals(zznkVar) || NEED_PERMISSION.equals(zznkVar) || NEEDS_BROWSER.equals(zznkVar) || USER_CANCEL.equals(zznkVar) || DEVICE_MANAGEMENT_REQUIRED.equals(zznkVar) || DM_INTERNAL_ERROR.equals(zznkVar) || DM_SYNC_DISABLED.equals(zznkVar) || DM_ADMIN_BLOCKED.equals(zznkVar) || DM_ADMIN_PENDING_APPROVAL.equals(zznkVar) || DM_STALE_SYNC_REQUIRED.equals(zznkVar) || DM_DEACTIVATED.equals(zznkVar) || DM_REQUIRED.equals(zznkVar) || THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.equals(zznkVar);
    }

    public static boolean zzb(zznk zznkVar) {
        return NETWORK_ERROR.equals(zznkVar) || SERVICE_UNAVAILABLE.equals(zznkVar);
    }

    public static final zznk zzfy(String str) {
        zznk zznkVar = null;
        zznk[] zznkVarArrValues = values();
        int length = zznkVarArrValues.length;
        int i = 0;
        while (i < length) {
            zznk zznkVar2 = zznkVarArrValues[i];
            if (!zznkVar2.fx.equals(str)) {
                zznkVar2 = zznkVar;
            }
            i++;
            zznkVar = zznkVar2;
        }
        return zznkVar;
    }
}
