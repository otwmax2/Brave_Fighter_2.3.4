package com.google.android.gms.internal;

import android.text.TextUtils;
import com.ironsource.sdk.constants.Constants;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class zzly extends com.google.android.gms.analytics.zzg<zzly> {
    private String zzcjj;
    private String zzcup;
    private String zzcuq;
    private String zzcur;

    public void setAppId(String str) {
        this.zzcjj = str;
    }

    public void setAppInstallerId(String str) {
        this.zzcur = str;
    }

    public void setAppName(String str) {
        this.zzcup = str;
    }

    public void setAppVersion(String str) {
        this.zzcuq = str;
    }

    public String toString() {
        HashMap map = new HashMap();
        map.put("appName", this.zzcup);
        map.put(Constants.RequestParameters.APPLICATION_VERSION_NAME, this.zzcuq);
        map.put("appId", this.zzcjj);
        map.put("appInstallerId", this.zzcur);
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzly zzlyVar) {
        if (!TextUtils.isEmpty(this.zzcup)) {
            zzlyVar.setAppName(this.zzcup);
        }
        if (!TextUtils.isEmpty(this.zzcuq)) {
            zzlyVar.setAppVersion(this.zzcuq);
        }
        if (!TextUtils.isEmpty(this.zzcjj)) {
            zzlyVar.setAppId(this.zzcjj);
        }
        if (TextUtils.isEmpty(this.zzcur)) {
            return;
        }
        zzlyVar.setAppInstallerId(this.zzcur);
    }

    public String zzsi() {
        return this.zzcjj;
    }

    public String zzxb() {
        return this.zzcup;
    }

    public String zzxc() {
        return this.zzcuq;
    }

    public String zzxd() {
        return this.zzcur;
    }
}
