package com.google.android.gms.tagmanager;

import android.content.Context;
import android.provider.Settings;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzbr extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.MOBILE_ADWORDS_UNIQUE_ID.toString();
    private final Context mContext;

    public zzbr(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        String strZzdt = zzdt(this.mContext);
        return strZzdt == null ? zzdl.zzcdq() : zzdl.zzar(strZzdt);
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }

    protected String zzdt(Context context) {
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }
}
