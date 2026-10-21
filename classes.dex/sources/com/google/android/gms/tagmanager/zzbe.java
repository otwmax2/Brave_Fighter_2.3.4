package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class zzbe {
    static Map<String, String> awA = new HashMap();
    private static String awz;

    public static String zzbg(String str, String str2) {
        if (str2 != null) {
            String strValueOf = String.valueOf(str);
            return Uri.parse(strValueOf.length() != 0 ? "http://hostname/?".concat(strValueOf) : new String("http://hostname/?")).getQueryParameter(str2);
        }
        if (str.length() > 0) {
            return str;
        }
        return null;
    }

    public static String zzg(Context context, String str, String str2) {
        String string = awA.get(str);
        if (string == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_click_referrers", 0);
            string = sharedPreferences != null ? sharedPreferences.getString(str, "") : "";
            awA.put(str, string);
        }
        return zzbg(string, str2);
    }

    public static void zzog(String str) {
        synchronized (zzbe.class) {
            awz = str;
        }
    }

    static void zzw(Context context, String str) {
        zzdc.zzb(context, "gtm_install_referrer", "referrer", str);
        zzy(context, str);
    }

    public static String zzx(Context context, String str) {
        if (awz == null) {
            synchronized (zzbe.class) {
                if (awz == null) {
                    SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_install_referrer", 0);
                    if (sharedPreferences != null) {
                        awz = sharedPreferences.getString("referrer", "");
                    } else {
                        awz = "";
                    }
                }
            }
        }
        return zzbg(awz, str);
    }

    public static void zzy(Context context, String str) {
        String strZzbg = zzbg(str, "conv");
        if (strZzbg == null || strZzbg.length() <= 0) {
            return;
        }
        awA.put(strZzbg, str);
        zzdc.zzb(context, "gtm_click_referrers", strZzbg, str);
    }
}
