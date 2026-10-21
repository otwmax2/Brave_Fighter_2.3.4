package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzbd extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.INSTALL_REFERRER.toString();
    private static final String auQ = com.google.android.gms.internal.zzag.COMPONENT.toString();
    private final Context zzagf;

    public zzbd(Context context) {
        super(ID, new String[0]);
        this.zzagf = context;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        String strZzx = zzbe.zzx(this.zzagf, map.get(auQ) != null ? zzdl.zzg(map.get(auQ)) : null);
        return strZzx != null ? zzdl.zzar(strZzx) : zzdl.zzcdq();
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
