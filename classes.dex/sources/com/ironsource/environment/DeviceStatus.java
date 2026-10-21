package com.ironsource.environment;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.media.AudioManager;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.tendcloud.tenddata.game.ao;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.TimeZone;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class DeviceStatus {
    private static final String CACHED_UUID_KEY = "cachedUUID";
    private static final String DEVICE_OS = "android";
    private static final String GOOGLE_PLAY_SERVICES_CLASS_NAME = "com.google.android.gms.ads.identifier.AdvertisingIdClient";
    private static final String GOOGLE_PLAY_SERVICES_GET_AID_INFO_METHOD_NAME = "getAdvertisingIdInfo";
    private static final String GOOGLE_PLAY_SERVICES_GET_AID_METHOD_NAME = "getId";
    private static final String GOOGLE_PLAY_SERVICES_IS_LIMITED_AD_TRACKING_METHOD_NAME = "isLimitAdTrackingEnabled";
    private static final String MEDIATION_SHARED_PREFS = "Mediation_Shared_Preferences";
    public static final String UUID_ENABLED = "uuidEnabled";
    private static String uniqueId = null;

    public static long getDeviceLocalTime() {
        Calendar calendar = Calendar.getInstance(TimeZone.getDefault());
        Date currentLocalTime = calendar.getTime();
        return currentLocalTime.getTime();
    }

    public static int getDeviceTimeZoneOffsetInMinutes() {
        return -(TimeZone.getDefault().getOffset(getDeviceLocalTime()) / 60000);
    }

    public static String[] getAdvertisingIdInfo(Context c) throws IllegalAccessException, NoSuchMethodException, ClassNotFoundException, InvocationTargetException {
        Class<?> mAdvertisingIdClientClass = Class.forName(GOOGLE_PLAY_SERVICES_CLASS_NAME);
        Method getAdvertisingIdInfoMethod = mAdvertisingIdClientClass.getMethod(GOOGLE_PLAY_SERVICES_GET_AID_INFO_METHOD_NAME, Context.class);
        Object mInfoClass = getAdvertisingIdInfoMethod.invoke(mAdvertisingIdClientClass, c);
        Method getIdMethod = mInfoClass.getClass().getMethod(GOOGLE_PLAY_SERVICES_GET_AID_METHOD_NAME, new Class[0]);
        Method isLimitAdTrackingEnabledMethod = mInfoClass.getClass().getMethod("isLimitAdTrackingEnabled", new Class[0]);
        String advertisingId = getIdMethod.invoke(mInfoClass, new Object[0]).toString();
        boolean isLimitedTrackingEnabled = ((Boolean) isLimitAdTrackingEnabledMethod.invoke(mInfoClass, new Object[0])).booleanValue();
        return new String[]{advertisingId, "" + isLimitedTrackingEnabled};
    }

    public static String getDeviceLanguage(Context c) throws Exception {
        return c.getResources().getConfiguration().locale.getLanguage();
    }

    private static long getFreeStorageInBytes(File f) {
        long res;
        StatFs stat = new StatFs(f.getPath());
        if (Build.VERSION.SDK_INT < 19) {
            res = ((long) stat.getAvailableBlocks()) * ((long) stat.getBlockSize());
        } else {
            res = stat.getAvailableBlocksLong() * stat.getBlockSizeLong();
        }
        return res / 1048576;
    }

    public static boolean isExternalMemoryAvailableWritable() {
        return "mounted".equals(Environment.getExternalStorageState()) && Environment.isExternalStorageRemovable();
    }

    public static String getMobileCarrier(Context c) {
        TelephonyManager tm = (TelephonyManager) c.getSystemService("phone");
        return tm.getNetworkOperatorName();
    }

    public static String getAndroidOsVersion() {
        return Build.VERSION.RELEASE;
    }

    public static int getAndroidAPIVersion() {
        return Build.VERSION.SDK_INT;
    }

    public static String getDeviceModel() {
        return Build.MODEL;
    }

    public static String getDeviceOEM() {
        return Build.MANUFACTURER;
    }

    public static String getDeviceOs() {
        return DEVICE_OS;
    }

    public static boolean isRootedDevice() {
        return findBinary("su");
    }

    private static boolean findBinary(String binaryName) {
        try {
            String[] paths = {"/sbin/", "/system/bin/", "/system/xbin/", "/data/local/xbin/", "/data/local/bin/", "/system/sd/xbin/", "/system/bin/failsafe/", "/data/local/"};
            for (String path : paths) {
                File file = new File(path + binaryName);
                if (file.exists()) {
                    return true;
                }
            }
            return false;
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isRTL(Context context) {
        Configuration config = context.getResources().getConfiguration();
        return Build.VERSION.SDK_INT >= 17 && config.getLayoutDirection() == 1;
    }

    public static int getApplicationRotation(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        return defaultDisplay.getRotation();
    }

    public static float getSystemVolumePercent(Context context) {
        AudioManager audio = (AudioManager) context.getSystemService("audio");
        return audio.getStreamVolume(3) / audio.getStreamMaxVolume(3);
    }

    public static int getDeviceWidth() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        return displayMetrics.widthPixels;
    }

    public static int getDeviceHeight() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        return displayMetrics.heightPixels;
    }

    public static int getActivityRequestedOrientation(Context activity) {
        if (activity instanceof Activity) {
            return ((Activity) activity).getRequestedOrientation();
        }
        return -1;
    }

    public static int getDeviceDefaultOrientation(Context context) {
        int rotation = getApplicationRotation(context);
        int orientation = getDeviceOrientation(context);
        if ((rotation == 0 || rotation == 2) && orientation == 2) {
            return 2;
        }
        return ((rotation == 1 || rotation == 3) && orientation == 1) ? 2 : 1;
    }

    public static int getDeviceOrientation(Context context) {
        return context.getResources().getConfiguration().orientation;
    }

    public static float getDeviceDensity() {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        return displayMetrics.density;
    }

    public static List<ApplicationInfo> getInstalledApplications(Context context) {
        PackageManager pm = context.getPackageManager();
        return pm.getInstalledApplications(0);
    }

    public static boolean isDeviceOrientationLocked(Context context) {
        return Settings.System.getInt(context.getContentResolver(), "accelerometer_rotation", 0) != 1;
    }

    public static File getExternalCacheDir(Context context) {
        return context.getExternalCacheDir();
    }

    public static String getInternalCacheDirPath(Context context) {
        File internalFile = context.getCacheDir();
        if (internalFile == null) {
            return null;
        }
        String path = internalFile.getPath();
        return path;
    }

    public static long getAvailableInternalMemorySizeInMegaBytes() {
        File path = Environment.getDataDirectory();
        long res = getFreeStorageInBytes(path);
        return res;
    }

    public static long getAvailableMemorySizeInMegaBytes(String path) {
        return getFreeStorageInBytes(new File(path));
    }

    public static long getAvailableExternalMemorySizeInMegaBytes() {
        if (!isExternalMemoryAvailableWritable()) {
            return 0L;
        }
        File path = Environment.getExternalStorageDirectory();
        long res = getFreeStorageInBytes(path);
        return res;
    }

    @TargetApi(19)
    public static boolean isImmersiveSupported(Activity activity) {
        int uiOptions = activity.getWindow().getDecorView().getSystemUiVisibility();
        return (uiOptions | 4096) == uiOptions || (uiOptions | 2048) == uiOptions;
    }

    public static int getBatteryLevel(Context context) {
        try {
            Intent batteryIntent = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
            int level = batteryIntent != null ? batteryIntent.getIntExtra(ao.f, -1) : 0;
            int scale = batteryIntent != null ? batteryIntent.getIntExtra("scale", -1) : 0;
            if (level == -1 || scale == -1) {
                return -1;
            }
            int batteryLevel = (int) ((level / scale) * 100.0f);
            return batteryLevel;
        } catch (Exception e) {
            e.printStackTrace();
            return -1;
        }
    }

    public static synchronized String getOrGenerateOnceUniqueIdentifier(Context context) {
        String str;
        if (!TextUtils.isEmpty(uniqueId)) {
            str = uniqueId;
        } else {
            try {
                SharedPreferences preferences = context.getSharedPreferences(MEDIATION_SHARED_PREFS, 0);
                boolean isEnabled = preferences.getBoolean(UUID_ENABLED, true);
                if (isEnabled) {
                    String id = preferences.getString(CACHED_UUID_KEY, "");
                    if (TextUtils.isEmpty(id)) {
                        uniqueId = UUID.randomUUID().toString();
                        SharedPreferences.Editor editor = preferences.edit();
                        editor.putString(CACHED_UUID_KEY, uniqueId);
                        editor.apply();
                    } else {
                        uniqueId = id;
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            str = uniqueId;
        }
        return str;
    }

    private static boolean isSystemPackage(ResolveInfo resolveInfo) {
        return (resolveInfo.activityInfo.applicationInfo.flags & 1) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0040 A[Catch: Exception -> 0x0060, TRY_LEAVE, TryCatch #0 {Exception -> 0x0060, blocks: (B:7:0x0037, B:9:0x003d, B:10:0x0040), top: B:15:0x0037 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static org.json.JSONObject getAppsInstallTime(android.content.Context r14, boolean r15) {
        /*
            r13 = 0
            android.content.Intent r3 = new android.content.Intent
            java.lang.String r11 = "android.intent.action.MAIN"
            r12 = 0
            r3.<init>(r11, r12)
            java.lang.String r11 = "android.intent.category.LAUNCHER"
            r3.addCategory(r11)
            android.content.pm.PackageManager r11 = r14.getPackageManager()
            java.util.List r8 = r11.queryIntentActivities(r3, r13)
            org.json.JSONObject r7 = new org.json.JSONObject
            r7.<init>()
            android.content.pm.PackageManager r4 = r14.getPackageManager()
            java.text.SimpleDateFormat r10 = new java.text.SimpleDateFormat
            java.lang.String r11 = "yyyy-MM-dd"
            java.util.Locale r12 = java.util.Locale.US
            r10.<init>(r11, r12)
            r1 = 0
        L29:
            int r11 = r8.size()
            if (r1 >= r11) goto L65
            java.lang.Object r9 = r8.get(r1)
            android.content.pm.ResolveInfo r9 = (android.content.pm.ResolveInfo) r9
            if (r15 != 0) goto L40
            boolean r11 = isSystemPackage(r9)     // Catch: java.lang.Exception -> L60
            if (r11 == 0) goto L40
        L3d:
            int r1 = r1 + 1
            goto L29
        L40:
            android.content.pm.ActivityInfo r11 = r9.activityInfo     // Catch: java.lang.Exception -> L60
            java.lang.String r11 = r11.packageName     // Catch: java.lang.Exception -> L60
            r12 = 4096(0x1000, float:5.74E-42)
            android.content.pm.PackageInfo r6 = r4.getPackageInfo(r11, r12)     // Catch: java.lang.Exception -> L60
            java.util.Date r11 = new java.util.Date     // Catch: java.lang.Exception -> L60
            long r12 = r6.firstInstallTime     // Catch: java.lang.Exception -> L60
            r11.<init>(r12)     // Catch: java.lang.Exception -> L60
            java.lang.String r2 = r10.format(r11)     // Catch: java.lang.Exception -> L60
            r11 = 0
            int r5 = r7.optInt(r2, r11)     // Catch: java.lang.Exception -> L60
            int r5 = r5 + 1
            r7.put(r2, r5)     // Catch: java.lang.Exception -> L60
            goto L3d
        L60:
            r0 = move-exception
            r0.printStackTrace()
            goto L3d
        L65:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.environment.DeviceStatus.getAppsInstallTime(android.content.Context, boolean):org.json.JSONObject");
    }
}
