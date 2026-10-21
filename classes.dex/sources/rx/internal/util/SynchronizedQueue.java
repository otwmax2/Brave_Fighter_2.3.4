package rx.internal.util;

import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Queue;

/* JADX INFO: loaded from: classes2.dex */
public class SynchronizedQueue<T> implements Queue<T>, Cloneable {
    private final Queue<T> list;
    private final int size;

    public SynchronizedQueue() {
        this.list = new LinkedList();
        this.size = -1;
    }

    public SynchronizedQueue(int size) {
        this.list = new LinkedList();
        this.size = size;
    }

    @Override // java.util.Collection
    public synchronized boolean isEmpty() {
        return this.list.isEmpty();
    }

    @Override // java.util.Collection
    public synchronized boolean contains(Object o) {
        return this.list.contains(o);
    }

    @Override // java.util.Collection, java.lang.Iterable
    public synchronized Iterator<T> iterator() {
        return this.list.iterator();
    }

    @Override // java.util.Collection
    public synchronized int size() {
        return this.list.size();
    }

    @Override // java.util.Queue, java.util.Collection
    public synchronized boolean add(T e) {
        return this.list.add(e);
    }

    @Override // java.util.Collection
    public synchronized boolean remove(Object o) {
        return this.list.remove(o);
    }

    @Override // java.util.Collection
    public synchronized boolean containsAll(Collection<?> c) {
        return this.list.containsAll(c);
    }

    @Override // java.util.Collection
    public synchronized boolean addAll(Collection<? extends T> c) {
        return this.list.addAll(c);
    }

    @Override // java.util.Collection
    public synchronized boolean removeAll(Collection<?> c) {
        return this.list.removeAll(c);
    }

    @Override // java.util.Collection
    public synchronized boolean retainAll(Collection<?> c) {
        return this.list.retainAll(c);
    }

    @Override // java.util.Collection
    public synchronized void clear() {
        this.list.clear();
    }

    public synchronized String toString() {
        return this.list.toString();
    }

    @Override // java.util.Collection
    public int hashCode() {
        return this.list.hashCode();
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        SynchronizedQueue<?> other = (SynchronizedQueue) obj;
        return this.list.equals(other.list);
    }

    @Override // java.util.Queue
    public synchronized T peek() {
        return this.list.peek();
    }

    @Override // java.util.Queue
    public synchronized T element() {
        return this.list.element();
    }

    @Override // java.util.Queue
    public synchronized T poll() {
        return this.list.poll();
    }

    @Override // java.util.Queue
    public synchronized T remove() {
        return this.list.remove();
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d  */
    @Override // java.util.Queue
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean offer(T r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            int r0 = r2.size     // Catch: java.lang.Throwable -> L1f
            r1 = -1
            if (r0 <= r1) goto L12
            java.util.Queue<T> r0 = r2.list     // Catch: java.lang.Throwable -> L1f
            int r0 = r0.size()     // Catch: java.lang.Throwable -> L1f
            int r0 = r0 + 1
            int r1 = r2.size     // Catch: java.lang.Throwable -> L1f
            if (r0 > r1) goto L1d
        L12:
            java.util.Queue<T> r0 = r2.list     // Catch: java.lang.Throwable -> L1f
            boolean r0 = r0.offer(r3)     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto L1d
            r0 = 1
        L1b:
            monitor-exit(r2)
            return r0
        L1d:
            r0 = 0
            goto L1b
        L1f:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.SynchronizedQueue.offer(java.lang.Object):boolean");
    }

    public synchronized Object clone() {
        SynchronizedQueue<T> q;
        q = new SynchronizedQueue<>(this.size);
        q.addAll(this.list);
        return q;
    }

    @Override // java.util.Collection
    public synchronized Object[] toArray() {
        return this.list.toArray();
    }

    @Override // java.util.Collection
    public synchronized <R> R[] toArray(R[] rArr) {
        return (R[]) this.list.toArray(rArr);
    }
}
