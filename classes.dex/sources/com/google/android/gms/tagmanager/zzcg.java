package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import com.ironsource.sdk.constants.Constants;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzcg extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.PLATFORM.toString();
    private static final zzai.zza axg = zzdl.zzar(Constants.JAVASCRIPT_INTERFACE_NAME);

    public zzcg() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        return axg;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
