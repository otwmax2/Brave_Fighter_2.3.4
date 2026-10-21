package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzq extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.CONTAINER_VERSION.toString();
    private final String nZ;

    public zzq(String str) {
        super(ID, new String[0]);
        this.nZ = str;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        return this.nZ == null ? zzdl.zzcdq() : zzdl.zzar(this.nZ);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
