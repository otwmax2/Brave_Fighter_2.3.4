package com.google.android.gms.analytics.internal;

import android.util.Log;
import com.google.android.gms.analytics.Logger;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class zzae {
    private static volatile Logger Z;

    static {
        setLogger(new zzs());
    }

    public static Logger getLogger() {
        return Z;
    }

    public static void setLogger(Logger logger) {
        Z = logger;
    }

    public static void v(String str) {
        zzaf zzafVarZzadf = zzaf.zzadf();
        if (zzafVarZzadf != null) {
            zzafVarZzadf.zzei(str);
        } else if (zzaz(0)) {
            Log.v(zzy.zzczr.get(), str);
        }
        Logger logger = Z;
        if (logger != null) {
            logger.verbose(str);
        }
    }

    public static boolean zzaz(int i) {
        return getLogger() != null && getLogger().getLogLevel() <= i;
    }

    public static void zzcx(String str) {
        zzaf zzafVarZzadf = zzaf.zzadf();
        if (zzafVarZzadf != null) {
            zzafVarZzadf.zzek(str);
        } else if (zzaz(1)) {
            Log.i(zzy.zzczr.get(), str);
        }
        Logger logger = Z;
        if (logger != null) {
            logger.info(str);
        }
    }

    public static void zzcy(String str) {
        zzaf zzafVarZzadf = zzaf.zzadf();
        if (zzafVarZzadf != null) {
            zzafVarZzadf.zzel(str);
        } else if (zzaz(2)) {
            Log.w(zzy.zzczr.get(), str);
        }
        Logger logger = Z;
        if (logger != null) {
            logger.warn(str);
        }
    }

    public static void zzf(String str, Object obj) {
        String string;
        zzaf zzafVarZzadf = zzaf.zzadf();
        if (zzafVarZzadf != null) {
            zzafVarZzadf.zze(str, obj);
        } else if (zzaz(3)) {
            if (obj != null) {
                String strValueOf = String.valueOf(obj);
                string = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(strValueOf).length()).append(str).append(":").append(strValueOf).toString();
            } else {
                string = str;
            }
            Log.e(zzy.zzczr.get(), string);
        }
        Logger logger = Z;
        if (logger != null) {
            logger.error(str);
        }
    }
}
