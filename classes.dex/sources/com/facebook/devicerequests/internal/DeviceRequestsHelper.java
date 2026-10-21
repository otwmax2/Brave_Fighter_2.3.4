package com.facebook.devicerequests.internal;

import android.annotation.TargetApi;
import android.net.nsd.NsdManager;
import android.net.nsd.NsdServiceInfo;
import android.os.Build;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettingsManager;
import com.facebook.internal.SmartLoginOption;
import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class DeviceRequestsHelper {
    static final String DEVICE_INFO_DEVICE = "device";
    static final String DEVICE_INFO_MODEL = "model";
    public static final String DEVICE_INFO_PARAM = "device_info";
    static final String SDK_FLAVOR = "android";
    static final String SDK_HEADER = "fbsdk";
    static final String SERVICE_TYPE = "_fb._tcp.";
    private static HashMap<String, NsdManager.RegistrationListener> deviceRequestsListeners = new HashMap<>();

    public static String getDeviceInfo() {
        JSONObject deviceInfo = new JSONObject();
        try {
            deviceInfo.put("device", Build.DEVICE);
            deviceInfo.put(DEVICE_INFO_MODEL, Build.MODEL);
        } catch (JSONException e) {
        }
        return deviceInfo.toString();
    }

    public static boolean startAdvertisementService(String userCode) {
        if (isAvailable()) {
            return startAdvertisementServiceImpl(userCode);
        }
        return false;
    }

    public static boolean isAvailable() {
        return Build.VERSION.SDK_INT >= 16 && FetchedAppSettingsManager.getAppSettingsWithoutQuery(FacebookSdk.getApplicationId()).getSmartLoginOptions().contains(SmartLoginOption.Enabled);
    }

    public static void cleanUpAdvertisementService(String userCode) {
        cleanUpAdvertisementServiceImpl(userCode);
    }

    @TargetApi(16)
    private static boolean startAdvertisementServiceImpl(final String userCode) {
        if (!deviceRequestsListeners.containsKey(userCode)) {
            String sdkVersion = FacebookSdk.getSdkVersion().replace('.', '|');
            final String nsdServiceName = String.format("%s_%s_%s", SDK_HEADER, String.format("%s-%s", SDK_FLAVOR, sdkVersion), userCode);
            NsdServiceInfo nsdLoginAdvertisementService = new NsdServiceInfo();
            nsdLoginAdvertisementService.setServiceType(SERVICE_TYPE);
            nsdLoginAdvertisementService.setServiceName(nsdServiceName);
            nsdLoginAdvertisementService.setPort(80);
            NsdManager nsdManager = (NsdManager) FacebookSdk.getApplicationContext().getSystemService("servicediscovery");
            NsdManager.RegistrationListener nsdRegistrationListener = new NsdManager.RegistrationListener() { // from class: com.facebook.devicerequests.internal.DeviceRequestsHelper.1
                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onServiceRegistered(NsdServiceInfo NsdServiceInfo) {
                    if (!nsdServiceName.equals(NsdServiceInfo.getServiceName())) {
                        DeviceRequestsHelper.cleanUpAdvertisementService(userCode);
                    }
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onServiceUnregistered(NsdServiceInfo serviceInfo) {
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onRegistrationFailed(NsdServiceInfo serviceInfo, int errorCode) {
                    DeviceRequestsHelper.cleanUpAdvertisementService(userCode);
                }

                @Override // android.net.nsd.NsdManager.RegistrationListener
                public void onUnregistrationFailed(NsdServiceInfo serviceInfo, int errorCode) {
                }
            };
            deviceRequestsListeners.put(userCode, nsdRegistrationListener);
            nsdManager.registerService(nsdLoginAdvertisementService, 1, nsdRegistrationListener);
        }
        return true;
    }

    @TargetApi(16)
    private static void cleanUpAdvertisementServiceImpl(String userCode) {
        NsdManager.RegistrationListener nsdRegistrationListener = deviceRequestsListeners.get(userCode);
        if (nsdRegistrationListener != null) {
            NsdManager nsdManager = (NsdManager) FacebookSdk.getApplicationContext().getSystemService("servicediscovery");
            nsdManager.unregisterService(nsdRegistrationListener);
            deviceRequestsListeners.remove(userCode);
        }
    }
}
