package com.google.android.gms.analytics.internal;

import com.google.android.gms.internal.zzmd;

/* JADX INFO: loaded from: classes.dex */
public class zzu extends zzd {
    zzu(zzf zzfVar) {
        super(zzfVar);
    }

    public zzmd zzack() {
        zzzg();
        return zzyz().zzwt();
    }

    public String zzacl() {
        zzzg();
        zzmd zzmdVarZzack = zzack();
        int iZzxo = zzmdVarZzack.zzxo();
        return new StringBuilder(23).append(iZzxo).append("x").append(zzmdVarZzack.zzxp()).toString();
    }

    @Override // com.google.android.gms.analytics.internal.zzd
    protected void zzwv() {
    }
}
