package rx.internal.util;

import android.R;
import java.util.Arrays;
import rx.functions.Action1;
import rx.internal.util.unsafe.Pow2;

/* JADX INFO: loaded from: classes2.dex */
public final class OpenHashSet<T> {
    private static final int INT_PHI = -1640531527;
    T[] keys;
    final float loadFactor;
    int mask;
    int maxSize;
    int size;

    public OpenHashSet() {
        this(16, 0.75f);
    }

    public OpenHashSet(int capacity) {
        this(capacity, 0.75f);
    }

    public OpenHashSet(int i, float f) {
        this.loadFactor = f;
        int iRoundToPowerOfTwo = Pow2.roundToPowerOfTwo(i);
        this.mask = iRoundToPowerOfTwo - 1;
        this.maxSize = (int) (iRoundToPowerOfTwo * f);
        this.keys = (T[]) new Object[iRoundToPowerOfTwo];
    }

    public boolean add(T value) {
        T curr;
        T[] a = this.keys;
        int m = this.mask;
        int pos = mix(value.hashCode()) & m;
        T curr2 = a[pos];
        if (curr2 != null) {
            if (curr2.equals(value)) {
                return false;
            }
            do {
                pos = (pos + 1) & m;
                curr = a[pos];
                if (curr == null) {
                }
            } while (!curr.equals(value));
            return false;
        }
        a[pos] = value;
        int i = this.size + 1;
        this.size = i;
        if (i >= this.maxSize) {
            rehash();
        }
        return true;
    }

    public boolean remove(T value) {
        T curr;
        T[] a = this.keys;
        int m = this.mask;
        int pos = mix(value.hashCode()) & m;
        T curr2 = a[pos];
        if (curr2 == null) {
            return false;
        }
        if (curr2.equals(value)) {
            return removeEntry(pos, a, m);
        }
        do {
            pos = (pos + 1) & m;
            curr = a[pos];
            if (curr == null) {
                return false;
            }
        } while (!curr.equals(value));
        return removeEntry(pos, a, m);
    }

    boolean removeEntry(int pos, T[] a, int m) {
        T curr;
        this.size--;
        while (true) {
            int last = pos;
            while (true) {
                pos = (pos + 1) & m;
                curr = a[pos];
                if (curr == null) {
                    a[last] = null;
                    return true;
                }
                int slot = mix(curr.hashCode()) & m;
                if (last <= pos) {
                    if (last >= slot || slot > pos) {
                        break;
                    }
                } else if (last < slot || slot <= pos) {
                }
            }
            a[last] = curr;
        }
    }

    public void clear(Action1<? super T> action1) {
        if (this.size != 0) {
            T[] tArr = this.keys;
            for (R.bool boolVar : tArr) {
                if (boolVar != null) {
                    action1.call(boolVar);
                }
            }
            Arrays.fill(tArr, (Object) null);
            this.size = 0;
        }
    }

    public void terminate() {
        this.size = 0;
        this.keys = (T[]) new Object[0];
    }

    void rehash() {
        T[] tArr = this.keys;
        int length = tArr.length;
        int i = length << 1;
        int i2 = i - 1;
        T[] tArr2 = (T[]) new Object[i];
        int i3 = this.size;
        while (true) {
            int i4 = i3;
            i3 = i4 - 1;
            if (i4 != 0) {
                do {
                    length--;
                } while (tArr[length] == null);
                int iMix = mix(tArr[length].hashCode()) & i2;
                if (tArr2[iMix] != null) {
                    do {
                        iMix = (iMix + 1) & i2;
                    } while (tArr2[iMix] != null);
                }
                tArr2[iMix] = tArr[length];
            } else {
                this.mask = i2;
                this.maxSize = (int) (i * this.loadFactor);
                this.keys = tArr2;
                return;
            }
        }
    }

    static int mix(int x) {
        int h = x * INT_PHI;
        return (h >>> 16) ^ h;
    }

    public boolean isEmpty() {
        return this.size == 0;
    }

    public T[] values() {
        return this.keys;
    }
}
