package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.pm.PackageManager;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzh extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.APP_VERSION.toString();
    private final Context mContext;

    public zzh(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        try {
            return zzdl.zzar(Integer.valueOf(this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionCode));
        } catch (PackageManager.NameNotFoundException e) {
            String strValueOf = String.valueOf(this.mContext.getPackageName());
            String strValueOf2 = String.valueOf(e.getMessage());
            zzbn.e(new StringBuilder(String.valueOf(strValueOf).length() + 25 + String.valueOf(strValueOf2).length()).append("Package name ").append(strValueOf).append(" not found. ").append(strValueOf2).toString());
            return zzdl.zzcdq();
        }
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
