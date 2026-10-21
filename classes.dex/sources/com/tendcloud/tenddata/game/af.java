package com.tendcloud.tenddata.game;

import java.io.DataOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
public class af extends OutputStream {
    static final int a = 8192;
    static final /* synthetic */ boolean b;
    private OutputStream c;
    private final DataOutputStream d;
    private final ad e;
    private final al f;
    private final ag g;
    private final int h;
    private boolean i;
    private boolean j = true;
    private boolean k = true;
    private int l = 0;
    private boolean m = false;
    private IOException n = null;
    private final byte[] o = new byte[1];

    static {
        b = !af.class.desiredAssertionStatus();
    }

    public af(OutputStream outputStream, byte[] bArr) {
        this.i = true;
        if (outputStream == null) {
            throw new NullPointerException();
        }
        this.c = outputStream;
        this.d = new DataOutputStream(outputStream);
        this.f = new al(8192);
        int length = bArr != null ? bArr.length + 4096 : 4096;
        this.g = ag.a(this.f, 1, 0, 0, length, a(length), (Runtime.getRuntime().availableProcessors() * 4) + 24, (int) (16.0d + (((double) Runtime.getRuntime().availableProcessors()) * 2.5d)));
        this.e = this.g.b();
        if (bArr != null && bArr.length > 0) {
            this.e.a(length, bArr);
            this.i = false;
        }
        this.h = 1;
    }

    private static int a(int i) {
        if (8192 > i) {
            return 8192 - i;
        }
        return 0;
    }

    private void a(int i, int i2) throws IOException {
        this.d.writeByte((this.k ? this.i ? 224 : 192 : this.j ? 160 : 128) | ((i - 1) >>> 16));
        this.d.writeShort(i - 1);
        this.d.writeShort(i2 - 1);
        if (this.k) {
            this.d.writeByte(this.h);
        }
        this.f.a(this.c);
        this.k = false;
        this.j = false;
        this.i = false;
    }

    private void b() throws IOException {
        int iC = this.f.c();
        int iD = this.g.d();
        if (!b && iC <= 0) {
            throw new AssertionError(iC);
        }
        if (!b && iD <= 0) {
            throw new AssertionError(iD);
        }
        if (iC + 2 < iD) {
            a(iD, iC);
        } else {
            this.g.c();
            iD = this.g.d();
            if (!b && iD <= 0) {
                throw new AssertionError(iD);
            }
            b(iD);
        }
        this.l -= iD;
        this.g.e();
        this.f.a();
    }

    private void b(int i) throws IOException {
        while (i > 0) {
            int iMin = Math.min(i, 8192);
            this.d.writeByte(this.i ? 1 : 2);
            this.d.writeShort(iMin - 1);
            this.e.a(this.c, i, iMin);
            i -= iMin;
            this.i = false;
        }
        this.j = true;
    }

    private void c() throws IOException {
        if (!b && this.m) {
            throw new AssertionError();
        }
        if (this.n != null) {
            throw this.n;
        }
        this.e.d();
        while (this.l > 0) {
            try {
                this.g.f();
                b();
            } catch (IOException e) {
                this.n = e;
                throw e;
            }
        }
        this.c.write(0);
        this.m = true;
    }

    public void a() throws IOException {
        if (this.m) {
            return;
        }
        c();
        this.m = true;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.c != null) {
            if (!this.m) {
                try {
                    c();
                } catch (IOException e) {
                }
            }
            try {
                this.c.close();
            } catch (IOException e2) {
                if (this.n == null) {
                    this.n = e2;
                }
            }
            this.c = null;
        }
        if (this.n != null) {
            throw this.n;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        if (this.n != null) {
            throw this.n;
        }
        if (this.m) {
            throw new IOException("Stream finished or closed");
        }
        try {
            this.e.c();
            while (this.l > 0) {
                this.g.f();
                b();
            }
            this.c.flush();
        } catch (IOException e) {
            this.n = e;
            throw e;
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.o[0] = (byte) i;
        write(this.o, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0 || i2 < 0 || i + i2 < 0 || i + i2 > bArr.length) {
            throw new IndexOutOfBoundsException();
        }
        if (this.n != null) {
            throw this.n;
        }
        if (this.m) {
            throw new IOException("Stream finished or closed");
        }
        while (i2 > 0) {
            try {
                int iA = this.e.a(bArr, i, i2);
                i += iA;
                i2 -= iA;
                this.l = iA + this.l;
                if (this.g.f()) {
                    b();
                }
            } catch (IOException e) {
                this.n = e;
                throw e;
            }
        }
    }
}
