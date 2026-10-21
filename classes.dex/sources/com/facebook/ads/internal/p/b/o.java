package com.facebook.ads.internal.p.b;

import android.content.Context;
import android.os.Environment;
import android.util.Log;
import com.ironsource.sdk.constants.Constants;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
final class o {
    public static File a(Context context) {
        return new File(a(context, true), "video-cache");
    }

    private static File a(Context context, boolean z) {
        String externalStorageState;
        File cacheDir = null;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (NullPointerException e) {
            externalStorageState = "";
        }
        if (z && "mounted".equals(externalStorageState)) {
            cacheDir = b(context);
        }
        if (cacheDir == null) {
            cacheDir = context.getCacheDir();
        }
        if (cacheDir != null) {
            return cacheDir;
        }
        String str = "/data/data/" + context.getPackageName() + "/cache/";
        Log.w("ProxyCache", "Can't define system cache directory! '" + str + "%s' will be used.");
        return new File(str);
    }

    private static File b(Context context) {
        File file = new File(new File(new File(new File(Environment.getExternalStorageDirectory(), Constants.JAVASCRIPT_INTERFACE_NAME), "data"), context.getPackageName()), "cache");
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        Log.w("ProxyCache", "Unable to create external cache directory");
        return null;
    }
}
