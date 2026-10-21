package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzab extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.DEVICE_NAME.toString();

    public zzab() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        String str = Build.MANUFACTURER;
        String string = Build.MODEL;
        if (!string.startsWith(str) && !str.equals("unknown")) {
            string = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(string).length()).append(str).append(" ").append(string).toString();
        }
        return zzdl.zzar(string);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
