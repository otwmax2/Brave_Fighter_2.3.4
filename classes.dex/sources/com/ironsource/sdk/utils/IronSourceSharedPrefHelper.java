package com.ironsource.sdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.data.SSABCParameters;
import com.ironsource.sdk.data.SSAEnums;
import com.ironsource.sdk.data.SSAObj;
import com.ironsource.sdk.data.SSASession;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceSharedPrefHelper {
    private static final String APPLICATION_KEY_IS = "application_key_is";
    private static final String APPLICATION_KEY_OW = "application_key_ow";
    private static final String APPLICATION_KEY_RV = "application_key_rv";
    private static final String BACK_BUTTON_STATE = "back_button_state";
    private static final String IS_REPORTED = "is_reported";
    private static final String REGISTER_SESSIONS = "register_sessions";
    private static final String SEARCH_KEYS = "search_keys";
    private static final String SESSIONS = "sessions";
    private static final String SSA_RV_PARAMETER_CONNECTION_RETRIES = "ssa_rv_parameter_connection_retries";
    private static final String SSA_SDK_DOWNLOAD_URL = "ssa_sdk_download_url";
    private static final String SSA_SDK_LOAD_URL = "ssa_sdk_load_url";
    private static final String SUPERSONIC_SHARED_PREF = "supersonic_shared_preferen";
    private static final String UNIQUE_ID_IS = "unique_id_is";
    private static final String UNIQUE_ID_OW = "unique_id_ow";
    private static final String UNIQUE_ID_RV = "unique_id_rv";
    private static final String USER_ID_IS = "user_id_is";
    private static final String USER_ID_OW = "user_id_ow";
    private static final String USER_ID_RV = "user_id_rv";
    private static final String VERSION = "version";
    private static IronSourceSharedPrefHelper mInstance;
    private SharedPreferences mSharedPreferences;

    private IronSourceSharedPrefHelper(Context context) {
        this.mSharedPreferences = context.getSharedPreferences(SUPERSONIC_SHARED_PREF, 0);
    }

    public static synchronized IronSourceSharedPrefHelper getSupersonicPrefHelper(Context context) {
        if (mInstance == null) {
            mInstance = new IronSourceSharedPrefHelper(context);
        }
        return mInstance;
    }

    public static synchronized IronSourceSharedPrefHelper getSupersonicPrefHelper() {
        return mInstance;
    }

    public String getConnectionRetries() {
        return this.mSharedPreferences.getString(SSA_RV_PARAMETER_CONNECTION_RETRIES, "3");
    }

    public void setSSABCParameters(SSABCParameters object) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        editor.putString(SSA_RV_PARAMETER_CONNECTION_RETRIES, object.getConnectionRetries());
        editor.commit();
    }

    public void setBackButtonState(String value) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        editor.putString(BACK_BUTTON_STATE, value);
        editor.commit();
    }

    public SSAEnums.BackButtonState getBackButtonState() {
        String stateStr = this.mSharedPreferences.getString(BACK_BUTTON_STATE, "2");
        int state = Integer.parseInt(stateStr);
        if (state == 0) {
            return SSAEnums.BackButtonState.None;
        }
        if (state == 1) {
            return SSAEnums.BackButtonState.Device;
        }
        if (state == 2) {
            return SSAEnums.BackButtonState.Controller;
        }
        return SSAEnums.BackButtonState.Controller;
    }

    public void setSearchKeys(String value) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        editor.putString(SEARCH_KEYS, value);
        editor.commit();
    }

    public List<String> getSearchKeys() {
        String value = this.mSharedPreferences.getString(SEARCH_KEYS, null);
        ArrayList<String> keys = new ArrayList<>();
        if (value != null) {
            SSAObj ssaObj = new SSAObj(value);
            if (ssaObj.containsKey(Constants.ParametersKeys.SEARCH_KEYS)) {
                JSONArray jsonArr = (JSONArray) ssaObj.get(Constants.ParametersKeys.SEARCH_KEYS);
                try {
                    keys.addAll(ssaObj.toList(jsonArr));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }
        return keys;
    }

    public JSONArray getSessions() {
        JSONArray jsArr;
        String value = this.mSharedPreferences.getString(SESSIONS, null);
        if (value == null) {
            return new JSONArray();
        }
        try {
            jsArr = new JSONArray(value);
        } catch (JSONException e) {
            jsArr = new JSONArray();
        }
        return jsArr;
    }

    public void deleteSessions() {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        editor.putString(SESSIONS, null);
        editor.commit();
    }

    public void addSession(SSASession session) {
        if (getShouldRegisterSessions()) {
            JSONObject jsObj = new JSONObject();
            try {
                jsObj.put("sessionStartTime", session.getSessionStartTime());
                jsObj.put("sessionEndTime", session.getSessionEndTime());
                jsObj.put("sessionType", session.getSessionType());
                jsObj.put("connectivity", session.getConnectivity());
            } catch (JSONException e) {
            }
            JSONArray jsArr = getSessions();
            if (jsArr == null) {
                jsArr = new JSONArray();
            }
            jsArr.put(jsObj);
            SharedPreferences.Editor editor = this.mSharedPreferences.edit();
            editor.putString(SESSIONS, jsArr.toString());
            editor.commit();
        }
    }

    private boolean getShouldRegisterSessions() {
        return this.mSharedPreferences.getBoolean(REGISTER_SESSIONS, true);
    }

    public void setShouldRegisterSessions(boolean value) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        editor.putBoolean(REGISTER_SESSIONS, value);
        editor.commit();
    }

    public boolean setUserData(String key, String value) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        editor.putString(key, value);
        return editor.commit();
    }

    public String getUserData(String key) {
        String value = this.mSharedPreferences.getString(key, null);
        return value != null ? value : "{}";
    }

    public String getApplicationKey(SSAEnums.ProductType type) {
        switch (type) {
            case RewardedVideo:
                String applicationKey = this.mSharedPreferences.getString(APPLICATION_KEY_RV, null);
                return applicationKey;
            case OfferWall:
                String applicationKey2 = this.mSharedPreferences.getString(APPLICATION_KEY_OW, null);
                return applicationKey2;
            case Interstitial:
                String applicationKey3 = this.mSharedPreferences.getString(APPLICATION_KEY_IS, null);
                return applicationKey3;
            default:
                return "EMPTY_APPLICATION_KEY";
        }
    }

    public void setApplicationKey(String value, SSAEnums.ProductType type) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        switch (type) {
            case RewardedVideo:
                editor.putString(APPLICATION_KEY_RV, value);
                break;
            case OfferWall:
                editor.putString(APPLICATION_KEY_OW, value);
                break;
            case Interstitial:
                editor.putString(APPLICATION_KEY_IS, value);
                break;
        }
        editor.commit();
    }

    public String getUniqueId(String type) {
        if (type.equalsIgnoreCase(SSAEnums.ProductType.RewardedVideo.toString())) {
            String userUniqueId = this.mSharedPreferences.getString(UNIQUE_ID_RV, null);
            return userUniqueId;
        }
        if (type.equalsIgnoreCase(SSAEnums.ProductType.OfferWall.toString())) {
            String userUniqueId2 = this.mSharedPreferences.getString(UNIQUE_ID_OW, null);
            return userUniqueId2;
        }
        if (!type.equalsIgnoreCase(SSAEnums.ProductType.Interstitial.toString())) {
            return "EMPTY_UNIQUE_ID";
        }
        String userUniqueId3 = this.mSharedPreferences.getString(UNIQUE_ID_IS, null);
        return userUniqueId3;
    }

    public boolean setUniqueId(String value, String type) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        if (type.equalsIgnoreCase(SSAEnums.ProductType.RewardedVideo.toString())) {
            editor.putString(UNIQUE_ID_RV, value);
        } else if (type.equalsIgnoreCase(SSAEnums.ProductType.OfferWall.toString())) {
            editor.putString(UNIQUE_ID_OW, value);
        } else if (type.equalsIgnoreCase(SSAEnums.ProductType.Interstitial.toString())) {
            editor.putString(UNIQUE_ID_IS, value);
        }
        return editor.commit();
    }

    public String getCurrentSDKVersion() {
        return this.mSharedPreferences.getString("version", "UN_VERSIONED");
    }

    public void setCurrentSDKVersion(String sdkVersion) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        editor.putString("version", sdkVersion);
        editor.commit();
    }

    public String getSDKDownloadUrl() {
        return this.mSharedPreferences.getString(SSA_SDK_DOWNLOAD_URL, null);
    }

    public String getCampaignLastUpdate(String campaign) {
        return this.mSharedPreferences.getString(campaign, null);
    }

    public void setCampaignLastUpdate(String campaign, String lastUpdate) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        editor.putString(campaign, lastUpdate);
        editor.commit();
    }

    public void setUserID(String value, SSAEnums.ProductType type) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        switch (type) {
            case RewardedVideo:
                editor.putString(USER_ID_RV, value);
                break;
            case OfferWall:
                editor.putString(USER_ID_OW, value);
                break;
            case Interstitial:
                editor.putString(USER_ID_IS, value);
                break;
        }
        editor.commit();
    }

    public String getUniqueId(SSAEnums.ProductType type) {
        switch (type) {
            case RewardedVideo:
                String userUniqueId = this.mSharedPreferences.getString(UNIQUE_ID_RV, null);
                return userUniqueId;
            case OfferWall:
                String userUniqueId2 = this.mSharedPreferences.getString(UNIQUE_ID_OW, null);
                return userUniqueId2;
            case Interstitial:
                String userUniqueId3 = this.mSharedPreferences.getString(UNIQUE_ID_IS, null);
                return userUniqueId3;
            default:
                return "EMPTY_UNIQUE_ID";
        }
    }

    public boolean setLatestCompeltionsTime(String timestamp, String applicationKey, String userId) {
        String value = this.mSharedPreferences.getString("ssaUserData", null);
        if (TextUtils.isEmpty(value)) {
            return false;
        }
        try {
            JSONObject ssaUserDataJson = new JSONObject(value);
            if (ssaUserDataJson.isNull(applicationKey)) {
                return false;
            }
            JSONObject applicationKeyJson = ssaUserDataJson.getJSONObject(applicationKey);
            if (applicationKeyJson.isNull(userId)) {
                return false;
            }
            JSONObject userIdJson = applicationKeyJson.getJSONObject(userId);
            userIdJson.put(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP, timestamp);
            SharedPreferences.Editor editor = this.mSharedPreferences.edit();
            editor.putString("ssaUserData", ssaUserDataJson.toString());
            return editor.commit();
        } catch (JSONException e) {
            new IronSourceAsyncHttpRequestTask().execute(Constants.NATIVE_EXCEPTION_BASE_URL + e.getStackTrace()[0].getMethodName());
            return false;
        }
    }

    public void setReportAppStarted(boolean value) {
        SharedPreferences.Editor editor = this.mSharedPreferences.edit();
        editor.putBoolean(IS_REPORTED, value);
        editor.apply();
    }

    public boolean getReportAppStarted() {
        return this.mSharedPreferences.getBoolean(IS_REPORTED, false);
    }
}
