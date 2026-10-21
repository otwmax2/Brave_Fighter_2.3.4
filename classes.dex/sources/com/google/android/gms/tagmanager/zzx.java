package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzx extends zzdj {
    private static final String ID = com.google.android.gms.internal.zzaf.DATA_LAYER_WRITE.toString();
    private static final String VALUE = com.google.android.gms.internal.zzag.VALUE.toString();
    private static final String avY = com.google.android.gms.internal.zzag.CLEAR_PERSISTENT_DATA_LAYER_PREFIX.toString();
    private final DataLayer ava;

    public zzx(DataLayer dataLayer) {
        super(ID, VALUE);
        this.ava = dataLayer;
    }

    private void zza(zzai.zza zzaVar) {
        String strZzg;
        if (zzaVar == null || zzaVar == zzdl.zzcdk() || (strZzg = zzdl.zzg(zzaVar)) == zzdl.zzcdp()) {
            return;
        }
        this.ava.zznw(strZzg);
    }

    private void zzb(zzai.zza zzaVar) {
        if (zzaVar == null || zzaVar == zzdl.zzcdk()) {
            return;
        }
        Object objZzl = zzdl.zzl(zzaVar);
        if (objZzl instanceof List) {
            for (Object obj : (List) objZzl) {
                if (obj instanceof Map) {
                    this.ava.push((Map) obj);
                }
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public void zzax(Map<String, zzai.zza> map) {
        zzb(map.get(VALUE));
        zza(map.get(avY));
    }
}
