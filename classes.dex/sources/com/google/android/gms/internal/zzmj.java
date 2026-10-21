package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzmj extends com.google.android.gms.analytics.zzg<zzmj> {
    public String zzcvf;
    public String zzcvz;
    public String zzcwa;

    public String getAction() {
        return this.zzcvf;
    }

    public String getTarget() {
        return this.zzcwa;
    }

    public String toString() {
        HashMap map = new HashMap();
        map.put("network", this.zzcvz);
        map.put("action", this.zzcvf);
        map.put("target", this.zzcwa);
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzmj zzmjVar) {
        if (!TextUtils.isEmpty(this.zzcvz)) {
            zzmjVar.zzec(this.zzcvz);
        }
        if (!TextUtils.isEmpty(this.zzcvf)) {
            zzmjVar.zzdv(this.zzcvf);
        }
        if (TextUtils.isEmpty(this.zzcwa)) {
            return;
        }
        zzmjVar.zzed(this.zzcwa);
    }

    public void zzdv(String str) {
        this.zzcvf = str;
    }

    public void zzec(String str) {
        this.zzcvz = str;
    }

    public void zzed(String str) {
        this.zzcwa = str;
    }

    public String zzyi() {
        return this.zzcvz;
    }
}
