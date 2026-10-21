package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzbp extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.LOWERCASE_STRING.toString();
    private static final String awj = com.google.android.gms.internal.zzag.ARG0.toString();

    public zzbp() {
        super(ID, awj);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        return zzdl.zzar(zzdl.zzg(map.get(awj)).toLowerCase());
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
