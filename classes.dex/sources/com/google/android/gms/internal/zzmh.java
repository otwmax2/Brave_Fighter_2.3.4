package com.google.android.gms.internal;

import android.text.TextUtils;
import com.ironsource.mediationsdk.utils.ServerResponseWrapper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzmh extends com.google.android.gms.analytics.zzg<zzmh> {
    private String zzcvk;
    private String zzcvl;
    private String zzcvm;
    private String zzcvn;
    private boolean zzcvo;
    private String zzcvp;
    private boolean zzcvq;
    private double zzcvr;

    public String getUserId() {
        return this.zzcvm;
    }

    public void setClientId(String str) {
        this.zzcvl = str;
    }

    public void setSampleRate(double d) {
        com.google.android.gms.common.internal.zzab.zzb(d >= 0.0d && d <= 100.0d, "Sample rate must be between 0% and 100%");
        this.zzcvr = d;
    }

    public void setUserId(String str) {
        this.zzcvm = str;
    }

    public String toString() {
        HashMap map = new HashMap();
        map.put("hitType", this.zzcvk);
        map.put("clientId", this.zzcvl);
        map.put(ServerResponseWrapper.USER_ID_FIELD, this.zzcvm);
        map.put("androidAdId", this.zzcvn);
        map.put("AdTargetingEnabled", Boolean.valueOf(this.zzcvo));
        map.put("sessionControl", this.zzcvp);
        map.put("nonInteraction", Boolean.valueOf(this.zzcvq));
        map.put("sampleRate", Double.valueOf(this.zzcvr));
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzmh zzmhVar) {
        if (!TextUtils.isEmpty(this.zzcvk)) {
            zzmhVar.zzdx(this.zzcvk);
        }
        if (!TextUtils.isEmpty(this.zzcvl)) {
            zzmhVar.setClientId(this.zzcvl);
        }
        if (!TextUtils.isEmpty(this.zzcvm)) {
            zzmhVar.setUserId(this.zzcvm);
        }
        if (!TextUtils.isEmpty(this.zzcvn)) {
            zzmhVar.zzdy(this.zzcvn);
        }
        if (this.zzcvo) {
            zzmhVar.zzao(true);
        }
        if (!TextUtils.isEmpty(this.zzcvp)) {
            zzmhVar.zzdz(this.zzcvp);
        }
        if (this.zzcvq) {
            zzmhVar.zzap(this.zzcvq);
        }
        if (this.zzcvr != 0.0d) {
            zzmhVar.setSampleRate(this.zzcvr);
        }
    }

    public void zzao(boolean z) {
        this.zzcvo = z;
    }

    public void zzap(boolean z) {
        this.zzcvq = z;
    }

    public void zzdx(String str) {
        this.zzcvk = str;
    }

    public void zzdy(String str) {
        this.zzcvn = str;
    }

    public void zzdz(String str) {
        this.zzcvp = str;
    }

    public String zzwb() {
        return this.zzcvl;
    }

    public String zzxx() {
        return this.zzcvk;
    }

    public String zzxy() {
        return this.zzcvn;
    }

    public boolean zzxz() {
        return this.zzcvo;
    }

    public String zzya() {
        return this.zzcvp;
    }

    public boolean zzyb() {
        return this.zzcvq;
    }

    public double zzyc() {
        return this.zzcvr;
    }
}
