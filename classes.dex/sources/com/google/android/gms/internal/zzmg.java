package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzmg extends com.google.android.gms.analytics.zzg<zzmg> {
    public String zzcvi;
    public boolean zzcvj;

    public String getDescription() {
        return this.zzcvi;
    }

    public void setDescription(String str) {
        this.zzcvi = str;
    }

    public String toString() {
        HashMap map = new HashMap();
        map.put("description", this.zzcvi);
        map.put("fatal", Boolean.valueOf(this.zzcvj));
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzmg zzmgVar) {
        if (!TextUtils.isEmpty(this.zzcvi)) {
            zzmgVar.setDescription(this.zzcvi);
        }
        if (this.zzcvj) {
            zzmgVar.zzan(this.zzcvj);
        }
    }

    public void zzan(boolean z) {
        this.zzcvj = z;
    }

    public boolean zzxw() {
        return this.zzcvj;
    }
}
