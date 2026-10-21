package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzmb extends com.google.android.gms.analytics.zzg<zzmb> {
    private Map<Integer, Double> zzcva = new HashMap(4);

    public String toString() {
        HashMap map = new HashMap();
        for (Map.Entry<Integer, Double> entry : this.zzcva.entrySet()) {
            String strValueOf = String.valueOf(entry.getKey());
            map.put(new StringBuilder(String.valueOf(strValueOf).length() + 6).append("metric").append(strValueOf).toString(), entry.getValue());
        }
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzmb zzmbVar) {
        zzmbVar.zzcva.putAll(this.zzcva);
    }

    public Map<Integer, Double> zzxl() {
        return Collections.unmodifiableMap(this.zzcva);
    }
}
