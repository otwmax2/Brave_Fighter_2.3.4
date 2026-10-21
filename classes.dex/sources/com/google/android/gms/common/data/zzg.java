package com.google.android.gms.common.data;

import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class zzg<T> extends zzb<T> {
    private T we;

    public zzg(DataBuffer<T> dataBuffer) {
        super(dataBuffer);
    }

    @Override // com.google.android.gms.common.data.zzb, java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.vI).toString());
        }
        this.vI++;
        if (this.vI == 0) {
            this.we = this.vH.get(0);
            if (!(this.we instanceof zzc)) {
                String strValueOf = String.valueOf(this.we.getClass());
                throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 44).append("DataBuffer reference of type ").append(strValueOf).append(" is not movable").toString());
            }
        } else {
            ((zzc) this.we).zzfm(this.vI);
        }
        return this.we;
    }
}
