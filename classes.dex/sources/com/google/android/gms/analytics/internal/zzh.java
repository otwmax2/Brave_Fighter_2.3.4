package com.google.android.gms.analytics.internal;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class zzh {
    private final Map<String, String> zzbee;
    private final String zzcvl;
    private final long zzcxl;
    private final String zzcxm;
    private final boolean zzcxn;
    private long zzcxo;

    public zzh(long j, String str, String str2, boolean z, long j2, Map<String, String> map) {
        com.google.android.gms.common.internal.zzab.zzhs(str);
        com.google.android.gms.common.internal.zzab.zzhs(str2);
        this.zzcxl = j;
        this.zzcvl = str;
        this.zzcxm = str2;
        this.zzcxn = z;
        this.zzcxo = j2;
        if (map != null) {
            this.zzbee = new HashMap(map);
        } else {
            this.zzbee = Collections.emptyMap();
        }
    }

    public Map<String, String> zzm() {
        return this.zzbee;
    }

    public void zzp(long j) {
        this.zzcxo = j;
    }

    public String zzwb() {
        return this.zzcvl;
    }

    public long zzzo() {
        return this.zzcxl;
    }

    public String zzzp() {
        return this.zzcxm;
    }

    public boolean zzzq() {
        return this.zzcxn;
    }

    public long zzzr() {
        return this.zzcxo;
    }
}
