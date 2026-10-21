package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzce extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.OS_VERSION.toString();

    public zzce() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        return zzdl.zzar(Build.VERSION.RELEASE);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
