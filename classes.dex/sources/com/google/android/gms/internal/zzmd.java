package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzmd extends com.google.android.gms.analytics.zzg<zzmd> {
    public int zzbrj;
    public int zzbrk;
    private String zzcvb;
    public int zzcvc;
    public int zzcvd;
    public int zzcve;

    public String getLanguage() {
        return this.zzcvb;
    }

    public void setLanguage(String str) {
        this.zzcvb = str;
    }

    public String toString() {
        HashMap map = new HashMap();
        map.put("language", this.zzcvb);
        map.put("screenColors", Integer.valueOf(this.zzcvc));
        map.put("screenWidth", Integer.valueOf(this.zzbrj));
        map.put("screenHeight", Integer.valueOf(this.zzbrk));
        map.put("viewportWidth", Integer.valueOf(this.zzcvd));
        map.put("viewportHeight", Integer.valueOf(this.zzcve));
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzmd zzmdVar) {
        if (this.zzcvc != 0) {
            zzmdVar.zzbp(this.zzcvc);
        }
        if (this.zzbrj != 0) {
            zzmdVar.zzbq(this.zzbrj);
        }
        if (this.zzbrk != 0) {
            zzmdVar.zzbr(this.zzbrk);
        }
        if (this.zzcvd != 0) {
            zzmdVar.zzbs(this.zzcvd);
        }
        if (this.zzcve != 0) {
            zzmdVar.zzbt(this.zzcve);
        }
        if (TextUtils.isEmpty(this.zzcvb)) {
            return;
        }
        zzmdVar.setLanguage(this.zzcvb);
    }

    public void zzbp(int i) {
        this.zzcvc = i;
    }

    public void zzbq(int i) {
        this.zzbrj = i;
    }

    public void zzbr(int i) {
        this.zzbrk = i;
    }

    public void zzbs(int i) {
        this.zzcvd = i;
    }

    public void zzbt(int i) {
        this.zzcve = i;
    }

    public int zzxn() {
        return this.zzcvc;
    }

    public int zzxo() {
        return this.zzbrj;
    }

    public int zzxp() {
        return this.zzbrk;
    }

    public int zzxq() {
        return this.zzcvd;
    }

    public int zzxr() {
        return this.zzcve;
    }
}
