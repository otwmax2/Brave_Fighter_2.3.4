package com.google.android.gms.common.data;

import com.google.android.gms.common.internal.zzab;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes.dex */
public class zzb<T> implements Iterator<T> {
    protected final DataBuffer<T> vH;
    protected int vI = -1;

    public zzb(DataBuffer<T> dataBuffer) {
        this.vH = (DataBuffer) zzab.zzaa(dataBuffer);
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.vI < this.vH.getCount() + (-1);
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException(new StringBuilder(46).append("Cannot advance the iterator beyond ").append(this.vI).toString());
        }
        DataBuffer<T> dataBuffer = this.vH;
        int i = this.vI + 1;
        this.vI = i;
        return dataBuffer.get(i);
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Cannot remove elements from a DataBufferIterator");
    }
}
