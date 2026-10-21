package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzc extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.ADVERTISING_TRACKING_ENABLED.toString();
    private final zza auP;

    public zzc(Context context) {
        this(zza.zzdr(context));
    }

    zzc(zza zzaVar) {
        super(ID, new String[0]);
        this.auP = zzaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        return zzdl.zzar(Boolean.valueOf(!this.auP.isLimitAdTrackingEnabled()));
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return false;
    }
}
