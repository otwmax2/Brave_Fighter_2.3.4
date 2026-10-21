package com.ironsource.mediationsdk.integration;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.ironsource.mediationsdk.IntegrationData;
import com.ironsource.mediationsdk.IronSourceObject;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import com.vungle.publisher.log.Logger;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class IntegrationHelper {
    private static final String SDK_COMPATIBILITY_VERSION = "4.1";
    private static final String TAG = "IntegrationHelper";

    public static void validateIntegration(Activity activity) {
        Log.i(TAG, "Verifying Integration:");
        validatePermissions(activity);
        String[] adapters = {IronSourceConstants.IRONSOURCE_CONFIG_NAME, "AdColony", "AppLovin", "Chartboost", "HyprMX", "UnityAds", Logger.VUNGLE_TAG, "InMobi", "Facebook", "Fyber", "MediaBrix", "Tapjoy", "AdMob", "MoPub", "Maio"};
        for (String adapter : adapters) {
            if (isAdapterValid(activity, adapter)) {
                if (adapter.equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME)) {
                    Log.i(TAG, ">>>> IronSource - VERIFIED");
                } else {
                    Log.i(TAG, ">>>> " + adapter + " - VERIFIED");
                }
            } else if (adapter.equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME)) {
                Log.e(TAG, ">>>> IronSource - NOT VERIFIED");
            } else {
                Log.e(TAG, ">>>> " + adapter + " - NOT VERIFIED");
            }
        }
        validateGooglePlayServices(activity);
    }

    private static boolean isAdapterValid(Activity activity, String adapterName) {
        try {
            if (adapterName.equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME)) {
                Log.i(TAG, "--------------- IronSource  --------------");
            } else {
                Log.i(TAG, "--------------- " + adapterName + " --------------");
            }
            String className = "com.ironsource.adapters." + adapterName.toLowerCase() + "." + adapterName + "Adapter";
            IntegrationData data = getIntegrationData(activity, className);
            if (data == null) {
                return false;
            }
            if (!adapterName.equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME) && !isAdapterVersionValid(data)) {
                return false;
            }
            boolean ret = true;
            if (!isAdapterSdkValid(data.sdkName)) {
                ret = false;
            }
            if (!isActivitiesValid(activity, data.activities)) {
                ret = false;
            }
            if (!isExternalLibsValid(data.externalLibs)) {
                ret = false;
            }
            if (!isBroadcastReceiversValid(activity, data.broadcastReceivers)) {
                ret = false;
            }
            if (!isServicesValid(activity, data.services)) {
                ret = false;
            }
            if (data.validateWriteExternalStorage && Build.VERSION.SDK_INT <= 18) {
                PackageManager pm = activity.getPackageManager();
                if (pm.checkPermission("android.permission.WRITE_EXTERNAL_STORAGE", activity.getPackageName()) == 0) {
                    Log.i(TAG, "android.permission.WRITE_EXTERNAL_STORAGE - VERIFIED");
                    return ret;
                }
                Log.e(TAG, "android.permission.WRITE_EXTERNAL_STORAGE - MISSING");
                return false;
            }
            return ret;
        } catch (Exception e) {
            Log.e(TAG, "isAdapterValid " + adapterName, e);
            return false;
        }
    }

    private static boolean isBroadcastReceiversValid(Activity activity, String[] broadcastReceivers) {
        if (broadcastReceivers == null) {
            return true;
        }
        PackageManager packageManager = activity.getPackageManager();
        Log.i(TAG, "*** Broadcast Receivers ***");
        boolean ret = true;
        for (String broadcastReceiver : broadcastReceivers) {
            try {
                Intent intent = new Intent(activity, Class.forName(broadcastReceiver));
                List<ResolveInfo> list = packageManager.queryBroadcastReceivers(intent, 65536);
                if (list.size() > 0) {
                    Log.i(TAG, broadcastReceiver + " - VERIFIED");
                } else {
                    ret = false;
                    Log.e(TAG, broadcastReceiver + " - MISSING");
                }
            } catch (ClassNotFoundException e) {
                ret = false;
                Log.e(TAG, broadcastReceiver + " - MISSING");
            }
        }
        return ret;
    }

    private static boolean isServicesValid(Activity activity, String[] services) {
        if (services == null) {
            return true;
        }
        PackageManager packageManager = activity.getPackageManager();
        Log.i(TAG, "*** Services ***");
        boolean ret = true;
        for (String service : services) {
            try {
                Intent intent = new Intent(activity, Class.forName(service));
                List<ResolveInfo> list = packageManager.queryIntentServices(intent, 65536);
                if (list.size() > 0) {
                    Log.i(TAG, service + " - VERIFIED");
                } else {
                    ret = false;
                    Log.e(TAG, service + " - MISSING");
                }
            } catch (ClassNotFoundException e) {
                ret = false;
                Log.e(TAG, service + " - MISSING");
            }
        }
        return ret;
    }

    private static boolean isExternalLibsValid(ArrayList<Pair<String, String>> externalLibs) {
        if (externalLibs == null) {
            return true;
        }
        Log.i(TAG, "*** External Libraries ***");
        boolean ret = true;
        for (Pair<String, String> externalLibrary : externalLibs) {
            try {
                Class.forName((String) externalLibrary.first);
                Log.i(TAG, ((String) externalLibrary.second) + " - VERIFIED");
            } catch (ClassNotFoundException e) {
                ret = false;
                Log.e(TAG, ((String) externalLibrary.second) + " - MISSING");
            }
        }
        return ret;
    }

    private static boolean isActivitiesValid(Activity activity, String[] activities) {
        if (activities == null) {
            return true;
        }
        Log.i(TAG, "*** Activities ***");
        boolean ret = true;
        for (String act : activities) {
            try {
                Intent intent = new Intent(activity, Class.forName(act));
                List<ResolveInfo> list = activity.getPackageManager().queryIntentActivities(intent, 65536);
                if (list.size() > 0) {
                    Log.i(TAG, act + " - VERIFIED");
                } else {
                    ret = false;
                    Log.e(TAG, act + " - MISSING");
                }
            } catch (ClassNotFoundException e) {
                ret = false;
                Log.e(TAG, act + " - MISSING");
            }
        }
        return ret;
    }

    private static void validatePermissions(Activity activity) {
        Log.i(TAG, "*** Permissions ***");
        PackageManager pm = activity.getPackageManager();
        if (pm.checkPermission("android.permission.INTERNET", activity.getPackageName()) == 0) {
            Log.i(TAG, "android.permission.INTERNET - VERIFIED");
        } else {
            Log.e(TAG, "android.permission.INTERNET - MISSING");
        }
        if (pm.checkPermission("android.permission.ACCESS_NETWORK_STATE", activity.getPackageName()) == 0) {
            Log.i(TAG, "android.permission.ACCESS_NETWORK_STATE - VERIFIED");
        } else {
            Log.e(TAG, "android.permission.ACCESS_NETWORK_STATE - MISSING");
        }
    }

    private static boolean isAdapterSdkValid(String sdkName) {
        if (sdkName == null) {
            return true;
        }
        try {
            Class.forName(sdkName);
            Log.i(TAG, "SDK - VERIFIED");
            return true;
        } catch (Exception e) {
            Log.e(TAG, "SDK - MISSING");
            return false;
        }
    }

    private static boolean isAdapterVersionValid(IntegrationData data) {
        if (data.version.startsWith(SDK_COMPATIBILITY_VERSION)) {
            Log.i(TAG, "Adapter version - VERIFIED");
            return true;
        }
        Log.e(TAG, data.name + " adapter " + data.version + " is incompatible with SDK version " + IronSourceUtils.getSDKVersion() + ", please update your adapter to version " + SDK_COMPATIBILITY_VERSION + ".*");
        return false;
    }

    private static IntegrationData getIntegrationData(Activity activity, String className) {
        try {
            Method method = Class.forName(className).getMethod("getIntegrationData", Activity.class);
            IntegrationData ret = (IntegrationData) method.invoke(null, activity);
            Log.i(TAG, "Adapter - VERIFIED");
            return ret;
        } catch (ClassNotFoundException e) {
            Log.e(TAG, "Adapter - MISSING");
            return null;
        } catch (Exception e2) {
            Log.e(TAG, "Adapter version - NOT VERIFIED");
            return null;
        }
    }

    private static void validateGooglePlayServices(final Activity activity) {
        Thread thread = new Thread() { // from class: com.ironsource.mediationsdk.integration.IntegrationHelper.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    Log.w(IntegrationHelper.TAG, "--------------- Google Play Services --------------");
                    PackageManager packageManager = activity.getPackageManager();
                    ApplicationInfo ai = packageManager.getApplicationInfo(activity.getPackageName(), 128);
                    Bundle bundle = ai.metaData;
                    boolean exists = bundle.containsKey("com.google.android.gms.version");
                    if (exists) {
                        Log.i(IntegrationHelper.TAG, "Google Play Services - VERIFIED");
                        String gaid = IronSourceObject.getInstance().getAdvertiserId(activity);
                        if (!TextUtils.isEmpty(gaid)) {
                            Log.i(IntegrationHelper.TAG, "GAID is: " + gaid + " (use this for test devices)");
                        }
                    } else {
                        Log.e(IntegrationHelper.TAG, "Google Play Services - MISSING");
                    }
                } catch (Exception e) {
                    Log.e(IntegrationHelper.TAG, "Google Play Services - MISSING");
                }
            }
        };
        thread.start();
    }
}
