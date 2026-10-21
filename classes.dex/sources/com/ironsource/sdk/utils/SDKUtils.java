package com.ironsource.sdk.utils;

import android.app.ActivityManager;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Build;
import android.os.Environment;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import com.facebook.appevents.AppEventsConstants;
import com.ironsource.environment.DeviceStatus;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.data.SSAEnums;
import com.ironsource.sdk.precache.DownloadManager;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import com.yunva.monsterhunter.IabHelper;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class SDKUtils {
    private static String mAdvertisingId;
    private static String mControllerConfig;
    private static String mControllerUrl;
    private static final String TAG = SDKUtils.class.getSimpleName();
    private static boolean mIsLimitedTrackingEnabled = true;
    private static int mDebugMode = 0;
    private static String mUserGroup = "";
    private static final AtomicInteger sNextGeneratedId = new AtomicInteger(1);

    public static String getFileName(String url) {
        String[] assetSplit = url.split(File.separator);
        String fileName = assetSplit[assetSplit.length - 1];
        String[] fileNameArr = fileName.split("\\?");
        String name = fileNameArr[0];
        try {
            String encodedlFileName = URLEncoder.encode(name, DownloadManager.UTF8_CHARSET);
            return encodedlFileName;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static int pxToDp(long px) {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int dp = (int) ((px / displayMetrics.density) + 0.5f);
        return dp;
    }

    public static int dpToPx(long dp) {
        DisplayMetrics displayMetrics = Resources.getSystem().getDisplayMetrics();
        int px = (int) ((dp * displayMetrics.density) + 0.5f);
        return px;
    }

    public static int convertPxToDp(int pixels) {
        int dp = (int) TypedValue.applyDimension(1, pixels, Resources.getSystem().getDisplayMetrics());
        return dp;
    }

    public static int convertDpToPx(int dp) {
        int pixels = (int) TypedValue.applyDimension(0, dp, Resources.getSystem().getDisplayMetrics());
        return pixels;
    }

    public static String translateRequestedOrientation(int orientation) {
        switch (orientation) {
            case 0:
            case 6:
            case 8:
            case 11:
                return Constants.ParametersKeys.ORIENTATION_LANDSCAPE;
            case 1:
            case 7:
            case 9:
            case 12:
                return Constants.ParametersKeys.ORIENTATION_PORTRAIT;
            case 2:
            case 3:
            case 4:
            case 5:
            case 10:
            default:
                return Constants.ParametersKeys.ORIENTATION_NONE;
        }
    }

    public static String translateOrientation(int orientation) {
        switch (orientation) {
            case 1:
                return Constants.ParametersKeys.ORIENTATION_PORTRAIT;
            case 2:
                return Constants.ParametersKeys.ORIENTATION_LANDSCAPE;
            default:
                return Constants.ParametersKeys.ORIENTATION_NONE;
        }
    }

    public static JSONObject getOrientation(Context context) {
        JSONObject obj = new JSONObject();
        try {
            obj.put("orientation", translateOrientation(DeviceStatus.getDeviceOrientation(context)));
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return obj;
    }

    public static String createErrorMessage(String action, String stage) {
        String message = String.format("%s Failure occurred during initiation at: %s", action, stage);
        return message;
    }

    public static Long getCurrentTimeMillis() {
        return Long.valueOf(System.currentTimeMillis());
    }

    public static boolean isApplicationVisible(Context context) {
        String packageName = context.getPackageName();
        ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
        List<ActivityManager.RunningAppProcessInfo> appProcesses = activityManager.getRunningAppProcesses();
        for (ActivityManager.RunningAppProcessInfo appProcess : appProcesses) {
            if (appProcess.processName.equalsIgnoreCase(packageName) && appProcess.importance == 100) {
                return true;
            }
        }
        return false;
    }

    public static void showNoInternetDialog(Context context) {
        new AlertDialog.Builder(context).setMessage("No Internet Connection").setPositiveButton("Ok", new DialogInterface.OnClickListener() { // from class: com.ironsource.sdk.utils.SDKUtils.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        }).show();
    }

    public static byte[] encrypt(String x) {
        MessageDigest digest = null;
        try {
            digest = MessageDigest.getInstance("SHA-1");
            digest.reset();
            digest.update(x.getBytes(DownloadManager.UTF8_CHARSET));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
        }
        if (digest != null) {
            return digest.digest();
        }
        return null;
    }

    public static String convertStreamToString(InputStream is, boolean isGzipEnabled, String dir, String fileName) throws Throwable {
        BufferedReader reader;
        InputStream cleanedIs = is;
        if (isGzipEnabled) {
            cleanedIs = new GZIPInputStream(is);
        }
        BufferedReader reader2 = null;
        File outputFile = new File(dir, fileName);
        Writer writer = new BufferedWriter(new FileWriter(outputFile));
        try {
            reader = new BufferedReader(new InputStreamReader(cleanedIs, DownloadManager.UTF8_CHARSET));
        } catch (Throwable th) {
            th = th;
        }
        try {
            StringBuilder sb = new StringBuilder();
            while (true) {
                String line = reader.readLine();
                if (line == null) {
                    break;
                }
                sb.append(line);
                sb.append("\n");
            }
            writer.write(sb.toString());
            String string = sb.toString();
            if (reader != null) {
                reader.close();
            }
            cleanedIs.close();
            if (isGzipEnabled) {
                is.close();
            }
            writer.close();
            return string;
        } catch (Throwable th2) {
            th = th2;
            reader2 = reader;
            if (reader2 != null) {
                reader2.close();
            }
            cleanedIs.close();
            if (isGzipEnabled) {
                is.close();
            }
            writer.close();
            throw th;
        }
    }

    public static String encodeString(String value) {
        try {
            String encodedString = URLEncoder.encode(value, DownloadManager.UTF8_CHARSET).replace("+", "%20");
            return encodedString;
        } catch (UnsupportedEncodingException e) {
            return "";
        }
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
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public static void loadGoogleAdvertiserInfo(Context context) {
        Exception exception = null;
        try {
            String[] deviceInfo = DeviceStatus.getAdvertisingIdInfo(context);
            mAdvertisingId = deviceInfo[0];
            mIsLimitedTrackingEnabled = Boolean.valueOf(deviceInfo[1]).booleanValue();
            if (0 != 0) {
                if (exception.getMessage() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getMessage());
                }
                if (exception.getCause() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getCause());
                }
            }
        } catch (Exception e) {
            if (e != null) {
                if (e.getMessage() != null) {
                    Logger.i(TAG, e.getClass().getSimpleName() + ": " + e.getMessage());
                }
                if (e.getCause() != null) {
                    Logger.i(TAG, e.getClass().getSimpleName() + ": " + e.getCause());
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                if (exception.getMessage() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getMessage());
                }
                if (exception.getCause() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getCause());
                }
            }
            throw th;
        }
    }

    public static String getAdvertiserId() {
        return mAdvertisingId;
    }

    public static boolean isLimitAdTrackingEnabled() {
        return mIsLimitedTrackingEnabled;
    }

    public static Object getIInAppBillingServiceClass(IBinder binder) {
        Object object = null;
        Exception exception = null;
        try {
            Class<?> mStubClass = Class.forName("com.android.vending.billing.IInAppBillingService$Stub");
            Method asInterfaceMethod = mStubClass.getMethod("asInterface", IBinder.class);
            object = asInterfaceMethod.invoke(null, binder);
            if (0 != 0) {
                if (exception.getMessage() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getMessage());
                }
                if (exception.getCause() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getCause());
                }
            }
        } catch (ClassNotFoundException e) {
            if (e != null) {
                if (e.getMessage() != null) {
                    Logger.i(TAG, e.getClass().getSimpleName() + ": " + e.getMessage());
                }
                if (e.getCause() != null) {
                    Logger.i(TAG, e.getClass().getSimpleName() + ": " + e.getCause());
                }
            }
        } catch (IllegalAccessException e2) {
            if (e2 != null) {
                if (e2.getMessage() != null) {
                    Logger.i(TAG, e2.getClass().getSimpleName() + ": " + e2.getMessage());
                }
                if (e2.getCause() != null) {
                    Logger.i(TAG, e2.getClass().getSimpleName() + ": " + e2.getCause());
                }
            }
        } catch (IllegalArgumentException e3) {
            if (e3 != null) {
                if (e3.getMessage() != null) {
                    Logger.i(TAG, e3.getClass().getSimpleName() + ": " + e3.getMessage());
                }
                if (e3.getCause() != null) {
                    Logger.i(TAG, e3.getClass().getSimpleName() + ": " + e3.getCause());
                }
            }
        } catch (NoSuchMethodException e4) {
            if (e4 != null) {
                if (e4.getMessage() != null) {
                    Logger.i(TAG, e4.getClass().getSimpleName() + ": " + e4.getMessage());
                }
                if (e4.getCause() != null) {
                    Logger.i(TAG, e4.getClass().getSimpleName() + ": " + e4.getCause());
                }
            }
        } catch (InvocationTargetException e5) {
            if (e5 != null) {
                if (e5.getMessage() != null) {
                    Logger.i(TAG, e5.getClass().getSimpleName() + ": " + e5.getMessage());
                }
                if (e5.getCause() != null) {
                    Logger.i(TAG, e5.getClass().getSimpleName() + ": " + e5.getCause());
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                if (exception.getMessage() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getMessage());
                }
                if (exception.getCause() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getCause());
                }
            }
            throw th;
        }
        return object;
    }

    public static String queryingPurchasedItems(Object object, String pckName) {
        JSONArray purchases = new JSONArray();
        Exception exception = null;
        try {
            Method getPurchasesMethod = object.getClass().getMethod("getPurchases", Integer.TYPE, String.class, String.class, String.class);
            Object mBundleClass = getPurchasesMethod.invoke(object, 3, pckName, IabHelper.ITEM_TYPE_INAPP, null);
            Method mGetIntmethod = mBundleClass.getClass().getMethod("getInt", String.class);
            Method mGetStringArrayListMethod = mBundleClass.getClass().getMethod("getStringArrayList", String.class);
            Method mGetStringMethod = mBundleClass.getClass().getMethod("getString", String.class);
            int response = ((Integer) mGetIntmethod.invoke(mBundleClass, IabHelper.RESPONSE_CODE)).intValue();
            if (response == 0) {
                ArrayList<String> ownedSkus = (ArrayList) mGetStringArrayListMethod.invoke(mBundleClass, IabHelper.RESPONSE_INAPP_ITEM_LIST);
                ArrayList<String> purchaseDataList = (ArrayList) mGetStringArrayListMethod.invoke(mBundleClass, IabHelper.RESPONSE_INAPP_PURCHASE_DATA_LIST);
                ArrayList<String> signatureList = (ArrayList) mGetStringArrayListMethod.invoke(mBundleClass, IabHelper.RESPONSE_INAPP_SIGNATURE_LIST);
                for (int i = 0; i < purchaseDataList.size(); i++) {
                    String purchaseData = purchaseDataList.get(i);
                    String signature = signatureList.get(i);
                    String sku = ownedSkus.get(i);
                    Logger.i(TAG, purchaseData);
                    Logger.i(TAG, signature);
                    Logger.i(TAG, sku);
                    JSONObject item = new JSONObject();
                    try {
                        item.put("purchaseData", purchaseData);
                        item.put(InAppPurchaseMetaData.KEY_SIGNATURE, purchaseData);
                        item.put("sku", purchaseData);
                        purchases.put(item);
                    } catch (JSONException e) {
                    }
                }
            }
            if (0 != 0) {
                if (exception.getMessage() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getMessage());
                }
                if (exception.getCause() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getCause());
                }
            }
        } catch (IllegalAccessException e2) {
            if (e2 != null) {
                if (e2.getMessage() != null) {
                    Logger.i(TAG, e2.getClass().getSimpleName() + ": " + e2.getMessage());
                }
                if (e2.getCause() != null) {
                    Logger.i(TAG, e2.getClass().getSimpleName() + ": " + e2.getCause());
                }
            }
        } catch (IllegalArgumentException e3) {
            if (e3 != null) {
                if (e3.getMessage() != null) {
                    Logger.i(TAG, e3.getClass().getSimpleName() + ": " + e3.getMessage());
                }
                if (e3.getCause() != null) {
                    Logger.i(TAG, e3.getClass().getSimpleName() + ": " + e3.getCause());
                }
            }
        } catch (NoSuchMethodException e4) {
            if (e4 != null) {
                if (e4.getMessage() != null) {
                    Logger.i(TAG, e4.getClass().getSimpleName() + ": " + e4.getMessage());
                }
                if (e4.getCause() != null) {
                    Logger.i(TAG, e4.getClass().getSimpleName() + ": " + e4.getCause());
                }
            }
        } catch (InvocationTargetException e5) {
            if (e5 != null) {
                if (e5.getMessage() != null) {
                    Logger.i(TAG, e5.getClass().getSimpleName() + ": " + e5.getMessage());
                }
                if (e5.getCause() != null) {
                    Logger.i(TAG, e5.getClass().getSimpleName() + ": " + e5.getCause());
                }
            }
        } catch (Throwable th) {
            if (0 != 0) {
                if (exception.getMessage() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getMessage());
                }
                if (exception.getCause() != null) {
                    Logger.i(TAG, exception.getClass().getSimpleName() + ": " + exception.getCause());
                }
            }
            throw th;
        }
        return purchases.toString();
    }

    public static String getControllerUrl() {
        return !TextUtils.isEmpty(mControllerUrl) ? mControllerUrl : "";
    }

    public static String getSDKVersion() {
        return Constants.SDK_VERSION;
    }

    public static void setControllerUrl(String url) {
        mControllerUrl = url;
    }

    public static String getControllerConfig() {
        return mControllerConfig;
    }

    public static void setControllerConfig(String config) {
        mControllerConfig = config;
    }

    public static int getDebugMode() {
        return mDebugMode;
    }

    public static void setDebugMode(int debugMode) {
        mDebugMode = debugMode;
    }

    public static String getValueFromJsonObject(String json, String key) {
        try {
            JSONObject jsonObj = new JSONObject(json);
            String placementId = jsonObj.getString(key);
            return placementId;
        } catch (Exception e) {
            return null;
        }
    }

    public static boolean isExternalStorageAvailable() {
        String state = Environment.getExternalStorageState();
        return "mounted".equals(state) || "mounted_ro".equals(state);
    }

    public static int getActivityUIFlags(boolean isImmersive) {
        int uiFlags = 0;
        if (Build.VERSION.SDK_INT >= 14) {
            uiFlags = 2;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            uiFlags |= 1796;
        }
        if (Build.VERSION.SDK_INT >= 19 && isImmersive) {
            return uiFlags | 4096;
        }
        return uiFlags;
    }

    private static int generateViewIdForOldOS() {
        int result;
        int newValue;
        do {
            result = sNextGeneratedId.get();
            newValue = result + 1;
            if (newValue > 16777215) {
                newValue = 1;
            }
        } while (!sNextGeneratedId.compareAndSet(result, newValue));
        return result;
    }

    public static int generateViewId() {
        return Build.VERSION.SDK_INT < 17 ? generateViewIdForOldOS() : View.generateViewId();
    }

    public static JSONObject getControllerConfigAsJSONObject() {
        String controllerConfig = getControllerConfig();
        try {
            return new JSONObject(controllerConfig);
        } catch (JSONException e) {
            e.printStackTrace();
            return new JSONObject();
        }
    }

    public static SSAEnums.ProductType getProductType(String product) {
        if (product.equalsIgnoreCase(SSAEnums.ProductType.RewardedVideo.toString())) {
            SSAEnums.ProductType productType = SSAEnums.ProductType.RewardedVideo;
            return productType;
        }
        if (product.equalsIgnoreCase(SSAEnums.ProductType.Interstitial.toString())) {
            SSAEnums.ProductType productType2 = SSAEnums.ProductType.Interstitial;
            return productType2;
        }
        if (!product.equalsIgnoreCase(SSAEnums.ProductType.OfferWall.toString())) {
            return null;
        }
        SSAEnums.ProductType productType3 = SSAEnums.ProductType.OfferWall;
        return productType3;
    }

    public static void setTesterParameters(String testerParameters) {
        mUserGroup = testerParameters;
    }

    public static String getTesterParameters() {
        return mUserGroup;
    }
}
