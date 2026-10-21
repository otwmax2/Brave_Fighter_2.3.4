package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzaj extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.EVENT.toString();
    private final zzcw avb;

    public zzaj(zzcw zzcwVar) {
        super(ID, new String[0]);
        this.avb = zzcwVar;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        String strZzcco = this.avb.zzcco();
        return strZzcco == null ? zzdl.zzcdq() : zzdl.zzar(strZzcco);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return false;
    }
}
