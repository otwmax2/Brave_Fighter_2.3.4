package com.google.android.gms.analytics.internal;

import com.google.android.gms.internal.zzly;

/* JADX INFO: loaded from: classes.dex */
public class zzk extends zzd {
    private final zzly zzctp;

    zzk(zzf zzfVar) {
        super(zzfVar);
        this.zzctp = new zzly();
    }

    public zzly zzaad() {
        zzzg();
        return this.zzctp;
    }

    public void zzvz() {
        zzap zzapVarZzwe = zzwe();
        String strZzxb = zzapVarZzwe.zzxb();
        if (strZzxb != null) {
            this.zzctp.setAppName(strZzxb);
        }
        String strZzxc = zzapVarZzwe.zzxc();
        if (strZzxc != null) {
            this.zzctp.setAppVersion(strZzxc);
        }
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
        zzyz().zzws().zzb(this.zzctp);
        zzvz();
    }
}
