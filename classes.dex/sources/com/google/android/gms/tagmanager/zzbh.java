package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.util.LruCache;
import com.google.android.gms.tagmanager.zzm;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(12)
class zzbh<K, V> implements zzl<K, V> {
    private LruCache<K, V> awJ;

    zzbh(int i, final zzm.zza<K, V> zzaVar) {
        this.awJ = new LruCache<K, V>(i) { // from class: com.google.android.gms.tagmanager.zzbh.1
            @Override // android.util.LruCache
            protected int sizeOf(K k, V v) {
                return zzaVar.sizeOf(k, v);
            }
        };
    }

    @Override // com.google.android.gms.tagmanager.zzl
    public V get(K k) {
        return this.awJ.get(k);
    }

    @Override // com.google.android.gms.tagmanager.zzl
    public void zzi(K k, V v) {
        this.awJ.put(k, v);
    }
}
