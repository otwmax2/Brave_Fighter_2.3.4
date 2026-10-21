package com.google.android.gms.tagmanager;

import android.content.Context;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.google.android.gms.internal.zzai;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzcn extends zzal {
    private static final String ID = com.google.android.gms.internal.zzaf.RESOLUTION.toString();
    private final Context mContext;

    public zzcn(Context context) {
        super(ID, new String[0]);
        this.mContext = context;
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public zzai.zza zzav(Map<String, zzai.zza> map) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        return zzdl.zzar(new StringBuilder(23).append(i).append("x").append(displayMetrics.heightPixels).toString());
    }

    @Override // com.google.android.gms.tagmanager.zzal
    public boolean zzcac() {
        return true;
    }
}
