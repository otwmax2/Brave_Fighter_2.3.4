package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzv extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.CUSTOM_VAR.toString();
    private static final String NAME = com.google.android.gms.internal.zzag.NAME.toString();
    private static final String avN = com.google.android.gms.internal.zzag.DEFAULT_VALUE.toString();
    private final DataLayer ava;

    public zzv(DataLayer dataLayer) {
        super(ID, NAME);
        this.ava = dataLayer;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        Object obj = this.ava.get(zzdl.zzg(map.get(NAME)));
        if (obj != null) {
            return zzdl.zzar(obj);
        }
        zzai.zza zzaVar = map.get(avN);
        return zzaVar != null ? zzaVar : zzdl.zzcdq();
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return false;
    }
}
