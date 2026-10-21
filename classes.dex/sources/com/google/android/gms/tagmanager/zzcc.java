package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class zzcc extends zzch {
    public zzcc(String str) {
        super(str);
    }

    @Override // com.google.android.gms.tagmanager.zzch
    protected boolean zza(zzai.zza zzaVar, zzai.zza zzaVar2, Map<String, zzai.zza> map) {
        zzdk zzdkVarZzh = zzdl.zzh(zzaVar);
        zzdk zzdkVarZzh2 = zzdl.zzh(zzaVar2);
        if (zzdkVarZzh == zzdl.zzcdo() || zzdkVarZzh2 == zzdl.zzcdo()) {
            return false;
        }
        return zza(zzdkVarZzh, zzdkVarZzh2, map);
    }

    protected abstract boolean zza(zzdk zzdkVar, zzdk zzdkVar2, Map<String, zzai.zza> map);
}
