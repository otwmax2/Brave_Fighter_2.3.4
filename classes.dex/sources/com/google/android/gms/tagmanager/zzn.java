package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzn extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.CONSTANT.toString();
    private static final String VALUE = com.google.android.gms.internal.zzag.VALUE.toString();

    public zzn() {
        super(ID, VALUE);
    }

    public static String zzcaf() {
        return ID;
    }

    public static String zzcag() {
        return VALUE;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        return map.get(VALUE);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
