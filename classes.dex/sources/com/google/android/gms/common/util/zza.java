package com.google.android.gms.common.util;

import android.support.v4.util.ArrayMap;
import android.support.v4.util.SimpleArrayMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public class zza<E> extends AbstractSet<E> {
    private final ArrayMap<E, E> AJ;

    public zza() {
        this.AJ = new ArrayMap<>();
    }

    public zza(int i) {
        this.AJ = new ArrayMap<>(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public zza(Collection<E> collection) {
        this(collection.size());
        addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean add(E e) {
        if (this.AJ.containsKey(e)) {
            return false;
        }
        this.AJ.put(e, e);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        return collection instanceof zza ? zza((zza) collection) : super.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public void clear() {
        this.AJ.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return this.AJ.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return this.AJ.keySet().iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        if (!this.AJ.containsKey(obj)) {
            return false;
        }
        this.AJ.remove(obj);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.AJ.size();
    }

    public boolean zza(zza<? extends E> zzaVar) {
        int size = size();
        this.AJ.putAll((SimpleArrayMap<? extends E, ? extends E>) zzaVar.AJ);
        return size() > size;
    }
}
