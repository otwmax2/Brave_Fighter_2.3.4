package com.ironsource.sdk.utils;

import android.content.Context;
import com.ironsource.environment.DeviceStatus;
import com.ironsource.sdk.constants.Constants;
import com.ironsource.sdk.data.SSAEnums;
import com.ironsource.sdk.data.SSAFile;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceStorageUtils {
    private static final String SSA_DIRECTORY_NAME = "supersonicads";

    public static String initializeCacheDirectory(Context context) {
        createRootDirectory(context);
        String result = refreshRootDirectory(context);
        return result;
    }

    private static String refreshRootDirectory(Context context) {
        String storedVerison = IronSourceSharedPrefHelper.getSupersonicPrefHelper().getCurrentSDKVersion();
        String sdkVer = DeviceProperties.getSupersonicSdkVersion();
        if (!storedVerison.equalsIgnoreCase(sdkVer)) {
            IronSourceSharedPrefHelper.getSupersonicPrefHelper().setCurrentSDKVersion(sdkVer);
            File cacheDir = DeviceStatus.getExternalCacheDir(context);
            if (cacheDir != null) {
                deleteAllFiles(cacheDir.getAbsolutePath() + File.separator + SSA_DIRECTORY_NAME + File.separator);
            }
            deleteAllFiles(DeviceStatus.getInternalCacheDirPath(context) + File.separator + SSA_DIRECTORY_NAME + File.separator);
            String cacheDirectoryPath = createRootDirectory(context);
            return cacheDirectoryPath;
        }
        String cacheDirectoryPath2 = getDiskCacheDir(context, SSA_DIRECTORY_NAME).getPath();
        return cacheDirectoryPath2;
    }

    private static void deleteAllFiles(String path) {
        File root = new File(path);
        File[] files = root.listFiles();
        if (files != null) {
            for (File file : files) {
                if (file.isDirectory()) {
                    deleteAllFiles(file.getAbsolutePath());
                    file.delete();
                } else {
                    file.delete();
                }
            }
        }
    }

    private static File getDiskCacheDir(Context context, String cacheDirName) {
        if (SDKUtils.isExternalStorageAvailable()) {
            File externalCacheDir = DeviceStatus.getExternalCacheDir(context);
            if (externalCacheDir != null) {
                String cachePath = externalCacheDir.getPath();
                return new File(cachePath + File.separator + cacheDirName);
            }
            String cachePath2 = DeviceStatus.getInternalCacheDirPath(context);
            return new File(cachePath2 + File.separator + cacheDirName);
        }
        String cachePath3 = DeviceStatus.getInternalCacheDirPath(context);
        return new File(cachePath3 + File.separator + cacheDirName);
    }

    private static String createRootDirectory(Context context) {
        File rootDirectory = getDiskCacheDir(context, SSA_DIRECTORY_NAME);
        if (!rootDirectory.exists()) {
            rootDirectory.mkdir();
        }
        return rootDirectory.getPath();
    }

    public static String makeDir(String cacheRootDirectory, String directory) {
        File dir = new File(cacheRootDirectory, directory);
        if (!dir.exists()) {
            boolean isCreated = dir.mkdirs();
            if (!isCreated) {
                return null;
            }
        }
        return dir.getPath();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002d, code lost:
    
        r3 = r1.delete();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized boolean deleteFile(java.lang.String r8, java.lang.String r9, java.lang.String r10) {
        /*
            r3 = 0
            java.lang.Class<com.ironsource.sdk.utils.IronSourceStorageUtils> r5 = com.ironsource.sdk.utils.IronSourceStorageUtils.class
            monitor-enter(r5)
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L35
            r0.<init>(r8, r9)     // Catch: java.lang.Throwable -> L35
            boolean r4 = r0.exists()     // Catch: java.lang.Throwable -> L35
            if (r4 != 0) goto L11
        Lf:
            monitor-exit(r5)
            return r3
        L11:
            java.io.File[] r2 = r0.listFiles()     // Catch: java.lang.Throwable -> L35
            if (r2 == 0) goto Lf
            int r6 = r2.length     // Catch: java.lang.Throwable -> L35
            r4 = r3
        L19:
            if (r4 >= r6) goto Lf
            r1 = r2[r4]     // Catch: java.lang.Throwable -> L35
            boolean r7 = r1.isFile()     // Catch: java.lang.Throwable -> L35
            if (r7 == 0) goto L32
            java.lang.String r7 = r1.getName()     // Catch: java.lang.Throwable -> L35
            boolean r7 = r7.equalsIgnoreCase(r10)     // Catch: java.lang.Throwable -> L35
            if (r7 == 0) goto L32
            boolean r3 = r1.delete()     // Catch: java.lang.Throwable -> L35
            goto Lf
        L32:
            int r4 = r4 + 1
            goto L19
        L35:
            r3 = move-exception
            monitor-exit(r5)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.utils.IronSourceStorageUtils.deleteFile(java.lang.String, java.lang.String, java.lang.String):boolean");
    }

    public static synchronized boolean isFileCached(String rootDirPath, SSAFile ssaFile) {
        boolean z = false;
        synchronized (IronSourceStorageUtils.class) {
            File dir = new File(rootDirPath, ssaFile.getPath());
            if (dir.listFiles() != null) {
                File[] fileArrListFiles = dir.listFiles();
                int length = fileArrListFiles.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    File entry = fileArrListFiles[i];
                    if (!entry.isFile() || !entry.getName().equalsIgnoreCase(SDKUtils.getFileName(ssaFile.getFile()))) {
                        i++;
                    } else {
                        z = true;
                        break;
                    }
                }
            }
        }
        return z;
    }

    public static boolean isPathExist(String cachRootPath, String path) {
        File file = new File(cachRootPath, path);
        return file.exists();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static synchronized boolean deleteFolder(java.lang.String r3, java.lang.String r4) {
        /*
            java.lang.Class<com.ironsource.sdk.utils.IronSourceStorageUtils> r2 = com.ironsource.sdk.utils.IronSourceStorageUtils.class
            monitor-enter(r2)
            java.io.File r0 = new java.io.File     // Catch: java.lang.Throwable -> L19
            r0.<init>(r3, r4)     // Catch: java.lang.Throwable -> L19
            boolean r1 = deleteFolderContentRecursive(r0)     // Catch: java.lang.Throwable -> L19
            if (r1 == 0) goto L17
            boolean r1 = r0.delete()     // Catch: java.lang.Throwable -> L19
            if (r1 == 0) goto L17
            r1 = 1
        L15:
            monitor-exit(r2)
            return r1
        L17:
            r1 = 0
            goto L15
        L19:
            r1 = move-exception
            monitor-exit(r2)
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ironsource.sdk.utils.IronSourceStorageUtils.deleteFolder(java.lang.String, java.lang.String):boolean");
    }

    private static boolean deleteFolderContentRecursive(File dir) {
        File[] files = dir.listFiles();
        boolean success = true;
        if (files != null) {
            for (File file : files) {
                if (file.isDirectory()) {
                    success &= deleteFolderContentRecursive(file);
                }
                if (!file.delete()) {
                    success = false;
                }
            }
        }
        return success;
    }

    public static String getCachedFilesMap(String cacheRootPath, String path) {
        JSONObject jsnObj = buildFilesMap(cacheRootPath, path);
        try {
            jsnObj.put("path", path);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        return jsnObj.toString();
    }

    private static JSONObject buildFilesMap(String cacheRootPath, String path) {
        File dir = new File(cacheRootPath, path);
        JSONObject jsnObj = new JSONObject();
        File[] fileList = dir.listFiles();
        if (fileList != null) {
            for (File entry : fileList) {
                try {
                    Object obj = looping(entry);
                    if (obj instanceof JSONArray) {
                        jsnObj.put("files", looping(entry));
                    } else if (obj instanceof JSONObject) {
                        jsnObj.put(entry.getName(), looping(entry));
                    }
                } catch (JSONException e) {
                    e.printStackTrace();
                    new IronSourceAsyncHttpRequestTask().execute(Constants.NATIVE_EXCEPTION_BASE_URL + e.getStackTrace()[0].getMethodName());
                }
            }
        }
        return jsnObj;
    }

    private static Object looping(File file) {
        String lastUpdate;
        JSONObject arr = new JSONObject();
        JSONArray tempArr = new JSONArray();
        try {
        } catch (JSONException e) {
            e.printStackTrace();
            new IronSourceAsyncHttpRequestTask().execute(Constants.NATIVE_EXCEPTION_BASE_URL + e.getStackTrace()[0].getMethodName());
        }
        if (file.isFile()) {
            tempArr.put(file.getName());
            return tempArr;
        }
        for (File fileEntry : file.listFiles()) {
            if (fileEntry.isDirectory()) {
                arr.put(fileEntry.getName(), looping(fileEntry));
            } else {
                tempArr.put(fileEntry.getName());
                arr.put("files", tempArr);
            }
        }
        if (file.isDirectory() && (lastUpdate = IronSourceSharedPrefHelper.getSupersonicPrefHelper().getCampaignLastUpdate(file.getName())) != null) {
            arr.put("lastUpdateTime", lastUpdate);
        }
        String product = file.getName().toLowerCase();
        SSAEnums.ProductType type = null;
        if (product.startsWith(SSAEnums.ProductType.RewardedVideo.toString().toLowerCase())) {
            type = SSAEnums.ProductType.RewardedVideo;
        } else if (product.startsWith(SSAEnums.ProductType.OfferWall.toString().toLowerCase())) {
            type = SSAEnums.ProductType.OfferWall;
        } else if (product.startsWith(SSAEnums.ProductType.Interstitial.toString().toLowerCase())) {
            type = SSAEnums.ProductType.Interstitial;
        }
        if (type != null) {
            arr.put(SDKUtils.encodeString(Constants.RequestParameters.APPLICATION_USER_ID), SDKUtils.encodeString(IronSourceSharedPrefHelper.getSupersonicPrefHelper().getUniqueId(type)));
            arr.put(SDKUtils.encodeString(Constants.RequestParameters.APPLICATION_KEY), SDKUtils.encodeString(IronSourceSharedPrefHelper.getSupersonicPrefHelper().getApplicationKey(type)));
        }
        return arr;
    }

    public static boolean renameFile(String fromName, String toName) throws Exception {
        File srcFile = new File(fromName);
        File destFile = new File(toName);
        return srcFile.renameTo(destFile);
    }

    public static int saveFile(byte[] data, String destFileName) throws Exception {
        int totalBytesRead = 0;
        File tmpOutputFile = new File(destFileName);
        FileOutputStream fos = new FileOutputStream(tmpOutputFile);
        ByteArrayInputStream bais = new ByteArrayInputStream(data);
        try {
            byte[] buffer = new byte[102400];
            while (true) {
                int bytesRead = bais.read(buffer);
                if (bytesRead != -1) {
                    fos.write(buffer, 0, bytesRead);
                    totalBytesRead += bytesRead;
                } else {
                    return totalBytesRead;
                }
            }
        } finally {
            fos.close();
            bais.close();
        }
    }
}
