package com.tendcloud.tenddata.game;

import android.support.v4.widget.ExploreByTouchHelper;
import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes.dex */
public abstract class ag {
    static final /* synthetic */ boolean F;
    private static final int G = 2096879;
    private static final int H = 8166;
    private static final int I = 128;
    private static final int J = 16;
    static final int a = 16;
    static final int b = 2;
    static final int c = 273;
    static final int d = 4;
    static final int e = 64;
    static final int f = 4;
    static final int g = 14;
    static final int h = 128;
    static final int i = 4;
    static final int j = 16;
    static final int k = 15;
    static final int l = 4;
    final a A;
    final a B;
    final int C;
    private final al K;
    private final int N;
    private final int[][] O;
    final int m;
    final ad y;
    final b z;
    final int[] n = new int[4];
    final am o = new am();
    final short[][] p = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 12, 16);
    final short[] q = new short[12];
    final short[] r = new short[12];
    final short[] s = new short[12];
    final short[] t = new short[12];
    final short[][] u = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 12, 16);
    final short[][] v = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 4, 64);
    final short[][] w = {new short[2], new short[2], new short[4], new short[4], new short[8], new short[8], new short[16], new short[16], new short[32], new short[32]};
    final short[] x = new short[16];
    private int L = 0;
    private int M = 0;
    private final int[][] P = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, 128);
    private final int[] Q = new int[16];
    int D = 0;
    int E = -1;
    private int R = 0;

    class a {
        static final int a = 8;
        static final int b = 8;
        static final int c = 256;
        private static final int i = 32;
        final short[] d = new short[2];
        final short[][] e = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 16, 8);
        final short[][] f = (short[][]) Array.newInstance((Class<?>) Short.TYPE, 16, 8);
        final short[] g = new short[256];
        private final int[] j;
        private final int[][] k;

        a(int i2, int i3) {
            int i4 = 1 << i2;
            this.j = new int[i4];
            this.k = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, i4, Math.max((i3 - 2) + 1, 16));
        }

        private void a(int i2) {
            int iA = al.a(this.d[0], 0);
            int i3 = 0;
            while (i3 < 8) {
                this.k[i2][i3] = al.b(this.e[i2], i3) + iA;
                i3++;
            }
            int iA2 = al.a(this.d[0], 1);
            int iA3 = al.a(this.d[1], 0);
            while (i3 < 16) {
                this.k[i2][i3] = iA2 + iA3 + al.b(this.f[i2], i3 - 8);
                i3++;
            }
            int iA4 = al.a(this.d[1], 1);
            while (i3 < this.k[i2].length) {
                this.k[i2][i3] = iA2 + iA4 + al.b(this.g, (i3 - 8) - 8);
                i3++;
            }
        }

        void a() {
            al.a(this.d);
            for (int i2 = 0; i2 < this.e.length; i2++) {
                al.a(this.e[i2]);
            }
            for (int i3 = 0; i3 < this.e.length; i3++) {
                al.a(this.f[i3]);
            }
            al.a(this.g);
            for (int i4 = 0; i4 < this.j.length; i4++) {
                this.j[i4] = 0;
            }
        }

        void a(int i2, int i3) {
            int i4 = i2 - 2;
            if (i4 < 8) {
                ag.this.K.a(this.d, 0, 0);
                ag.this.K.a(this.e[i3], i4);
            } else {
                ag.this.K.a(this.d, 0, 1);
                int i5 = i4 - 8;
                if (i5 < 8) {
                    ag.this.K.a(this.d, 1, 0);
                    ag.this.K.a(this.f[i3], i5);
                } else {
                    ag.this.K.a(this.d, 1, 1);
                    ag.this.K.a(this.g, i5 - 8);
                }
            }
            this.j[i3] = r0[i3] - 1;
        }

        int b(int i2, int i3) {
            return this.k[i3][i2 - 2];
        }

        void b() {
            for (int i2 = 0; i2 < this.j.length; i2++) {
                if (this.j[i2] <= 0) {
                    this.j[i2] = 32;
                    a(i2);
                }
            }
        }
    }

    class b {
        static final /* synthetic */ boolean b;
        a[] a;
        private final int d;
        private final int e;

        class a {
            final short[] a;

            private a() {
                this.a = new short[768];
            }

            int a(int i) {
                int iA = 0;
                int i2 = i | 256;
                do {
                    iA += al.a(this.a[i2 >>> 8], (i2 >>> 7) & 1);
                    i2 <<= 1;
                } while (i2 < 65536);
                return iA;
            }

            int a(int i, int i2) {
                int iA = 0;
                int i3 = 256;
                int i4 = i | 256;
                do {
                    i2 <<= 1;
                    iA += al.a(this.a[(i2 & i3) + i3 + (i4 >>> 8)], (i4 >>> 7) & 1);
                    i4 <<= 1;
                    i3 &= (i2 ^ i4) ^ (-1);
                } while (i4 < 65536);
                return iA;
            }

            void a() {
                al.a(this.a);
            }

            void b() {
                int iC = ag.this.y.c(ag.this.E) | 256;
                if (ag.this.o.g()) {
                    do {
                        ag.this.K.a(this.a, iC >>> 8, (iC >>> 7) & 1);
                        iC <<= 1;
                    } while (iC < 65536);
                } else {
                    int iC2 = ag.this.y.c(ag.this.n[0] + 1 + ag.this.E);
                    int i = iC;
                    int i2 = 256;
                    do {
                        iC2 <<= 1;
                        ag.this.K.a(this.a, (iC2 & i2) + i2 + (i >>> 8), (i >>> 7) & 1);
                        i <<= 1;
                        i2 &= (iC2 ^ i) ^ (-1);
                    } while (i < 65536);
                }
                ag.this.o.c();
            }
        }

        static {
            b = !ag.class.desiredAssertionStatus();
        }

        b(int i, int i2) {
            this.d = i;
            this.e = (1 << i2) - 1;
            this.a = new a[1 << (i + i2)];
            for (int i3 = 0; i3 < this.a.length; i3++) {
                this.a[i3] = new a();
            }
        }

        final int a(int i, int i2) {
            return (i >> (8 - this.d)) + ((this.e & i2) << this.d);
        }

        int a(int i, int i2, int i3, int i4, am amVar) {
            int iA = al.a(ag.this.p[amVar.b()][ag.this.m & i4], 0);
            int iA2 = a(i3, i4);
            return (amVar.g() ? this.a[iA2].a(i) : this.a[iA2].a(i, i2)) + iA;
        }

        void a() {
            for (int i = 0; i < this.a.length; i++) {
                this.a[i].a();
            }
        }

        void b() {
            if (!b && ag.this.E < 0) {
                throw new AssertionError();
            }
            this.a[0].b();
        }

        void c() {
            if (!b && ag.this.E < 0) {
                throw new AssertionError();
            }
            this.a[a(ag.this.y.c(ag.this.E + 1), ag.this.y.f() - ag.this.E)].b();
        }
    }

    static {
        F = !ag.class.desiredAssertionStatus();
    }

    ag(al alVar, ad adVar, int i2, int i3, int i4, int i5, int i6) {
        this.m = (1 << i4) - 1;
        this.K = alVar;
        this.y = adVar;
        this.C = i6;
        this.z = new b(i2, i3);
        this.A = new a(i4, i6);
        this.B = new a(i4, i6);
        this.N = b(i5 - 1) + 1;
        this.O = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 4, this.N);
        c();
    }

    static final int a(int i2) {
        if (i2 < 6) {
            return i2 - 2;
        }
        return 3;
    }

    public static ag a(al alVar, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return Runtime.getRuntime().availableProcessors() <= 2 ? new ah(alVar, i2, i3, i4, i5, i6, i7, i8) : new ai(alVar, i2, i3, i4, i5, i6, i7, i8);
    }

    private void a(int i2, int i3, int i4) {
        this.o.d();
        this.A.a(i3, i4);
        int iB = b(i2);
        this.K.a(this.v[a(i3)], iB);
        if (iB >= 4) {
            int i5 = (iB >>> 1) - 1;
            int i6 = i2 - (((iB & 1) | 2) << i5);
            if (iB < 14) {
                this.K.c(this.w[iB - 4], i6);
            } else {
                this.K.b(i6 >>> 4, i5 - 4);
                this.K.c(this.x, i6 & 15);
                this.M--;
            }
        }
        this.n[3] = this.n[2];
        this.n[2] = this.n[1];
        this.n[1] = this.n[0];
        this.n[0] = i2;
        this.L--;
    }

    public static int b(int i2) {
        int i3;
        if (i2 <= 4) {
            return i2;
        }
        int i4 = 31;
        if (((-65536) & i2) == 0) {
            i3 = i2 << 16;
            i4 = 15;
        } else {
            i3 = i2;
        }
        if (((-16777216) & i3) == 0) {
            i3 <<= 8;
            i4 -= 8;
        }
        if (((-268435456) & i3) == 0) {
            i3 <<= 4;
            i4 -= 4;
        }
        if (((-1073741824) & i3) == 0) {
            i3 <<= 2;
            i4 -= 2;
        }
        if ((i3 & ExploreByTouchHelper.INVALID_ID) == 0) {
            i4--;
        }
        return (i4 << 1) + ((i2 >>> (i4 - 1)) & 1);
    }

    private void b(int i2, int i3, int i4) {
        if (i2 == 0) {
            this.K.a(this.r, this.o.b(), 0);
            this.K.a(this.u[this.o.b()], i4, i3 != 1 ? 1 : 0);
        } else {
            int i5 = this.n[i2];
            this.K.a(this.r, this.o.b(), 1);
            if (i2 == 1) {
                this.K.a(this.s, this.o.b(), 0);
            } else {
                this.K.a(this.s, this.o.b(), 1);
                this.K.a(this.t, this.o.b(), i2 - 2);
                if (i2 == 3) {
                    this.n[3] = this.n[2];
                }
                this.n[2] = this.n[1];
            }
            this.n[1] = this.n[0];
            this.n[0] = i5;
        }
        if (i3 == 1) {
            this.o.f();
        } else {
            this.B.a(i3, i4);
            this.o.e();
        }
    }

    private boolean i() {
        if (!F && this.E != -1) {
            throw new AssertionError();
        }
        if (!this.y.b(0)) {
            return false;
        }
        c(1);
        this.K.a(this.p[this.o.b()], 0, 0);
        this.z.b();
        this.E--;
        if (!F && this.E != -1) {
            throw new AssertionError();
        }
        this.R++;
        if (F || this.R == 1) {
            return true;
        }
        throw new AssertionError();
    }

    private boolean j() {
        if (!this.y.b(this.E + 1)) {
            return false;
        }
        int iA = a();
        if (!F && this.E < 0) {
            throw new AssertionError();
        }
        int iF = (this.y.f() - this.E) & this.m;
        if (this.D != -1) {
            this.K.a(this.p[this.o.b()], iF, 1);
            if (this.D < 4) {
                if (!F && this.y.a(-this.E, this.n[this.D], iA) != iA) {
                    throw new AssertionError();
                }
                this.K.a(this.q, this.o.b(), 1);
                b(this.D, iA, iF);
            } else {
                if (!F && this.y.a(-this.E, this.D - 4, iA) != iA) {
                    throw new AssertionError();
                }
                this.K.a(this.q, this.o.b(), 0);
                a(this.D - 4, iA, iF);
            }
        } else {
            if (!F && iA != 1) {
                throw new AssertionError();
            }
            this.K.a(this.p[this.o.b()], iF, 0);
            this.z.c();
        }
        this.E -= iA;
        this.R += iA;
        return true;
    }

    private void k() {
        this.L = 128;
        for (int i2 = 0; i2 < 4; i2++) {
            for (int i3 = 0; i3 < this.N; i3++) {
                this.O[i2][i3] = al.b(this.v[i2], i3);
            }
            for (int i4 = 14; i4 < this.N; i4++) {
                int[] iArr = this.O[i2];
                iArr[i4] = al.a(((i4 >>> 1) - 1) - 4) + iArr[i4];
            }
            for (int i5 = 0; i5 < 4; i5++) {
                this.P[i2][i5] = this.O[i2][i5];
            }
        }
        int i6 = 4;
        int i7 = 4;
        while (i6 < 14) {
            int i8 = ((i6 & 1) | 2) << ((i6 >>> 1) - 1);
            int length = this.w[i6 - 4].length;
            int i9 = i7;
            for (int i10 = 0; i10 < length; i10++) {
                int iD = al.d(this.w[i6 - 4], i9 - i8);
                for (int i11 = 0; i11 < 4; i11++) {
                    this.P[i11][i9] = this.O[i11][i6] + iD;
                }
                i9++;
            }
            i6++;
            i7 = i9;
        }
        if (!F && i7 != 128) {
            throw new AssertionError();
        }
    }

    private void l() {
        this.M = 16;
        for (int i2 = 0; i2 < 16; i2++) {
            this.Q[i2] = al.d(this.x, i2);
        }
    }

    abstract int a();

    int a(int i2, int i3, int i4, int i5) {
        int iB = this.A.b(i4, i5) + i2;
        int iA = a(i4);
        if (i3 < 128) {
            return iB + this.P[iA][i3];
        }
        return iB + this.O[iA][b(i3)] + this.Q[i3 & 15];
    }

    int a(int i2, int i3, am amVar, int i4) {
        if (i3 == 0) {
            return al.a(this.r[amVar.b()], 0) + al.a(this.u[amVar.b()][i4], 1) + i2;
        }
        int iA = al.a(this.r[amVar.b()], 1) + i2;
        return i3 == 1 ? iA + al.a(this.s[amVar.b()], 0) : iA + al.a(this.s[amVar.b()], 1) + al.a(this.t[amVar.b()], i3 - 2);
    }

    int a(int i2, am amVar) {
        return al.a(this.q[amVar.b()], 0) + i2;
    }

    int a(int i2, am amVar, int i3) {
        return al.a(this.r[amVar.b()], 0) + i2 + al.a(this.u[amVar.b()][i3], 0);
    }

    int a(am amVar, int i2) {
        return al.a(this.p[amVar.b()][i2], 1);
    }

    int b(int i2, int i3, am amVar, int i4) {
        return a(b(a(amVar, i4), amVar), i2, amVar, i4) + this.B.b(i3, i4);
    }

    int b(int i2, am amVar) {
        return al.a(this.q[amVar.b()], 1) + i2;
    }

    public ad b() {
        return this.y;
    }

    public void c() {
        this.n[0] = 0;
        this.n[1] = 0;
        this.n[2] = 0;
        this.n[3] = 0;
        this.o.a();
        for (int i2 = 0; i2 < this.p.length; i2++) {
            al.a(this.p[i2]);
        }
        al.a(this.q);
        al.a(this.r);
        al.a(this.s);
        al.a(this.t);
        for (int i3 = 0; i3 < this.u.length; i3++) {
            al.a(this.u[i3]);
        }
        for (int i4 = 0; i4 < this.v.length; i4++) {
            al.a(this.v[i4]);
        }
        for (int i5 = 0; i5 < this.w.length; i5++) {
            al.a(this.w[i5]);
        }
        al.a(this.x);
        this.z.a();
        this.A.a();
        this.B.a();
        this.L = 0;
        this.M = 0;
        this.R += this.E + 1;
        this.E = -1;
    }

    void c(int i2) {
        this.E += i2;
        this.y.a(i2);
    }

    public int d() {
        return this.R;
    }

    public void e() {
        this.R = 0;
    }

    public boolean f() {
        if (!this.y.b() && !i()) {
            return false;
        }
        while (this.R <= G && this.K.b() <= H) {
            if (!j()) {
                return false;
            }
        }
        return true;
    }

    aj g() {
        this.E++;
        aj ajVarA = this.y.a();
        if (F || this.y.a(ajVarA)) {
            return ajVarA;
        }
        throw new AssertionError();
    }

    void h() {
        if (this.L <= 0) {
            k();
        }
        if (this.M <= 0) {
            l();
        }
        this.A.b();
        this.B.b();
    }
}
