package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzdh extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.TIME.toString();

    public zzdh() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        return zzdl.zzar(Long.valueOf(System.currentTimeMillis()));
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return false;
    }
}
