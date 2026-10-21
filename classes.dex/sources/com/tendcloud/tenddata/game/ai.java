package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
final class ai extends ag {
    static final /* synthetic */ boolean G;
    private static final int H = 4096;
    private static int I;
    private static int J;
    private final ak[] K;
    private int L;
    private int M;
    private aj N;
    private final int[] O;
    private final am P;

    static {
        G = !ai.class.desiredAssertionStatus();
        I = 4096;
        J = 4096;
    }

    ai(al alVar, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        super(alVar, new ad(i4, Math.max(i5, I), J, i6, 273, i7), i, i2, i3, i4, i6);
        this.K = new ak[4096];
        this.L = 0;
        this.M = 0;
        this.O = new int[4];
        this.P = new am();
        for (int i8 = 0; i8 < 4096; i8++) {
            this.K[i8] = new ak();
        }
    }

    private void a(int i, int i2, int i3, int i4, int i5) {
        if (this.N.a[this.N.c - 1] > i3) {
            this.N.c = 0;
            while (this.N.a[this.N.c] < i3) {
                this.N.c++;
            }
            int[] iArr = this.N.a;
            aj ajVar = this.N;
            int i6 = ajVar.c;
            ajVar.c = i6 + 1;
            iArr[i6] = i3;
        }
        if (this.N.a[this.N.c - 1] < i5) {
            return;
        }
        while (this.M < this.L + this.N.a[this.N.c - 1]) {
            ak[] akVarArr = this.K;
            int i7 = this.M + 1;
            this.M = i7;
            akVarArr[i7].a();
        }
        int iA = a(i4, this.K[this.L].a);
        int i8 = 0;
        while (i5 > this.N.a[i8]) {
            i8++;
        }
        while (true) {
            int i9 = i8;
            int i10 = this.N.b[i9];
            int iA2 = a(iA, i10, i5, i2);
            if (iA2 < this.K[this.L + i5].c) {
                this.K[this.L + i5].a(iA2, this.L, i10 + 4);
            }
            if (i5 != this.N.a[i9]) {
                i8 = i9;
            } else {
                int iA3 = this.y.a(i5 + 1, i10, Math.min(this.C, (i3 - i5) - 1));
                if (iA3 >= 2) {
                    this.P.a(this.K[this.L].a);
                    this.P.d();
                    int iA4 = this.z.a(this.y.a(i5, 0), this.y.c(0), this.y.a(i5, 1), i + i5, this.P) + iA2;
                    this.P.c();
                    int iB = b(0, iA3, this.P, (i + i5 + 1) & this.m) + iA4;
                    int i11 = this.L + i5 + 1 + iA3;
                    while (this.M < i11) {
                        ak[] akVarArr2 = this.K;
                        int i12 = this.M + 1;
                        this.M = i12;
                        akVarArr2[i12].a();
                    }
                    if (iB < this.K[i11].c) {
                        this.K[i11].a(iB, this.L, i10 + 4, i5, 0);
                    }
                }
                i8 = i9 + 1;
                if (i8 == this.N.c) {
                    return;
                }
            }
            i5++;
        }
    }

    private void b(int i, int i2, int i3, int i4) {
        boolean z;
        int iA;
        int iC = this.y.c(0);
        int iC2 = this.y.c(this.K[this.L].b[0] + 1);
        int iA2 = this.K[this.L].c + this.z.a(iC, iC2, this.y.c(1), i, this.K[this.L].a);
        if (iA2 < this.K[this.L + 1].c) {
            this.K[this.L + 1].a(iA2, this.L, -1);
            z = true;
        } else {
            z = false;
        }
        if (iC2 == iC && ((this.K[this.L + 1].d == this.L || this.K[this.L + 1].e != 0) && (iA = a(i4, this.K[this.L].a, i2)) <= this.K[this.L + 1].c)) {
            this.K[this.L + 1].a(iA, this.L, 0);
            z = true;
        }
        if (z || iC2 == iC || i3 <= 2) {
            return;
        }
        int iA3 = this.y.a(1, this.K[this.L].b[0], Math.min(this.C, i3 - 1));
        if (iA3 >= 2) {
            this.P.a(this.K[this.L].a);
            this.P.c();
            int iB = b(0, iA3, this.P, (i + 1) & this.m) + iA2;
            int i5 = iA3 + this.L + 1;
            while (this.M < i5) {
                ak[] akVarArr = this.K;
                int i6 = this.M + 1;
                this.M = i6;
                akVarArr[i6].a();
            }
            if (iB < this.K[i5].c) {
                this.K[i5].b(iB, this.L, 0);
            }
        }
    }

