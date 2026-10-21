package com.google.android.gms.tagmanager;

import com.google.android.gms.tagmanager.zzm;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class zzdd<K, V> implements zzl<K, V> {
    private int ayA;
    private final Map<K, V> ayx = new HashMap();
    private final int ayy;
    private final zzm.zza<K, V> ayz;

    zzdd(int i, zzm.zza<K, V> zzaVar) {
        this.ayy = i;
        this.ayz = zzaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzl
    public synchronized V get(K k) {
        return this.ayx.get(k);
    }

    @Override // com.google.android.gms.tagmanager.zzl
    public synchronized void zzi(K k, V v) {
        if (k == null || v == null) {
            throw new NullPointerException("key == null || value == null");
        }
        this.ayA += this.ayz.sizeOf(k, v);
        if (this.ayA > this.ayy) {
            Iterator<Map.Entry<K, V>> it = this.ayx.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                this.ayA -= this.ayz.sizeOf(next.getKey(), next.getValue());
                it.remove();
                if (this.ayA <= this.ayy) {
                    break;
                }
            }
        }
        this.ayx.put(k, v);
    }
}
