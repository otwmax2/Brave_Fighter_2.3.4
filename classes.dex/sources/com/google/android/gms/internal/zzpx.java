package com.google.android.gms.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.zzqs;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzpx<L> implements zzqs.zzb<L> {
    private final DataHolder tk;

    protected zzpx(DataHolder dataHolder) {
        this.tk = dataHolder;
    }

    protected abstract void zza(L l, DataHolder dataHolder);

    @Override // com.google.android.gms.internal.zzqs.zzb
    public void zzapg() {
        if (this.tk != null) {
            this.tk.close();
        }
    }

    @Override // com.google.android.gms.internal.zzqs.zzb
    public final void zzu(L l) {
        zza(l, this.tk);
    }
}
