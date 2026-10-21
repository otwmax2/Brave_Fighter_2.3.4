package com.google.android.gms.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzma extends com.google.android.gms.analytics.zzg<zzma> {
    private Map<Integer, String> zzcuz = new HashMap(4);

    public String toString() {
        HashMap map = new HashMap();
        for (Map.Entry<Integer, String> entry : this.zzcuz.entrySet()) {
            String strValueOf = String.valueOf(entry.getKey());
            map.put(new StringBuilder(String.valueOf(strValueOf).length() + 9).append("dimension").append(strValueOf).toString(), entry.getValue());
        }
        return zzk(map);
    }

    @Override // com.google.android.gms.analytics.zzg
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public void zzb(zzma zzmaVar) {
        zzmaVar.zzcuz.putAll(this.zzcuz);
    }

    public Map<Integer, String> zzxk() {
        return Collections.unmodifiableMap(this.zzcuz);
    }
}
