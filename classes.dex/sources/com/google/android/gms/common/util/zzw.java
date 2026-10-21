package com.google.android.gms.common.util;

import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class zzw {
    private static final Pattern AZ = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean zzic(String str) {
        return str == null || com.google.android.gms.common.internal.zzf.xC.zzb(str);
    }
}
