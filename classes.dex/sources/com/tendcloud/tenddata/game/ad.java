package com.tendcloud.tenddata.game;

import android.support.v7.internal.widget.ActivityChooserView;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
final class ad {
    static final /* synthetic */ boolean e;
    final int a;
    final int b;
    final byte[] c;
    private final int f;
    private final int g;
    private final ae l;
    private final int[] m;
    private final aj n;
    private final int o;
    private final int p;
    private int r;
    int d = -1;
    private int h = -1;
    private boolean i = false;
    private int j = 0;
    private int k = 0;
    private int q = -1;

    static {
        e = !ad.class.desiredAssertionStatus();
    }

    ad(int i, int i2, int i3, int i4, int i5, int i6) {
        this.c = new byte[a(i, i2, i3, i5)];
        this.f = i2 + i;
        this.g = i3 + i5;
        this.a = i5;
        this.b = i4;
        this.l = new ae(i);
        this.p = i + 1;
        this.m = new int[this.p];
        this.r = this.p;
        this.n = new aj(i4 - 1);
        this.o = i6 <= 0 ? (i4 / 4) + 4 : i6;
    }

    private static int a(int i, int i2, int i3, int i4) {
        return i2 + i + i3 + i4 + Math.min((i / 2) + 4096, 536870912);
    }

    static void a(int[] iArr, int i) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (iArr[i2] <= i) {
                iArr[i2] = 0;
            } else {
                iArr[i2] = iArr[i2] - i;
            }
        }
    }

    private int g() {
        int iC = c(4, 4);
        if (iC != 0) {
            int i = this.r + 1;
            this.r = i;
            if (i == Integer.MAX_VALUE) {
                int i2 = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED - this.p;
                this.l.d(i2);
                a(this.m, i2);
                this.r -= i2;
            }
            int i3 = this.q + 1;
            this.q = i3;
            if (i3 == this.p) {
                this.q = 0;
            }
        }
        return iC;
    }

    private void h() {
        int i = ((this.d + 1) - this.f) & (-16);
        System.arraycopy(this.c, i, this.c, 0, this.j - i);
        this.d -= i;
        this.h -= i;
        this.j -= i;
    }

    private void i() {
        if (this.k <= 0 || this.d >= this.h) {
            return;
        }
        this.d -= this.k;
        int i = this.k;
        this.k = 0;
        a(i);
        if (!e && this.k >= i) {
            throw new AssertionError();
        }
    }

    public int a(int i, int i2) {
        return this.c[(this.d + i) - i2] & 255;
    }

    public int a(int i, int i2, int i3) {
        int i4 = this.d + i;
        int i5 = (i4 - i2) - 1;
        int i6 = 0;
        while (i6 < i3 && this.c[i4 + i6] == this.c[i5 + i6]) {
            i6++;
        }
        return i6;
    }

    public int a(byte[] bArr, int i, int i2) {
        if (!e && this.i) {
            throw new AssertionError();
        }
        if (this.d >= this.c.length - this.g) {
            h();
        }
        if (i2 > this.c.length - this.j) {
            i2 = this.c.length - this.j;
        }
        System.arraycopy(bArr, i, this.c, this.j, i2);
        this.j += i2;
        if (this.j >= this.g) {
            this.h = this.j - this.g;
        }
        i();
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:71:?, code lost:
    
        return r12.n;
     */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0147  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public com.tendcloud.tenddata.game.aj a() {
        /*
            Method dump skipped, instruction units count: 351
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.ad.a():com.tendcloud.tenddata.game.aj");
    }

    public void a(int i) {
        if (!e && i < 0) {
            throw new AssertionError();
        }
        while (true) {
            int i2 = i - 1;
            if (i <= 0) {
                return;
            }
            if (g() != 0) {
                this.l.a(this.c, this.d);
                this.m[this.q] = this.l.c();
                this.l.c(this.r);
                i = i2;
            } else {
                i = i2;
            }
        }
    }

    public void a(int i, byte[] bArr) {
        if (!e && b()) {
            throw new AssertionError();
        }
        if (!e && this.j != 0) {
            throw new AssertionError();
        }
        if (bArr != null) {
            int iMin = Math.min(bArr.length, i);
            System.arraycopy(bArr, bArr.length - iMin, this.c, 0, iMin);
            this.j += iMin;
            a(iMin);
        }
    }

    public void a(OutputStream outputStream, int i, int i2) throws IOException {
        outputStream.write(this.c, (this.d + 1) - i, i2);
    }

    public boolean a(aj ajVar) {
        int iMin = Math.min(e(), this.a);
        for (int i = 0; i < ajVar.c; i++) {
            if (b(ajVar.b[i], iMin) != ajVar.a[i]) {
                return false;
            }
        }
        return true;
    }

    public int b(int i, int i2) {
        int i3 = (this.d - i) - 1;
        int i4 = 0;
        while (i4 < i2 && this.c[this.d + i4] == this.c[i3 + i4]) {
            i4++;
        }
        return i4;
    }

    public boolean b() {
        return this.d != -1;
    }

    public boolean b(int i) {
        return this.d - i < this.h;
    }

    public int c(int i) {
        return this.c[this.d - i] & 255;
    }

    int c(int i, int i2) {
        if (!e && i < i2) {
            throw new AssertionError();
        }
        this.d++;
        int i3 = this.j - this.d;
        if (i3 >= i) {
            return i3;
        }
        if (i3 >= i2 && this.i) {
            return i3;
        }
        this.k++;
        return 0;
    }

    public void c() {
        this.h = this.j - 1;
        i();
    }

    public void d() {
        this.h = this.j - 1;
        this.i = true;
        i();
    }

    public int e() {
        if (e || b()) {
            return this.j - this.d;
        }
        throw new AssertionError();
    }

    public int f() {
        return this.d;
    }
}
