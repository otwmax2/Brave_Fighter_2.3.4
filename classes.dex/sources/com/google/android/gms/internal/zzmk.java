package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.plus.PlusShare;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzmk extends com.google.android.gms.analytics.zzg<zzmk> {
    public String mCategory;
    public String zzcvg;
    public String zzcwb;
    public long zzcwc;

    public String getCategory() {
        return this.mCategory;
    }

    public String getLabel() {
        return this.zzcvg;
    }

    public long getTimeInMillis() {
        return this.zzcwc;
    }

    public void setTimeInMillis(long j) {
        this.zzcwc = j;
    }

    public String toString() {
        HashMap map = new HashMap();
        map.put("variableName", this.zzcwb);
        map.put("timeInMillis", Long.valueOf(this.zzcwc));
        map.put("category", this.mCategory);
        map.put(PlusShare.KEY_CALL_TO_ACTION_LABEL, this.zzcvg);
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzmk zzmkVar) {
        if (!TextUtils.isEmpty(this.zzcwb)) {
            zzmkVar.zzee(this.zzcwb);
        }
        if (this.zzcwc != 0) {
            zzmkVar.setTimeInMillis(this.zzcwc);
        }
        if (!TextUtils.isEmpty(this.mCategory)) {
            zzmkVar.zzdu(this.mCategory);
        }
        if (TextUtils.isEmpty(this.zzcvg)) {
            return;
        }
        zzmkVar.zzdw(this.zzcvg);
    }

    public void zzdu(String str) {
        this.mCategory = str;
    }

    public void zzdw(String str) {
        this.zzcvg = str;
    }

    public void zzee(String str) {
        this.zzcwb = str;
    }

    public String zzyj() {
        return this.zzcwb;
    }
}
