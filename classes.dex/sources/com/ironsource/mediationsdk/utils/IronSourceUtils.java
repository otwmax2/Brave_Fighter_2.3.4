package com.ironsource.mediationsdk.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import android.util.Base64;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.ironsource.environment.ConnectivityService;
import com.ironsource.mediationsdk.AbstractSmash;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.logger.ThreadExceptionHandler;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.StringTokenizer;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceUtils {
    private static final String ADAPTER_VERSION_KEY = "providerAdapterVersion";
    private static final String DEFAULT_IS_EVENTS_FORMATTER_TYPE = "default_is_events_formatter_type";
    private static final String DEFAULT_IS_EVENTS_URL = "default_is_events_url";
    private static final String DEFAULT_IS_OPT_OUT_EVENTS = "default_is_opt_out_events";
    private static final String DEFAULT_RV_EVENTS_FORMATTER_TYPE = "default_rv_events_formatter_type";
    private static final String DEFAULT_RV_EVENTS_URL = "default_rv_events_url";
    private static final String DEFAULT_RV_OPT_OUT_EVENTS = "default_rv_opt_out_events";
    private static final String GENERAL_PROPERTIES = "general_properties";
    public static final String KEY = "C38FB23A402222A0C17D34A92F971D1F";
    private static final String LAST_RESPONSE = "last_response";
    private static final String NETWORK_INSTANCE_KEY = "networkInstance";
    private static final String PROVIDER_KEY = "provider";
    private static final String PROVIDER_PRIORITY = "providerPriority";
    private static final String SDK_VERSION = "6.7.9.1";
    private static final String SDK_VERSION_KEY = "providerSDKVersion";
    private static final String SHARED_PREFERENCES_NAME = "Mediation_Shared_Preferences";
    private static final String SUB_PROVIDER_ID_KEY = "spId";
    private static int serr = 1;
    private static String mAbt = "";

    private static void setSerr(int value) {
        serr = value;
    }

    public static int getSerr() {
        return serr;
    }

    static void setABT(String abt) {
        mAbt = abt;
    }

    public static String getAbt() {
        return mAbt;
    }

    public static String getMD5(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] messageDigest = md.digest(input.getBytes());
            BigInteger number = new BigInteger(1, messageDigest);
            String hashtext = number.toString(16);
            while (hashtext.length() < 32) {
                hashtext = AppEventsConstants.EVENT_PARAM_VALUE_NO + hashtext;
            }
            return hashtext;
        } catch (Throwable e) {
            if (input == null) {
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getMD5(input:null)", e);
            } else {
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getMD5(input:" + input + ")", e);
            }
            return "";
        }
    }

    private static String getSHA256(String input) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-256");
            byte[] digest = md.digest(input.getBytes());
            BigInteger number = new BigInteger(1, digest);
            return String.format("%064x", number);
        } catch (NoSuchAlgorithmException e) {
            if (input == null) {
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getSHA256(input:null)", e);
            } else {
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getSHA256(input:" + input + ")", e);
            }
            return "";
        }
    }

    public static String getTransId(String strToTransId) {
        return getSHA256(strToTransId);
    }

    public static int getCurrentTimestamp() {
        return (int) (System.currentTimeMillis() / 1000);
    }

    public static String getConnectionType(Context c) {
        ConnectivityManager cm;
        NetworkInfo info;
        if (c != null && (cm = (ConnectivityManager) c.getSystemService("connectivity")) != null && (info = cm.getActiveNetworkInfo()) != null && info.isConnected() && !info.getTypeName().equalsIgnoreCase("MOBILE") && info.getTypeName().equalsIgnoreCase("WIFI")) {
            return ConnectivityService.NETWORK_TYPE_WIFI;
        }
        return "cellular";
    }

    public static String getSDKVersion() {
        return SDK_VERSION;
    }

    public static void createAndStartWorker(Runnable runnable, String threadName) {
        Thread worker = new Thread(runnable, threadName);
        worker.setUncaughtExceptionHandler(new ThreadExceptionHandler());
        worker.start();
    }

    public static String getBase64Auth(String loginUsername, String loginPass) {
        String source = loginUsername + ":" + loginPass;
        return "Basic " + Base64.encodeToString(source.getBytes(), 10);
    }

    private static String getDefaultEventsUrlByEventType(String eventType) {
        if (IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(eventType)) {
            return DEFAULT_IS_EVENTS_URL;
        }
        if (IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(eventType)) {
            return DEFAULT_RV_EVENTS_URL;
        }
        return "";
    }

    private static String getDefaultOptOutEventsByEventType(String eventType) {
        if (IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(eventType)) {
            return DEFAULT_IS_OPT_OUT_EVENTS;
        }
        if (IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(eventType)) {
            return DEFAULT_RV_OPT_OUT_EVENTS;
        }
        return "";
    }

    private static String getDefaultFormatterTypeByEventType(String eventType) {
        if (IronSourceConstants.INTERSTITIAL_EVENT_TYPE.equals(eventType)) {
            return DEFAULT_IS_EVENTS_FORMATTER_TYPE;
        }
        if (IronSourceConstants.REWARDED_VIDEO_EVENT_TYPE.equals(eventType)) {
            return DEFAULT_RV_EVENTS_FORMATTER_TYPE;
        }
        return "";
    }

    public static synchronized void saveDefaultEventsURL(Context context, String eventType, String eventsUrl) {
        try {
            SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
            SharedPreferences.Editor editor = preferences.edit();
            editor.putString(getDefaultEventsUrlByEventType(eventType), eventsUrl);
            editor.commit();
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultEventsURL(eventType: " + eventType + ", eventsUrl:" + eventsUrl + ")", e);
        }
    }

    public static synchronized void saveDefaultOptOutEvents(Context context, String eventType, int[] optOutEvents) {
        try {
            SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
            SharedPreferences.Editor editor = preferences.edit();
            String optOutEventsString = null;
            if (optOutEvents != null) {
                StringBuilder str = new StringBuilder();
                for (int i : optOutEvents) {
                    str.append(i).append(",");
                }
                optOutEventsString = str.toString();
            }
            editor.putString(getDefaultOptOutEventsByEventType(eventType), optOutEventsString);
            editor.commit();
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultOptOutEvents(eventType: " + eventType + ", optOutEvents:" + optOutEvents + ")", e);
        }
    }

    public static synchronized void saveDefaultEventsFormatterType(Context context, String eventType, String formatterType) {
        try {
            SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
            SharedPreferences.Editor editor = preferences.edit();
            editor.putString(getDefaultFormatterTypeByEventType(eventType), formatterType);
            editor.commit();
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:saveDefaultEventsFormatterType(eventType: " + eventType + ", formatterType:" + formatterType + ")", e);
        }
    }

    public static synchronized String getDefaultEventsFormatterType(Context context, String eventType, String defaultFormatterType) {
        String formatterType;
        formatterType = defaultFormatterType;
        try {
            SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
            formatterType = preferences.getString(getDefaultFormatterTypeByEventType(eventType), defaultFormatterType);
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultEventsFormatterType(eventType: " + eventType + ", defaultFormatterType:" + defaultFormatterType + ")", e);
        }
        return formatterType;
    }

    public static synchronized String getDefaultEventsURL(Context context, String eventType, String defaultEventsURL) {
        String serverUrl;
        serverUrl = defaultEventsURL;
        try {
            SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
            serverUrl = preferences.getString(getDefaultEventsUrlByEventType(eventType), defaultEventsURL);
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultEventsURL(eventType: " + eventType + ", defaultEventsURL:" + defaultEventsURL + ")", e);
        }
        return serverUrl;
    }

    public static synchronized int[] getDefaultOptOutEvents(Context context, String eventType) {
        int[] optOutEvents;
        optOutEvents = null;
        try {
            SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
            String optOutEventsString = preferences.getString(getDefaultOptOutEventsByEventType(eventType), null);
            if (!TextUtils.isEmpty(optOutEventsString)) {
                StringTokenizer stringTokenizer = new StringTokenizer(optOutEventsString, ",");
                ArrayList<Integer> result = new ArrayList<>();
                while (stringTokenizer.hasMoreTokens()) {
                    result.add(Integer.valueOf(Integer.parseInt(stringTokenizer.nextToken())));
                }
                optOutEvents = new int[result.size()];
                for (int i = 0; i < optOutEvents.length; i++) {
                    optOutEvents[i] = result.get(i).intValue();
                }
            }
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getDefaultOptOutEvents(eventType: " + eventType + ")", e);
        }
        return optOutEvents;
    }

    public static synchronized void saveLastResponse(Context context, String response) {
        SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString(LAST_RESPONSE, response);
        editor.apply();
    }

    public static String getLastResponse(Context context) {
        SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        return preferences.getString(LAST_RESPONSE, "");
    }

    static synchronized void saveGeneralProperties(Context context, JSONObject properties) {
        if (context != null && properties != null) {
            SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
            SharedPreferences.Editor editor = preferences.edit();
            editor.putString(GENERAL_PROPERTIES, properties.toString());
            editor.apply();
        }
    }

    public static synchronized JSONObject getGeneralProperties(Context context) {
        JSONObject result;
        JSONObject result2 = new JSONObject();
        if (context == null) {
            result = result2;
        } else {
            SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
            String generalPropertiesString = preferences.getString(GENERAL_PROPERTIES, result2.toString());
            try {
                result2 = new JSONObject(generalPropertiesString);
            } catch (JSONException e) {
            }
            result = result2;
        }
        return result;
    }

    public static boolean isNetworkConnected(Context context) {
        ConnectivityManager cm = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo activeNetwork = cm.getActiveNetworkInfo();
        if (activeNetwork == null) {
            return false;
        }
        return activeNetwork.isConnected();
    }

    public static long getTimeStamp() {
        return System.currentTimeMillis();
    }

    public static JSONObject getProviderAdditionalData(AbstractSmash smash, boolean isDemandOnlyMode) {
        JSONObject data = new JSONObject();
        if (isDemandOnlyMode) {
            try {
                data.put(NETWORK_INSTANCE_KEY, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            } catch (Exception e) {
                IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "IronSourceUtils:getProviderAdditionalData(adapter: " + smash.getName() + ")", e);
            }
        }
        data.put(SUB_PROVIDER_ID_KEY, smash.getSubProviderId());
        data.put("provider", smash.getName());
        data.put(SDK_VERSION_KEY, smash.getAdapter().getCoreSDKVersion());
        data.put(ADAPTER_VERSION_KEY, smash.getAdapter().getVersion());
        data.put(PROVIDER_PRIORITY, smash.getProviderPriority());
        return data;
    }

    public static JSONObject getMediationAdditionalData(boolean isDemandOnlyMode) {
        JSONObject data = new JSONObject();
        if (isDemandOnlyMode) {
            try {
                data.put(NETWORK_INSTANCE_KEY, ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
            } catch (JSONException e) {
            }
        }
        data.put("provider", "Mediation");
        return data;
    }

    static void saveStringToSharedPrefs(Context context, String key, String value) {
        SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putString(key, value);
        editor.apply();
    }

    static String getStringFromSharedPrefs(Context context, String key, String defaultValue) {
        SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        return preferences.getString(key, defaultValue);
    }

    static void saveBooleanToSharedPrefs(Context context, String key, boolean value) {
        SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putBoolean(key, value);
        editor.apply();
    }

    static boolean getBooleanFromSharedPrefs(Context context, String key, boolean defaultValue) {
        SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        return preferences.getBoolean(key, defaultValue);
    }

    static void saveIntToSharedPrefs(Context context, String key, int value) {
        SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putInt(key, value);
        editor.apply();
    }

    static int getIntFromSharedPrefs(Context context, String key, int defaultValue) {
        SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        return preferences.getInt(key, defaultValue);
    }

    static void saveLongToSharedPrefs(Context context, String key, long value) {
        SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        SharedPreferences.Editor editor = preferences.edit();
        editor.putLong(key, value);
        editor.apply();
    }

    static long getLongFromSharedPrefs(Context context, String key, long defaultValue) {
        SharedPreferences preferences = context.getSharedPreferences(SHARED_PREFERENCES_NAME, 0);
        return preferences.getLong(key, defaultValue);
    }

    public static JSONObject mergeJsons(JSONObject mainJson, JSONObject secondaryJson) {
        try {
            if (mainJson == null && secondaryJson == null) {
                return new JSONObject();
            }
            if (mainJson == null) {
                return secondaryJson;
            }
            if (secondaryJson != null) {
                Iterator<String> itKeys = secondaryJson.keys();
                while (itKeys.hasNext()) {
                    String key = itKeys.next();
                    if (!mainJson.has(key)) {
                        mainJson.put(key, secondaryJson.get(key));
                    }
                }
                return mainJson;
            }
            return mainJson;
        } catch (JSONException e) {
            e.printStackTrace();
            return mainJson;
        }
    }
}
