package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzdn extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.UPPERCASE_STRING.toString();
    private static final String awj = com.google.android.gms.internal.zzag.ARG0.toString();

    public zzdn() {
        super(ID, awj);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        return zzdl.zzar(zzdl.zzg(map.get(awj)).toUpperCase());
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
