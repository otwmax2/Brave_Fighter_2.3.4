package com.ironsource.mediationsdk.server;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import com.ironsource.environment.ApplicationContext;
import com.ironsource.environment.ConnectivityService;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.utils.IronSourceAES;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.ironsource.sdk.precache.DownloadManager;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Vector;

/* JADX INFO: loaded from: classes.dex */
public class ServerURL {
    private static final String AMPERSAND = "&";
    private static final String ANDROID = "android";
    private static final String APPLICATION_KEY = "applicationKey";
    private static final String APPLICATION_USER_ID = "applicationUserId";
    private static final String APPLICATION_VERSION = "appVer";
    private static String BASE_URL_PREFIX = "https://init.supersonicads.com/sdk/v";
    private static String BASE_URL_SUFFIX = "?request=";
    private static final String CONNECTION_TYPE = "connType";
    private static final String DEVICE_MAKE = "devMake";
    private static final String DEVICE_MODEL = "devModel";
    private static final String EQUAL = "=";
    private static final String GAID = "advId";
    private static final String IMPRESSION = "impression";
    private static final String MEDIATION_TYPE = "mt";
    private static final String OS_VERSION = "osVer";
    private static final String PLACEMENT = "placementId";
    private static final String PLATFORM_KEY = "platform";
    private static final String PLUGIN_FW_VERSION = "plugin_fw_v";
    private static final String PLUGIN_TYPE = "pluginType";
    private static final String PLUGIN_VERSION = "pluginVersion";
    private static final String SDK_VERSION = "sdkVersion";
    private static final String SERR = "serr";

    public static String getCPVProvidersURL(Context context, String applicationKey, String applicationUserId, String gaid, String mediationType, Vector<Pair<String, String>> segmentParamVector) throws UnsupportedEncodingException {
        Vector<Pair<String, String>> array = new Vector<>();
        array.add(new Pair<>(PLATFORM_KEY, ANDROID));
        array.add(new Pair<>("applicationKey", applicationKey));
        array.add(new Pair<>("applicationUserId", applicationUserId));
        array.add(new Pair<>("sdkVersion", IronSourceUtils.getSDKVersion()));
        if (IronSourceUtils.getSerr() == 0) {
            array.add(new Pair<>(SERR, String.valueOf(IronSourceUtils.getSerr())));
        }
        if (!TextUtils.isEmpty(ConfigFile.getConfigFile().getPluginType())) {
            array.add(new Pair<>(PLUGIN_TYPE, ConfigFile.getConfigFile().getPluginType()));
        }
        if (!TextUtils.isEmpty(ConfigFile.getConfigFile().getPluginVersion())) {
            array.add(new Pair<>(PLUGIN_VERSION, ConfigFile.getConfigFile().getPluginVersion()));
        }
        if (!TextUtils.isEmpty(ConfigFile.getConfigFile().getPluginFrameworkVersion())) {
            array.add(new Pair<>(PLUGIN_FW_VERSION, ConfigFile.getConfigFile().getPluginFrameworkVersion()));
        }
        if (!TextUtils.isEmpty(gaid)) {
            array.add(new Pair<>(GAID, gaid));
        }
        if (!TextUtils.isEmpty(mediationType)) {
            array.add(new Pair<>(MEDIATION_TYPE, mediationType));
        }
        String appVersion = ApplicationContext.getPublisherApplicationVersion(context, context.getPackageName());
        if (!TextUtils.isEmpty(appVersion)) {
            array.add(new Pair<>(APPLICATION_VERSION, appVersion));
        }
        int osVersion = Build.VERSION.SDK_INT;
        array.add(new Pair<>(OS_VERSION, osVersion + ""));
        String make = Build.MANUFACTURER;
        array.add(new Pair<>(DEVICE_MAKE, make));
        String model = Build.MODEL;
        array.add(new Pair<>(DEVICE_MODEL, model));
        String connection = IronSourceUtils.getConnectionType(context);
        if (!TextUtils.isEmpty(connection)) {
            array.add(new Pair<>(CONNECTION_TYPE, connection));
        }
        if (segmentParamVector != null) {
            array.addAll(segmentParamVector);
        }
        String params = createURLParams(array);
        String encryptedParams = IronSourceAES.encode(IronSourceUtils.KEY, params);
        String encodedEncryptedParams = URLEncoder.encode(encryptedParams, DownloadManager.UTF8_CHARSET);
        return getBaseUrl(IronSourceUtils.getSDKVersion()) + encodedEncryptedParams;
    }

    public static String getRequestURL(String requestUrl, boolean hit, int placementId) throws UnsupportedEncodingException {
        Vector<Pair<String, String>> array = new Vector<>();
        array.add(new Pair<>(IMPRESSION, Boolean.toString(hit)));
        array.add(new Pair<>("placementId", Integer.toString(placementId)));
        String params = createURLParams(array);
        return requestUrl + "&" + params;
    }

    private static String createURLParams(Vector<Pair<String, String>> array) throws UnsupportedEncodingException {
        String str = "";
        for (Pair<String, String> pair : array) {
            if (str.length() > 0) {
                str = str + "&";
            }
            str = str + ((String) pair.first) + "=" + URLEncoder.encode((String) pair.second, DownloadManager.UTF8_CHARSET);
        }
        return str;
    }

    private static String getBaseUrl(String sdkVersion) {
        return BASE_URL_PREFIX + sdkVersion + BASE_URL_SUFFIX;
    }

    private static String getConnectionTypeForInit(Context c) {
        ConnectivityManager cm;
        NetworkInfo info;
        if (c != null && (cm = (ConnectivityManager) c.getSystemService("connectivity")) != null && (info = cm.getActiveNetworkInfo()) != null && info.isConnected() && info.getTypeName().equalsIgnoreCase("WIFI")) {
            return ConnectivityService.NETWORK_TYPE_WIFI;
        }
        return "cellular";
    }
}
