package com.tendcloud.tenddata.game;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class al {
    static final int a = 8;
    static final int b = -16777216;
    static final int c = 11;
    static final int d = 2048;
    static final short e = 1024;
    static final int f = 5;
    static final /* synthetic */ boolean g;
    private static final int h = 4;
    private static final int i = 4;
    private static final int[] j;
    private long k;
    private int l;
    private int m;
    private byte n;
    private final byte[] o;
    private int p;

    static {
        g = !al.class.desiredAssertionStatus();
        j = new int[128];
        for (int i2 = 8; i2 < 2048; i2 += 16) {
            int i3 = 0;
            int i4 = i2;
            for (int i5 = 0; i5 < 4; i5++) {
                i4 *= i4;
                i3 <<= 1;
                while (((-65536) & i4) != 0) {
                    i4 >>>= 1;
                    i3++;
                }
            }
            j[i2 >> 4] = 161 - i3;
        }
    }

    public al(int i2) {
        this.o = new byte[i2];
        a();
    }

    public static int a(int i2) {
        return i2 << 4;
    }

    public static int a(int i2, int i3) {
        if (g || i3 == 0 || i3 == 1) {
            return j[(((-i3) & 2047) ^ i2) >>> 4];
        }
        throw new AssertionError();
    }

    public static final void a(short[] sArr) {
        Arrays.fill(sArr, e);
    }

    public static int b(short[] sArr, int i2) {
        int iA = 0;
        int length = sArr.length | i2;
        do {
            int i3 = length & 1;
            length >>>= 1;
            iA += a(sArr[length], i3);
        } while (length != 1);
        return iA;
    }

    public static int d(short[] sArr, int i2) {
        int length = sArr.length | i2;
        int iA = 0;
        int i3 = 1;
        do {
            int i4 = length & 1;
            length >>>= 1;
            iA += a(sArr[i3], i4);
            i3 = (i3 << 1) | i4;
        } while (length != 1);
        return iA;
    }

    private void d() {
        int i2;
        int i3 = (int) (this.k >>> 32);
        if (i3 != 0 || this.k < 4278190080L) {
            byte b2 = this.n;
            do {
                byte[] bArr = this.o;
                int i4 = this.p;
                this.p = i4 + 1;
                bArr[i4] = (byte) (b2 + i3);
                b2 = 255;
                i2 = this.m - 1;
                this.m = i2;
            } while (i2 != 0);
            this.n = (byte) (this.k >>> 24);
        }
        this.m++;
        this.k = (this.k & 16777215) << 8;
    }

    public void a() {
        this.k = 0L;
        this.l = -1;
        this.n = (byte) 0;
        this.m = 1;
        this.p = 0;
    }

    public void a(OutputStream outputStream) throws IOException {
        outputStream.write(this.o, 0, this.p);
    }

    public void a(short[] sArr, int i2) {
        int length = sArr.length;
        int i3 = 1;
        do {
            length >>>= 1;
            int i4 = i2 & length;
            a(sArr, i3, i4);
            i3 <<= 1;
            if (i4 != 0) {
                i3 |= 1;
            }
        } while (length != 1);
    }

    public void a(short[] sArr, int i2, int i3) {
        short s = sArr[i2];
        int i4 = (this.l >>> 11) * s;
        if (i3 == 0) {
            this.l = i4;
            sArr[i2] = (short) (s + ((2048 - s) >>> 5));
        } else {
            this.k += ((long) i4) & 4294967295L;
            this.l -= i4;
            sArr[i2] = (short) (s - (s >>> 5));
        }
        if ((this.l & (-16777216)) == 0) {
            this.l <<= 8;
            d();
        }
    }

    public int b() {
        return ((this.p + this.m) + 5) - 1;
    }

    public void b(int i2, int i3) {
        do {
            this.l >>>= 1;
            i3--;
            this.k += (long) (this.l & (0 - ((i2 >>> i3) & 1)));
            if ((this.l & (-16777216)) == 0) {
                this.l <<= 8;
                d();
            }
        } while (i3 != 0);
    }

    public int c() {
        for (int i2 = 0; i2 < 5; i2++) {
            d();
        }
        return this.p;
    }

    public void c(short[] sArr, int i2) {
        int length = sArr.length | i2;
        int i3 = 1;
        do {
            int i4 = length & 1;
            length >>>= 1;
            a(sArr, i3, i4);
            i3 = (i3 << 1) | i4;
        } while (length != 1);
    }
}
