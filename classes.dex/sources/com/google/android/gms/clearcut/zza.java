package com.google.android.gms.clearcut;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class zza {
    private static int pN = -1;
    public static final zza pO = new zza();

    protected zza() {
    }

    public int zzbk(Context context) {
        if (pN < 0) {
            pN = context.getSharedPreferences("bootCount", 0).getInt("bootCount", 1);
        }
        return pN;
    }
}
