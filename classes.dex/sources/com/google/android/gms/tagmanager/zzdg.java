package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
abstract class zzdg extends zzch {
    public zzdg(String str) {
        super(str);
    }

    @Override // com.google.android.gms.tagmanager.zzch
    protected boolean zza(zzai.zza zzaVar, zzai.zza zzaVar2, Map<String, zzai.zza> map) {
        String strZzg = zzdl.zzg(zzaVar);
        String strZzg2 = zzdl.zzg(zzaVar2);
        if (strZzg == zzdl.zzcdp() || strZzg2 == zzdl.zzcdp()) {
            return false;
        }
        return zza(strZzg, strZzg2, map);
    }

    protected abstract boolean zza(String str, String str2, Map<String, zzai.zza> map);
}
