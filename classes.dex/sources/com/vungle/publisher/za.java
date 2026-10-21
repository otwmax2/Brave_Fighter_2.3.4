package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class za {
    public static int a(int i, int i2, int i3) {
        a(i3);
        return i3 == 1 ? a(i, i2) : b(i, i2);
    }

    public static int a(int i, int i2) {
        return c(i2, 1) | i;
    }

    public static int b(int i, int i2) {
        return c(i2, 0) & i;
    }

    static int c(int i, int i2) {
        b(i);
        int i3 = 1 << i;
        if (i2 == 0) {
            return i3 ^ (-1);
        }
        return i3;
    }

    public static void a(int i) throws IllegalArgumentException {
        if (i < 0 || i > 1) {
            throw new IllegalArgumentException("bit must be 0 or 1");
        }
    }

    static void b(int i) throws IllegalArgumentException {
        if (i < 0 || i > 31) {
            throw new IllegalArgumentException("bit index must be 0-31");
        }
    }
}
