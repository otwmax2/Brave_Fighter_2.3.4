package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzb extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.ADVERTISER_ID.toString();
    private final zza auP;

    public zzb(Context context) {
        this(zza.zzdr(context));
    }

    zzb(zza zzaVar) {
        super(ID, new String[0]);
        this.auP = zzaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        String strZzbzw = this.auP.zzbzw();
        return strZzbzw == null ? zzdl.zzcdq() : zzdl.zzar(strZzbzw);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return false;
    }
}
