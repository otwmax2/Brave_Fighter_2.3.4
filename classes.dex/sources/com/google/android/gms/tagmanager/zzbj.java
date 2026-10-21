package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzbj extends zzcc {
    private static final String ID = com.google.android.gms.internal.zzaf.LESS_EQUALS.toString();

    public zzbj() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzcc
    protected boolean zza(zzdk zzdkVar, zzdk zzdkVar2, Map<String, zzai.zza> map) {
        return zzdkVar.compareTo(zzdkVar2) <= 0;
    }
}
