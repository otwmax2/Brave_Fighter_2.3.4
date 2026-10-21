package com.google.android.gms.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
public class zzbu {
    private static boolean zzfs = false;

    public static String zza(String str, String str2, Object obj) {
        if (!zze(6)) {
            return "";
        }
        String strZza = zza(str, str2, obj);
        Log.e("ctxmgr", strZza);
        return strZza;
    }

    public static String zza(String str, String str2, Throwable th) {
        if (!zze(6)) {
            return "";
        }
        String strZza = zza(str, str2, new Object[0]);
        Log.e("ctxmgr", strZza, th);
        return strZza;
    }

    private static String zza(String str, String str2, Object... objArr) {
        if (objArr == null || objArr.length == 0) {
            return String.format("[%s]%s", str, str2);
        }
        String strValueOf = String.valueOf(String.format("[%s]", str));
        String strValueOf2 = String.valueOf(String.format(str2, objArr));
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    public static String zzd(String str, String str2) {
        if (!zze(2)) {
            return "";
        }
        String strZza = zza(str, str2, new Object[0]);
        Log.v("ctxmgr", strZza);
        return strZza;
    }

    public static String zze(String str, String str2) {
        if (!zze(6)) {
            return "";
        }
        String strZza = zza(str, str2, new Object[0]);
        Log.e("ctxmgr", strZza);
        return strZza;
    }

    private static boolean zze(int i) {
        return Log.isLoggable("ctxmgr", i);
    }
}
