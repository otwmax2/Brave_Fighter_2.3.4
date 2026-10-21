package com.ironsource.environment;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.text.TextUtils;
import java.io.File;
import java.util.Arrays;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationContext {
    public static String getPackageName(Context context) {
        return context.getPackageName();
    }

    public static int getAppOrientation(Activity a) {
        return a.getRequestedOrientation();
    }

    public static String getDiskCacheDirPath(Context context) {
        File internalFile = context.getCacheDir();
        if (internalFile == null) {
            return null;
        }
        String path = internalFile.getPath();
        return path;
    }

    public static boolean isValidPermission(Context context, String permissionToCheck) {
        boolean isPermissionValid = false;
        if (!TextUtils.isEmpty(permissionToCheck)) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
                if (packageInfo.requestedPermissions != null) {
                    for (int i = 0; i < packageInfo.requestedPermissions.length && !isPermissionValid; i++) {
                        String permission = packageInfo.requestedPermissions[i];
                        isPermissionValid = permissionToCheck.equals(permission);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return isPermissionValid;
    }

    public static boolean isPermissionGranted(Context context, String permission) {
        int res = context.checkCallingOrSelfPermission(permission);
        return res == 0;
    }

    public static JSONObject getPermissions(Context context, JSONArray permissionsFromController) {
        String permissionStatus;
        String permissionStatus2;
        JSONObject allPermissions = new JSONObject();
        if (Build.VERSION.SDK_INT >= 16) {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096);
                if (permissionsFromController.length() == 0) {
                    for (int index = 0; index < packageInfo.requestedPermissions.length; index++) {
                        if ((packageInfo.requestedPermissionsFlags[index] & 2) != 0) {
                            permissionStatus2 = "Granted";
                        } else {
                            permissionStatus2 = "Rejected";
                        }
                        allPermissions.put(packageInfo.requestedPermissions[index], permissionStatus2);
                    }
                } else {
                    List<String> permissionsList = Arrays.asList(packageInfo.requestedPermissions);
                    for (int index2 = 0; index2 < permissionsFromController.length(); index2++) {
                        String permission = permissionsFromController.getString(index2);
                        int indexOfPermission = permissionsList.indexOf(permission);
                        if (indexOfPermission != -1) {
                            if ((packageInfo.requestedPermissionsFlags[indexOfPermission] & 2) != 0) {
                                permissionStatus = "Granted";
                            } else {
                                permissionStatus = "Rejected";
                            }
                            allPermissions.put(permission, permissionStatus);
                        } else {
                            allPermissions.put(permission, "notFoundInManifest");
                        }
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return allPermissions;
    }

    static PackageInfo getAppPackageInfo(Context context) throws PackageManager.NameNotFoundException {
        return context.getPackageManager().getPackageInfo(getPackageName(context), 0);
    }

    public static long getFirstInstallTime(Context context) {
        try {
            PackageInfo packageInfo = getAppPackageInfo(context);
            return packageInfo.firstInstallTime;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    public static long getLastUpdateTime(Context context) {
        try {
            PackageInfo packageInfo = getAppPackageInfo(context);
            return packageInfo.lastUpdateTime;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return -1L;
        }
    }

    public static String getApplicationVersionName(Context context) {
        try {
            PackageInfo packageInfo = getAppPackageInfo(context);
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String getPublisherApplicationVersion(Context context, String packageName) {
        try {
            String result = context.getPackageManager().getPackageInfo(packageName, 0).versionName;
            return result;
        } catch (Exception e) {
            return "";
        }
    }
}
