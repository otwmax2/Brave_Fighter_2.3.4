package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
class r implements Runnable {
    final /* synthetic */ String a;
    final /* synthetic */ q b;

    r(q qVar, String str) {
        this.b = qVar;
        this.a = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            s sVarA = this.b.a(this.a);
            if (!this.b.g) {
                this.b.a = sVarA;
                synchronized (this.b) {
                    this.b.notifyAll();
                }
            }
            Thread.sleep(3000L);
            if (this.b.a.c()) {
                this.b.a(this.b.a);
            }
        } catch (Throwable th) {
        }
    }
}
