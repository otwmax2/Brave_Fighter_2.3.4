package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
final class ah extends ag {
    private static int G = 1;
    private static int H = 272;
    private aj I;

    ah(al alVar, int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        super(alVar, new ad(i4, Math.max(i5, G), H, i6, 273, i7), i, i2, i3, i4, i6);
        this.I = null;
    }

    private boolean a(int i, int i2) {
        return i < (i2 >>> 7);
    }

    @Override // com.tendcloud.tenddata.game.ag
    int a() {
        int i;
        int i2;
        if (this.E == -1) {
            this.I = g();
        }
        this.D = -1;
        int iMin = Math.min(this.y.e(), 273);
        if (iMin < 2) {
            return 1;
        }
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < 4; i5++) {
            int iB = this.y.b(this.n[i5], iMin);
            if (iB >= 2) {
                if (iB >= this.C) {
                    this.D = i5;
                    c(iB - 1);
                    return iB;
                }
                if (iB > i4) {
                    i3 = i5;
                    i4 = iB;
                }
            }
        }
        if (this.I.c > 0) {
            i2 = this.I.a[this.I.c - 1];
            i = this.I.b[this.I.c - 1];
            if (i2 >= this.C) {
                this.D = i + 4;
                c(i2 - 1);
                return i2;
            }
            while (this.I.c > 1 && i2 == this.I.a[this.I.c - 2] + 1 && a(this.I.b[this.I.c - 2], i)) {
                aj ajVar = this.I;
                ajVar.c--;
                i2 = this.I.a[this.I.c - 1];
                i = this.I.b[this.I.c - 1];
            }
            if (i2 == 2 && i >= 128) {
                i2 = 1;
            }
        } else {
            i = 0;
            i2 = 0;
        }
        if (i4 >= 2 && (i4 + 1 >= i2 || ((i4 + 2 >= i2 && i >= 512) || (i4 + 3 >= i2 && i >= 32768)))) {
            this.D = i3;
            c(i4 - 1);
            return i4;
        }
        if (i2 < 2 || iMin <= 2) {
            return 1;
        }
        this.I = g();
        if (this.I.c > 0) {
            int i6 = this.I.a[this.I.c - 1];
            int i7 = this.I.b[this.I.c - 1];
            if ((i6 >= i2 && i7 < i) || ((i6 == i2 + 1 && !a(i, i7)) || i6 > i2 + 1 || (i6 + 1 >= i2 && i2 >= 3 && a(i7, i)))) {
                return 1;
            }
        }
        int iMax = Math.max(i2 - 1, 2);
        for (int i8 = 0; i8 < 4; i8++) {
            if (this.y.b(this.n[i8], iMax) == iMax) {
                return 1;
            }
        }
        this.D = i + 4;
        c(i2 - 2);
        return i2;
    }
}
