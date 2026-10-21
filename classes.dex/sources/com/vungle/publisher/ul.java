package com.vungle.publisher;

import android.os.SystemClock;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class ul extends tx {

    @Inject
    protected bw b;
    private int e;
    private int c = 10;
    private int d = 5;
    private int f = 2000;
    private int g = 60000;

    protected void c(int i) {
        this.d = i;
    }

    protected void d(int i) {
        this.c = i;
    }

    @Override // com.vungle.publisher.tx
    protected void b(ub ubVar, tw twVar) {
        un unVarB = ubVar.b();
        int iB = unVarB.b();
        if (!e(iB) && !a(unVarB.a())) {
            int iB2 = twVar.b();
            if (f(iB2)) {
                int iC = unVarB.c();
                if (!b(iB2)) {
                    iC = unVarB.e();
                }
                if (!g(iC)) {
                    int iH = h(iB);
                    Logger.d(Logger.NETWORK_TAG, "Retrying " + ubVar + " in " + (iH / 1000) + " seconds");
                    this.b.b(new um(ubVar), ubVar.c(), iH);
                    return;
                }
            }
        }
        super.b(ubVar, twVar);
    }

    protected final boolean e(int i) {
        return this.c > 0 && i > this.c;
    }

    protected final boolean a(long j) {
        return this.e > 0 && SystemClock.elapsedRealtime() - j >= ((long) this.e);
    }

    protected boolean f(int i) {
        return (a(i) || i == 601) ? false : true;
    }

    protected final boolean g(int i) {
        return this.d > 0 && i > this.d;
    }

    protected int h(int i) {
        return zn.a(i, this.f, this.g);
    }
}
