package com.ironsource.mediationsdk.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.ironsource.environment.ApplicationContext;
import com.ironsource.environment.DeviceStatus;
import com.ironsource.mediationsdk.IronSourceObject;
import com.ironsource.mediationsdk.config.ConfigFile;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.sdk.GeneralProperties;
import com.ironsource.sdk.constants.Constants;
import com.tendcloud.tenddata.game.ao;
import java.io.File;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class GeneralPropertiesWorker implements Runnable {
    private static final int MAX_MINUTES_OFFSET = 840;
    private static final int MINUTES_OFFSET_STEP = 15;
    private static final int MIN_MINUTES_OFFSET = -720;
    public static final String SDK_VERSION = "sdkVersion";
    private Context mContext;
    private final String TAG = getClass().getSimpleName();
    private final String BUNDLE_ID = Constants.RequestParameters.PACKAGE_NAME;
    private final String ADVERTISING_ID = "advertisingId";
    private final String ADVERTISING_ID_IS_LIMIT_TRACKING = Constants.RequestParameters.isLAT;
    private final String APPLICATION_KEY = ServerResponseWrapper.APP_KEY_FIELD;
    private final String DEVICE_OS = "deviceOS";
    private final String ANDROID_OS_VERSION = "osVersion";
    private final String CONNECTION_TYPE = Constants.RequestParameters.CONNECTION_TYPE;
    private final String LANGUAGE = "language";
    private final String DEVICE_OEM = Constants.RequestParameters.DEVICE_OEM;
    private final String DEVICE_MODEL = Constants.RequestParameters.DEVICE_MODEL;
    private final String MOBILE_CARRIER = Constants.RequestParameters.MOBILE_CARRIER;
    private final String EXTERNAL_FREE_MEMORY = "externalFreeMemory";
    private final String INTERNAL_FREE_MEMORY = "internalFreeMemory";
    private final String BATTERY_LEVEL = "battery";
    private final String LOCATION_LAT = "lat";
    private final String LOCATION_LON = "lon";
    private final String GMT_MINUTES_OFFSET = "gmtMinutesOffset";
    private final String PUBLISHER_APP_VERSION = Constants.RequestParameters.APPLICATION_VERSION_NAME;
    private final String KEY_SESSION_ID = "sessionId";
    private final String KEY_PLUGIN_TYPE = "pluginType";
    private final String KEY_PLUGIN_VERSION = "pluginVersion";
    private final String KEY_PLUGIN_FW_VERSION = "plugin_fw_v";
    private final String KEY_IS_ROOT = "jb";
    private final String ADVERTISING_ID_TYPE = "advertisingIdType";
    private final String MEDIATION_TYPE = "mt";

    private GeneralPropertiesWorker() {
    }

    public GeneralPropertiesWorker(Context ctx) {
        this.mContext = ctx.getApplicationContext();
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            Map<String, Object> params = collectInformation();
            GeneralProperties.getProperties().putKeys(params);
            IronSourceUtils.saveGeneralProperties(this.mContext, GeneralProperties.getProperties().toJSON());
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "Thread name = " + getClass().getSimpleName(), e);
        }
    }

    private Map<String, Object> collectInformation() {
        double[] lastKnownLocation;
        Map<String, Object> result = new HashMap<>();
        String strVal = generateUUID();
        if (!TextUtils.isEmpty(strVal)) {
            result.put("sessionId", strVal);
        }
        String strVal2 = getBundleId();
        if (!TextUtils.isEmpty(strVal2)) {
            result.put(Constants.RequestParameters.PACKAGE_NAME, strVal2);
            String publAppVersion = ApplicationContext.getPublisherApplicationVersion(this.mContext, strVal2);
            if (!TextUtils.isEmpty(publAppVersion)) {
                result.put(Constants.RequestParameters.APPLICATION_VERSION_NAME, publAppVersion);
            }
        }
        result.put(ServerResponseWrapper.APP_KEY_FIELD, getApplicationKey());
        String advertisingId = "";
        String advertisingIdType = "";
        boolean isLimitAdTrackingEnabled = false;
        try {
            String[] advertisingIdInfo = DeviceStatus.getAdvertisingIdInfo(this.mContext);
            if (advertisingIdInfo != null && advertisingIdInfo.length == 2) {
                if (!TextUtils.isEmpty(advertisingIdInfo[0])) {
                    advertisingId = advertisingIdInfo[0];
                }
                isLimitAdTrackingEnabled = Boolean.valueOf(advertisingIdInfo[1]).booleanValue();
            }
        } catch (Exception e) {
        }
        if (!TextUtils.isEmpty(advertisingId)) {
            advertisingIdType = IronSourceConstants.TYPE_GAID;
        } else {
            advertisingId = DeviceStatus.getOrGenerateOnceUniqueIdentifier(this.mContext);
            if (!TextUtils.isEmpty(advertisingId)) {
                advertisingIdType = IronSourceConstants.TYPE_UUID;
            }
        }
        if (!TextUtils.isEmpty(advertisingId)) {
            result.put("advertisingId", advertisingId);
            result.put("advertisingIdType", advertisingIdType);
            result.put(Constants.RequestParameters.isLAT, Boolean.valueOf(isLimitAdTrackingEnabled));
        }
        result.put("deviceOS", getDeviceOS());
        if (!TextUtils.isEmpty(getAndroidVersion())) {
            result.put("osVersion", getAndroidVersion());
        }
        String strVal3 = IronSourceUtils.getConnectionType(this.mContext);
        if (!TextUtils.isEmpty(strVal3)) {
            result.put(Constants.RequestParameters.CONNECTION_TYPE, strVal3);
        }
        result.put(SDK_VERSION, getSDKVersion());
        String strVal4 = getLanguage();
        if (!TextUtils.isEmpty(strVal4)) {
            result.put("language", strVal4);
        }
        String strVal5 = getDeviceOEM();
        if (!TextUtils.isEmpty(strVal5)) {
            result.put(Constants.RequestParameters.DEVICE_OEM, strVal5);
        }
        String strVal6 = getDeviceModel();
        if (!TextUtils.isEmpty(strVal6)) {
            result.put(Constants.RequestParameters.DEVICE_MODEL, strVal6);
        }
        String strVal7 = getMobileCarrier();
        if (!TextUtils.isEmpty(strVal7)) {
            result.put(Constants.RequestParameters.MOBILE_CARRIER, strVal7);
        }
        long longVal = getInternalStorageFreeSize();
        result.put("internalFreeMemory", Long.valueOf(longVal));
        long longVal2 = getExternalStorageFreeSize();
        result.put("externalFreeMemory", Long.valueOf(longVal2));
        int intVal = getBatteryLevel();
        result.put("battery", Integer.valueOf(intVal));
        boolean allowLocation = IronSourceUtils.getBooleanFromSharedPrefs(this.mContext, GeneralProperties.ALLOW_LOCATION_SHARED_PREFS_KEY, false);
        if (allowLocation && (lastKnownLocation = getLastKnownLocation()) != null && lastKnownLocation.length == 2) {
            result.put("lat", Double.valueOf(lastKnownLocation[0]));
            result.put("lon", Double.valueOf(lastKnownLocation[1]));
        }
        int gmtMinutesOffset = getGmtMinutesOffset();
        if (validateGmtMinutesOffset(gmtMinutesOffset)) {
            result.put("gmtMinutesOffset", Integer.valueOf(gmtMinutesOffset));
        }
        String strVal8 = getPluginType();
        if (!TextUtils.isEmpty(strVal8)) {
            result.put("pluginType", strVal8);
        }
        String strVal9 = getPluginVersion();
        if (!TextUtils.isEmpty(strVal9)) {
            result.put("pluginVersion", strVal9);
        }
        String strVal10 = getPluginFrameworkVersion();
        if (!TextUtils.isEmpty(strVal10)) {
            result.put("plugin_fw_v", strVal10);
        }
        String strVal11 = String.valueOf(DeviceStatus.isRootedDevice());
        if (!TextUtils.isEmpty(strVal11)) {
            result.put("jb", strVal11);
        }
        String strVal12 = getMediationType();
        if (!TextUtils.isEmpty(strVal12)) {
            result.put("mt", strVal12);
        }
        return result;
    }

    private String getPluginType() {
        try {
            String result = ConfigFile.getConfigFile().getPluginType();
            return result;
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginType()", e);
            return "";
        }
    }

    private String getPluginVersion() {
        try {
            String result = ConfigFile.getConfigFile().getPluginVersion();
            return result;
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginVersion()", e);
            return "";
        }
    }

    private String getPluginFrameworkVersion() {
        try {
            String result = ConfigFile.getConfigFile().getPluginFrameworkVersion();
            return result;
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, "getPluginFrameworkVersion()", e);
            return "";
        }
    }

    private String getBundleId() {
        try {
            return this.mContext.getPackageName();
        } catch (Exception e) {
            return "";
        }
    }

    private String getApplicationKey() {
        return IronSourceObject.getInstance().getIronSourceAppKey();
    }

    private String getDeviceOS() {
        return Constants.JAVASCRIPT_INTERFACE_NAME;
    }

    private String getAndroidVersion() {
        try {
            String release = Build.VERSION.RELEASE;
            int sdkVersion = Build.VERSION.SDK_INT;
            return "" + sdkVersion + "(" + release + ")";
        } catch (Exception e) {
            return "";
        }
    }

    private String getSDKVersion() {
        return IronSourceUtils.getSDKVersion();
    }

    private String getLanguage() {
        try {
            return Locale.getDefault().getLanguage();
        } catch (Exception e) {
            return "";
        }
    }

    private String getDeviceOEM() {
        try {
            return Build.MANUFACTURER;
        } catch (Exception e) {
            return "";
        }
    }

    private String getDeviceModel() {
        try {
            return Build.MODEL;
        } catch (Exception e) {
            return "";
        }
    }

    private String getMobileCarrier() {
        try {
            TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
            if (telephonyManager == null) {
                return "";
            }
            String operatorName = telephonyManager.getNetworkOperatorName();
            if (operatorName.equals("")) {
                return "";
            }
            return operatorName;
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":getMobileCarrier()", e);
            return "";
        }
    }

    private boolean isExternalStorageAbvailable() {
        try {
            return Environment.getExternalStorageState().equals("mounted");
        } catch (Exception e) {
            return false;
        }
    }

    private long getInternalStorageFreeSize() {
        try {
            File path = Environment.getDataDirectory();
            StatFs stat = new StatFs(path.getPath());
            long blockSize = stat.getBlockSize();
            long availableBlocks = stat.getAvailableBlocks();
            return (availableBlocks * blockSize) / 1048576;
        } catch (Exception e) {
            return -1L;
        }
    }

    private long getExternalStorageFreeSize() {
        if (!isExternalStorageAbvailable()) {
            return -1L;
        }
        File path = Environment.getExternalStorageDirectory();
        StatFs stat = new StatFs(path.getPath());
        long blockSize = stat.getBlockSize();
        long availableBlocks = stat.getAvailableBlocks();
        return (availableBlocks * blockSize) / 1048576;
    }

    private int getBatteryLevel() {
        try {
            Intent batteryIntent = this.mContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int level = batteryIntent != null ? batteryIntent.getIntExtra(ao.f, -1) : 0;
            int scale = batteryIntent != null ? batteryIntent.getIntExtra("scale", -1) : 0;
            if (level == -1 || scale == -1) {
                return -1;
            }
            int result = (int) ((level / scale) * 100.0f);
            return result;
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":getBatteryLevel()", e);
            return -1;
        }
    }

    @SuppressLint({"MissingPermission"})
    private double[] getLastKnownLocation() {
        double[] result = new double[0];
        long bestLocationTime = Long.MIN_VALUE;
        try {
            if (!locationPermissionGranted()) {
                return result;
            }
            LocationManager locationManager = (LocationManager) this.mContext.getApplicationContext().getSystemService("location");
            Location bestLocation = null;
            List<String> providers = locationManager.getAllProviders();
            for (String provider : providers) {
                Location location = locationManager.getLastKnownLocation(provider);
                if (location != null) {
                    long currentTime = location.getTime();
                    if (currentTime > bestLocationTime) {
                        bestLocation = location;
                        bestLocationTime = bestLocation.getTime();
                    }
                }
            }
            if (bestLocation == null) {
                return result;
            }
            double lat = bestLocation.getLatitude();
            double lon = bestLocation.getLongitude();
            return new double[]{lat, lon};
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":getLastLocation()", e);
            return new double[0];
        }
    }

    private boolean locationPermissionGranted() {
        try {
            int res = this.mContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION");
            return res == 0;
        } catch (Exception e) {
            return false;
        }
    }

    private int getGmtMinutesOffset() {
        int result = 0;
        try {
            TimeZone tz = TimeZone.getDefault();
            Calendar cal = GregorianCalendar.getInstance(tz);
            int offsetInMillis = tz.getOffset(cal.getTimeInMillis());
            result = (offsetInMillis / 1000) / 60;
            return Math.round(result / 15) * 15;
        } catch (Exception e) {
            IronSourceLoggerManager.getLogger().logException(IronSourceLogger.IronSourceTag.NATIVE, this.TAG + ":getGmtMinutesOffset()", e);
            return result;
        }
    }

    private boolean validateGmtMinutesOffset(int offset) {
        return offset <= MAX_MINUTES_OFFSET && offset >= MIN_MINUTES_OFFSET && offset % 15 == 0;
    }

    private String generateUUID() {
        String result = UUID.randomUUID().toString().replaceAll("-", "");
        return result + IronSourceUtils.getTimeStamp();
    }

    private String getMediationType() {
        return IronSourceObject.getInstance().getMediationType();
    }
}
