package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.Looper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class zzbv<L, W extends IInterface> {
    private final Looper zzahv;
    private final zza<L, W> zzahw;
    private final HashMap<L, W> zzahx = new HashMap<>();

    public interface zza<L, W extends IInterface> {
        W zza(L l, Looper looper);
    }

    public zzbv(Looper looper, zza<L, W> zzaVar) {
        this.zzahv = looper;
        this.zzahw = zzaVar;
    }

    public W zzc(L l) {
        W w = this.zzahx.get(l);
        if (w != null) {
            return w;
        }
        W w2 = (W) this.zzahw.zza(l, this.zzahv);
        this.zzahx.put(l, w2);
        return w2;
    }
}
