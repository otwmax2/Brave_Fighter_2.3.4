package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzf extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.APP_ID.toString();
    private final Context mContext;

    public zzf(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        return zzdl.zzar(this.mContext.getPackageName());
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