    private int c(int i, int i2, int i3, int i4) {
        int i5 = 2;
        int iMin = Math.min(i3, this.C);
        int i6 = 0;
        while (true) {
            int i7 = i6;
            int i8 = i5;
            if (i7 >= 4) {
                return i8;
            }
            int iB = this.y.b(this.K[this.L].b[i7], iMin);
            if (iB < 2) {
                i5 = i8;
            } else {
                while (this.M < this.L + iB) {
                    ak[] akVarArr = this.K;
                    int i9 = this.M + 1;
                    this.M = i9;
                    akVarArr[i9].a();
                }
                int iA = a(i4, i7, this.K[this.L].a, i2);
                for (int i10 = iB; i10 >= 2; i10--) {
                    int iB2 = this.B.b(i10, i2) + iA;
                    if (iB2 < this.K[this.L + i10].c) {
                        this.K[this.L + i10].a(iB2, this.L, i7);
                    }
                }
                i5 = i7 == 0 ? iB + 1 : i8;
                int iA2 = this.y.a(iB + 1, this.K[this.L].b[i7], Math.min(this.C, (i3 - iB) - 1));
                if (iA2 >= 2) {
                    int iB3 = iA + this.B.b(iB, i2);
                    this.P.a(this.K[this.L].a);
                    this.P.e();
                    int iA3 = this.z.a(this.y.a(iB, 0), this.y.c(0), this.y.a(iB, 1), i + iB, this.P) + iB3;
                    this.P.c();
                    int iB4 = b(0, iA2, this.P, (i + iB + 1) & this.m) + iA3;
                    int i11 = this.L + iB + 1 + iA2;
                    while (this.M < i11) {
                        ak[] akVarArr2 = this.K;
                        int i12 = this.M + 1;
                        this.M = i12;
                        akVarArr2[i12].a();
                    }
                    if (iB4 < this.K[i11].c) {
                        this.K[i11].a(iB4, this.L, i7, iB, 0);
                    }
                }
            }
            i6 = i7 + 1;
        }
    }

    private int i() {
        int i;
        this.M = this.L;
        int i2 = this.K[this.L].d;
        do {
            ak akVar = this.K[this.L];
            if (akVar.f) {
                this.K[i2].d = this.L;
                this.K[i2].e = -1;
                i = i2 - 1;
                this.L = i2;
                if (akVar.g) {
                    this.K[i].d = i + 1;
                    this.K[i].e = akVar.i;
                    this.L = i;
                    i = akVar.h;
                }
            } else {
                i = i2;
            }
            i2 = this.K[i].d;
            this.K[i].d = this.L;
            this.L = i;
        } while (this.L > 0);
        this.L = this.K[0].d;
        this.D = this.K[this.L].e;
        return this.L;
    }

    private void j() {
        int i;
        int i2;
        int i3 = this.K[this.L].d;
        if (!G && i3 >= this.L) {
            throw new AssertionError();
        }
        if (this.K[this.L].f) {
            i3--;
            if (this.K[this.L].g) {
                this.K[this.L].a.a(this.K[this.K[this.L].h].a);
                if (this.K[this.L].i < 4) {
                    this.K[this.L].a.e();
                } else {
                    this.K[this.L].a.d();
                }
            } else {
                this.K[this.L].a.a(this.K[i3].a);
            }
            this.K[this.L].a.c();
        } else {
            this.K[this.L].a.a(this.K[i3].a);
        }
        if (i3 == this.L - 1) {
            if (!G && this.K[this.L].e != 0 && this.K[this.L].e != -1) {
                throw new AssertionError();
            }
            if (this.K[this.L].e == 0) {
                this.K[this.L].a.f();
            } else {
                this.K[this.L].a.c();
            }
            System.arraycopy(this.K[i3].b, 0, this.K[this.L].b, 0, 4);
            return;
        }
        if (this.K[this.L].f && this.K[this.L].g) {
            int i4 = this.K[this.L].h;
            int i5 = this.K[this.L].i;
            this.K[this.L].a.e();
            i2 = i4;
            i = i5;
        } else {
            i = this.K[this.L].e;
            if (i < 4) {
                this.K[this.L].a.e();
                i2 = i3;
            } else {
                this.K[this.L].a.d();
                i2 = i3;
            }
        }
        if (i >= 4) {
            this.K[this.L].b[0] = i - 4;
            System.arraycopy(this.K[i2].b, 0, this.K[this.L].b, 1, 3);
            return;
        }
        this.K[this.L].b[0] = this.K[i2].b[i];
        int i6 = 1;
        while (i6 <= i) {
            this.K[this.L].b[i6] = this.K[i2].b[i6 - 1];
            i6++;
        }
        while (i6 < 4) {
            this.K[this.L].b[i6] = this.K[i2].b[i6];
            i6++;
        }
    }

