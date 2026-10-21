package com.google.android.gms.internal;

import android.text.TextUtils;
import com.facebook.share.internal.ShareConstants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzlz extends com.google.android.gms.analytics.zzg<zzlz> {
    private String mName;
    private String zzbek;
    private String zzbgk;
    private String zzcus;
    private String zzcut;
    private String zzcuu;
    private String zzcuv;
    private String zzcuw;
    private String zzcux;
    private String zzcuy;

    public String getContent() {
        return this.zzbek;
    }

    public String getId() {
        return this.zzbgk;
    }

    public String getName() {
        return this.mName;
    }

    public String getSource() {
        return this.zzcus;
    }

    public void setName(String str) {
        this.mName = str;
    }

    public String toString() {
        HashMap map = new HashMap();
        map.put("name", this.mName);
        map.put(ShareConstants.FEED_SOURCE_PARAM, this.zzcus);
        map.put("medium", this.zzcut);
        map.put("keyword", this.zzcuu);
        map.put("content", this.zzbek);
        map.put(ShareConstants.WEB_DIALOG_PARAM_ID, this.zzbgk);
        map.put("adNetworkId", this.zzcuv);
        map.put("gclid", this.zzcuw);
        map.put("dclid", this.zzcux);
        map.put("aclid", this.zzcuy);
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzlz zzlzVar) {
        if (!TextUtils.isEmpty(this.mName)) {
            zzlzVar.setName(this.mName);
        }
        if (!TextUtils.isEmpty(this.zzcus)) {
            zzlzVar.zzdk(this.zzcus);
        }
        if (!TextUtils.isEmpty(this.zzcut)) {
            zzlzVar.zzdl(this.zzcut);
        }
        if (!TextUtils.isEmpty(this.zzcuu)) {
            zzlzVar.zzdm(this.zzcuu);
        }
        if (!TextUtils.isEmpty(this.zzbek)) {
            zzlzVar.zzdn(this.zzbek);
        }
        if (!TextUtils.isEmpty(this.zzbgk)) {
            zzlzVar.zzdo(this.zzbgk);
        }
        if (!TextUtils.isEmpty(this.zzcuv)) {
            zzlzVar.zzdp(this.zzcuv);
        }
        if (!TextUtils.isEmpty(this.zzcuw)) {
            zzlzVar.zzdq(this.zzcuw);
        }
        if (!TextUtils.isEmpty(this.zzcux)) {
            zzlzVar.zzdr(this.zzcux);
        }
        if (TextUtils.isEmpty(this.zzcuy)) {
            return;
        }
        zzlzVar.zzds(this.zzcuy);
    }

    public void zzdk(String str) {
        this.zzcus = str;
    }

    public void zzdl(String str) {
        this.zzcut = str;
    }

    public void zzdm(String str) {
        this.zzcuu = str;
    }

    public void zzdn(String str) {
        this.zzbek = str;
    }

    public void zzdo(String str) {
        this.zzbgk = str;
    }

    public void zzdp(String str) {
        this.zzcuv = str;
    }

    public void zzdq(String str) {
        this.zzcuw = str;
    }

    public void zzdr(String str) {
        this.zzcux = str;
    }

    public void zzds(String str) {
        this.zzcuy = str;
    }

    public String zzxe() {
        return this.zzcut;
    }

    public String zzxf() {
        return this.zzcuu;
    }

    public String zzxg() {
        return this.zzcuv;
    }

    public String zzxh() {
        return this.zzcuw;
    }

    public String zzxi() {
        return this.zzcux;
    }

    public String zzxj() {
        return this.zzcuy;
    }
}
