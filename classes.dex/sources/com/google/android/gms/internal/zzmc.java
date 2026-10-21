package com.google.android.gms.internal;

import com.ironsource.sdk.constants.Constants;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzmc extends com.google.android.gms.analytics.zzg<zzmc> {
    private final Map<String, Object> zzbee = new HashMap();

    private String zzdt(String str) {
        com.google.android.gms.common.internal.zzab.zzhs(str);
        if (str != null && str.startsWith(Constants.RequestParameters.AMPERSAND)) {
            str = str.substring(1);
        }
        com.google.android.gms.common.internal.zzab.zzh(str, "Name can not be empty or \"&\"");
        return str;
    }

    public void set(String str, String str2) {
        this.zzbee.put(zzdt(str), str2);
    }

    public String toString() {
        return zzk(this.zzbee);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzmc zzmcVar) {
        com.google.android.gms.common.internal.zzab.zzaa(zzmcVar);
        zzmcVar.zzbee.putAll(this.zzbee);
    }

    public Map<String, Object> zzxm() {
        return Collections.unmodifiableMap(this.zzbee);
    }
}
