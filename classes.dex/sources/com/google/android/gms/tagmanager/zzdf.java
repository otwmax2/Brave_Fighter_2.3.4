package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzdf extends zzdg {
    private static final String ID = com.google.android.gms.internal.zzaf.STARTS_WITH.toString();

    public zzdf() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzdg
    protected boolean zza(String str, String str2, Map<String, zzai.zza> map) {
        return str.startsWith(str2);
    }
}
