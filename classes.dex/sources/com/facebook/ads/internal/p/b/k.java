package com.facebook.ads.internal.p.b;

import android.util.Log;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
class k {
    private final n a;
    private final com.facebook.ads.internal.p.b.a b;
    private volatile Thread f;
    private volatile boolean g;
    private final Object c = new Object();
    private final Object d = new Object();
    private volatile int h = -1;
    private final AtomicInteger e = new AtomicInteger();

    private class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            k.this.e();
        }
    }

    public k(n nVar, com.facebook.ads.internal.p.b.a aVar) {
        this.a = (n) j.a(nVar);
        this.b = (com.facebook.ads.internal.p.b.a) j.a(aVar);
    }

    private void b() throws l {
        int i = this.e.get();
        if (i >= 1) {
            this.e.set(0);
            throw new l("Error reading source " + i + " times");
        }
    }

    private void b(long j, long j2) {
        a(j, j2);
        synchronized (this.c) {
            this.c.notifyAll();
        }
    }

    private synchronized void c() {
        boolean z = (this.f == null || this.f.getState() == Thread.State.TERMINATED) ? false : true;
        if (!this.g && !this.b.d() && !z) {
            this.f = new Thread(new a(), "Source reader for " + this.a);
            this.f.start();
        }
    }

    private void d() {
        synchronized (this.c) {
            try {
                this.c.wait(1000L);
            } catch (InterruptedException e) {
                throw new l("Waiting source data is interrupted!", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() throws Throwable {
        int iA;
        int iA2 = 0;
        try {
            try {
                iA2 = this.b.a();
                this.a.a(iA2);
                iA = this.a.a();
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int iA3 = this.a.a(bArr);
                        if (iA3 == -1) {
                            f();
                            h();
                            b(iA2, iA);
                            return;
                        }
                        synchronized (this.d) {
                            if (g()) {
                                h();
                                b(iA2, iA);
                                return;
                            }
                            this.b.a(bArr, iA3);
                        }
                        iA2 += iA3;
                        b(iA2, iA);
                    }
                } catch (Throwable th) {
                    th = th;
                    this.e.incrementAndGet();
                    a(th);
                    h();
                    b(iA2, iA);
                }
            } catch (Throwable th2) {
                th = th2;
                h();
                b(iA2, -1);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            h();
            b(iA2, -1);
            throw th;
        }
    }

    private void f() {
        synchronized (this.d) {
            if (!g() && this.b.a() == this.a.a()) {
                this.b.c();
            }
        }
    }

    private boolean g() {
        return Thread.currentThread().isInterrupted() || this.g;
    }

    private void h() {
        try {
            this.a.b();
        } catch (l e) {
            a(new l("Error closing source " + this.a, e));
        }
    }

    public int a(byte[] bArr, long j, int i) throws l {
        m.a(bArr, j, i);
        while (!this.b.d() && this.b.a() < ((long) i) + j && !this.g) {
            c();
            d();
            b();
        }
        int iA = this.b.a(bArr, j, i);
        if (this.b.d() && this.h != 100) {
            this.h = 100;
            a(100);
        }
        return iA;
    }

    public void a() {
        synchronized (this.d) {
            Log.d("ProxyCache", "Shutdown proxy for " + this.a);
            try {
                this.g = true;
                if (this.f != null) {
                    this.f.interrupt();
                }
                this.b.b();
            } catch (l e) {
                a(e);
            }
        }
    }

    protected void a(int i) {
    }

    protected void a(long j, long j2) {
        int i = (j2 > 0L ? 1 : (j2 == 0L ? 0 : -1)) == 0 ? 100 : (int) ((100 * j) / j2);
        boolean z = i != this.h;
        if ((j2 >= 0) && z) {
            a(i);
        }
        this.h = i;
    }

    protected final void a(Throwable th) {
        if (th instanceof i) {
            Log.d("ProxyCache", "ProxyCache is interrupted");
        } else {
            Log.e("ProxyCache", "ProxyCache error", th);
        }
    }
}
