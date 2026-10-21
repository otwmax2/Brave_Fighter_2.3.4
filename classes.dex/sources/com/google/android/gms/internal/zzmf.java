package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.plus.PlusShare;
import com.ironsource.sdk.constants.Constants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzmf extends com.google.android.gms.analytics.zzg<zzmf> {
    private String mCategory;
    private String zzcvf;
    private String zzcvg;
    private long zzcvh;

    public String getAction() {
        return this.zzcvf;
    }

    public String getCategory() {
        return this.mCategory;
    }

    public String getLabel() {
        return this.zzcvg;
    }

    public long getValue() {
        return this.zzcvh;
    }

    public String toString() {
        HashMap map = new HashMap();
        map.put("category", this.mCategory);
        map.put("action", this.zzcvf);
        map.put(PlusShare.KEY_CALL_TO_ACTION_LABEL, this.zzcvg);
        map.put(Constants.ParametersKeys.VALUE, Long.valueOf(this.zzcvh));
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzmf zzmfVar) {
        if (!TextUtils.isEmpty(this.mCategory)) {
            zzmfVar.zzdu(this.mCategory);
        }
        if (!TextUtils.isEmpty(this.zzcvf)) {
            zzmfVar.zzdv(this.zzcvf);
        }
        if (!TextUtils.isEmpty(this.zzcvg)) {
            zzmfVar.zzdw(this.zzcvg);
        }
        if (this.zzcvh != 0) {
            zzmfVar.zzo(this.zzcvh);
        }
    }

    public void zzdu(String str) {
        this.mCategory = str;
    }

    public void zzdv(String str) {
        this.zzcvf = str;
    }

    public void zzdw(String str) {
        this.zzcvg = str;
    }

    public void zzo(long j) {
        this.zzcvh = j;
    }
}