    @Override // com.tendcloud.tenddata.game.ag
    int a() {
        int i;
        int iA;
        int i2;
        if (this.L < this.M) {
            int i3 = this.K[this.L].d - this.L;
            this.L = this.K[this.L].d;
            this.D = this.K[this.L].e;
            return i3;
        }
        if (!G && this.L != this.M) {
            throw new AssertionError();
        }
        this.L = 0;
        this.M = 0;
        this.D = -1;
        if (this.E == -1) {
            this.N = g();
        }
        int iMin = Math.min(this.y.e(), 273);
        if (iMin < 2) {
            return 1;
        }
        int i4 = 0;
        int i5 = 0;
        while (i4 < 4) {
            this.O[i4] = this.y.b(this.n[i4], iMin);
            if (this.O[i4] < 2) {
                this.O[i4] = 0;
                i2 = i5;
            } else {
                i2 = this.O[i4] > this.O[i5] ? i4 : i5;
            }
            i4++;
            i5 = i2;
        }
        if (this.O[i5] >= this.C) {
            this.D = i5;
            c(this.O[i5] - 1);
            return this.O[i5];
        }
        if (this.N.c > 0) {
            int i6 = this.N.a[this.N.c - 1];
            int i7 = this.N.b[this.N.c - 1];
            if (i6 >= this.C) {
                this.D = i7 + 4;
                c(i6 - 1);
                return i6;
            }
            i = i6;
        } else {
            i = 0;
        }
        int iC = this.y.c(0);
        int iC2 = this.y.c(this.n[0] + 1);
        if (i < 2 && iC != iC2 && this.O[i5] < 2) {
            return 1;
        }
        int iF = this.y.f();
        int i8 = iF & this.m;
        this.K[1].a(this.z.a(iC, iC2, this.y.c(1), iF, this.o), 0, -1);
        int iA2 = a(this.o, i8);
        int iB = b(iA2, this.o);
        if (iC2 == iC && (iA = a(iB, this.o, i8)) < this.K[1].c) {
            this.K[1].a(iA, 0, 0);
        }
        this.M = Math.max(i, this.O[i5]);
        if (this.M < 2) {
            if (!G && this.M != 0) {
                throw new AssertionError(this.M);
            }
            this.D = this.K[1].e;
            return 1;
        }
        h();
        this.K[0].a.a(this.o);
        System.arraycopy(this.n, 0, this.K[0].b, 0, 4);
        for (int i9 = this.M; i9 >= 2; i9--) {
            this.K[i9].a();
        }
        for (int i10 = 0; i10 < 4; i10++) {
            int i11 = this.O[i10];
            if (i11 >= 2) {
                int iA3 = a(iB, i10, this.o, i8);
                do {
                    int iB2 = this.B.b(i11, i8) + iA3;
                    if (iB2 < this.K[i11].c) {
                        this.K[i11].a(iB2, 0, i10);
                    }
                    i11--;
                } while (i11 >= 2);
            }
        }
        int iMax = Math.max(this.O[0] + 1, 2);
        if (iMax <= i) {
            int iA4 = a(iA2, this.o);
            int i12 = 0;
            while (iMax > this.N.a[i12]) {
                i12++;
            }
            while (true) {
                int i13 = this.N.b[i12];
                int iA5 = a(iA4, i13, iMax, i8);
                if (iA5 < this.K[iMax].c) {
                    this.K[iMax].a(iA5, 0, i13 + 4);
                }
                if (iMax == this.N.a[i12] && (i12 = i12 + 1) == this.N.c) {
                    break;
                }
                iMax++;
            }
        }
        int iMin2 = Math.min(this.y.e(), 4095);
        int i14 = iF;
        while (true) {
            int i15 = this.L + 1;
            this.L = i15;
            if (i15 >= this.M) {
                break;
            }
            this.N = g();
            if (this.N.c > 0 && this.N.a[this.N.c - 1] >= this.C) {
                break;
            }
            iMin2--;
            i14++;
            int i16 = i14 & this.m;
            j();
            int iA6 = a(this.K[this.L].a, i16) + this.K[this.L].c;
            int iB3 = b(iA6, this.K[this.L].a);
            b(i14, i16, iMin2, iB3);
            if (iMin2 >= 2) {
                int iC3 = c(i14, i16, iMin2, iB3);
                if (this.N.c > 0) {
                    a(i14, i16, iMin2, iA6, iC3);
                }
            }
        }
        return i();
    }

    @Override // com.tendcloud.tenddata.game.ag
    public void c() {
        this.L = 0;
        this.M = 0;
        super.c();
    }
}
