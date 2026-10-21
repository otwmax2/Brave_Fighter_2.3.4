package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzai;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
abstract class zzal {
    private final Set<String> awn;
    private final String awo;

    public zzal(String str, String... strArr) {
        this.awo = str;
        this.awn = new HashSet(strArr.length);
        for (String str2 : strArr) {
            this.awn.add(str2);
        }
    }

    public abstract zzai.zza zzav(Map<String, zzai.zza> map);

    public abstract boolean zzcac();

    public String zzcbl() {
        return this.awo;
    }

    public Set<String> zzcbm() {
        return this.awn;
    }

    boolean zzf(Set<String> set) {
        return set.containsAll(this.awn);
    }
}
