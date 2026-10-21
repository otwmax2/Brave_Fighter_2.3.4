package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzch extends zzal {
    private static final String awj = com.google.android.gms.internal.zzag.ARG0.toString();
    private static final String axh = com.google.android.gms.internal.zzag.ARG1.toString();

    public zzch(String str) {
        super(str, awj, axh);
    }

    protected abstract boolean zza(zzai.zza zzaVar, zzai.zza zzaVar2, Map<String, zzai.zza> map);

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        Iterator<zzai.zza> it = map.values().iterator();
        while (it.hasNext()) {
            if (it.next() == zzdl.zzcdq()) {
                return zzdl.zzar(false);
            }
        }
        zzai.zza zzaVar = map.get(awj);
        zzai.zza zzaVar2 = map.get(axh);
        return zzdl.zzar(Boolean.valueOf((zzaVar == null || zzaVar2 == null) ? false : zza(zzaVar, zzaVar2, map)));
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public /* bridge */ /* synthetic */ String zzcbl() {
        return super.zzcbl();
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public /* bridge */ /* synthetic */ Set zzcbm() {
        return super.zzcbm();
    }
}
