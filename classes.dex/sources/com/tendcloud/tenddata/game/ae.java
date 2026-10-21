package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
final class ae {
    static final int[] a = new int[256];
    private static final int b = -306674912;
    private static final int c = 1024;
    private static final int d = 1023;
    private static final int e = 65536;
    private static final int f = 65535;
    private final int g;
    private final int[] j;
    private final int[] h = new int[1024];
    private final int[] i = new int[65536];
    private int k = 0;
    private int l = 0;
    private int m = 0;

    static {
        for (int i = 0; i < 256; i++) {
            int i2 = i;
            for (int i3 = 0; i3 < 8; i3++) {
                i2 = (i2 & 1) != 0 ? (i2 >>> 1) ^ b : i2 >>> 1;
            }
            a[i] = i2;
        }
    }

    ae(int i) {
        this.j = new int[a(i)];
        this.g = this.j.length - 1;
    }

    static int a(int i) {
        int i2 = i - 1;
        int i3 = i2 | (i2 >>> 1);
        int i4 = i3 | (i3 >>> 2);
        int i5 = i4 | (i4 >>> 4);
        int i6 = ((i5 | (i5 >>> 8)) >>> 1) | 65535;
        if (i6 > 16777216) {
            i6 >>>= 1;
        }
        return i6 + 1;
    }

    static int b(int i) {
        return ((66560 + a(i)) / 256) + 4;
    }

    int a() {
        return this.h[this.k];
    }

    void a(byte[] bArr, int i) {
        int i2 = a[bArr[i] & 255] ^ (bArr[i + 1] & 255);
        this.k = i2 & d;
        int i3 = i2 ^ ((bArr[i + 2] & 255) << 8);
        this.l = 65535 & i3;
        this.m = (i3 ^ (a[bArr[i + 3] & 255] << 5)) & this.g;
    }

    int b() {
        return this.i[this.l];
    }

    int c() {
        return this.j[this.m];
    }

    void c(int i) {
        this.h[this.k] = i;
        this.i[this.l] = i;
        this.j[this.m] = i;
    }

    void d(int i) {
        ad.a(this.h, i);
        ad.a(this.i, i);
        ad.a(this.j, i);
    }
}
