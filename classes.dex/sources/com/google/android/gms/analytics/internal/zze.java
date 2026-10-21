package com.google.android.gms.analytics.internal;

/* JADX INFO: loaded from: classes.dex */
public class zze {
    public static final String VERSION = String.valueOf(com.google.android.gms.common.zzc.GOOGLE_PLAY_SERVICES_VERSION_CODE / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
    public static final String zzcwu;

    static {
        String strValueOf = String.valueOf(VERSION);
        zzcwu = strValueOf.length() != 0 ? "ma".concat(strValueOf) : new String("ma");
    }
}
