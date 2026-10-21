package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zze extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.ADWORDS_CLICK_REFERRER.toString();
    private static final String auQ = com.google.android.gms.internal.zzag.COMPONENT.toString();
    private static final String auR = com.google.android.gms.internal.zzag.CONVERSION_ID.toString();
    private final Context zzagf;

    public zze(Context context) {
        super(ID, auR);
        this.zzagf = context;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        zzai.zza zzaVar = map.get(auR);
        if (zzaVar == null) {
            return zzdl.zzcdq();
        }
        String strZzg = zzdl.zzg(zzaVar);
        zzai.zza zzaVar2 = map.get(auQ);
        String strZzg2 = zzbe.zzg(this.zzagf, strZzg, zzaVar2 != null ? zzdl.zzg(zzaVar2) : null);
        return strZzg2 != null ? zzdl.zzar(strZzg2) : zzdl.zzcdq();
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
