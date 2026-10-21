package com.vungle.publisher;

import com.vungle.publisher.cn;
import com.vungle.publisher.cz;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class yj<A extends cn> extends pi {
    protected A a;
    protected cy<?, ?, ?> b;
    protected cz<?, ?, ?, A> c;

    @Inject
    cz.b d;

    @Inject
    yk e;

    @Inject
    tj f;

    @Inject
    com.vungle.publisher.env.o g;

    protected abstract void a();

    void b() {
        this.a = null;
        this.c = null;
        this.b = null;
        a();
    }

    protected void a(ac<A> acVar) {
        a(acVar.b());
    }

    void a(A a) {
        if (this.a == null || !this.a.a(a)) {
            Logger.i(Logger.REPORT_TAG, "new ad " + a.B());
            this.a = a;
            this.c = this.d.b(a);
            this.b = this.c.x();
            Logger.d(Logger.REPORT_TAG, "current play: " + this.b.toString());
            a();
            return;
        }
        Logger.v(Logger.REPORT_TAG, "same ad " + a.B());
    }

    public void onEvent(av<A> startPlayAdEvent) {
        try {
            Logger.d(Logger.REPORT_TAG, "received play ad start");
            p pVarA = startPlayAdEvent.a();
            String strC = startPlayAdEvent.c();
            cz<?, ?, ?, A> czVar = this.c;
            czVar.a(cz.c.playing);
            s sVarB = this.g.b(strC);
            if (sVarB != null) {
                czVar.b(sVarB.c);
                if (sVarB.c) {
                    czVar.b(pVarA.getIncentivizedUserId());
                }
                if (pVarA.getOrdinalViewCount() > 0) {
                    czVar.a(pVarA.getOrdinalViewCount());
                }
            }
            czVar.c(Long.valueOf(startPlayAdEvent.e()));
            czVar.e_();
        } catch (Exception e) {
            Logger.e(Logger.REPORT_TAG, "error processing ad start event", e);
        }
    }

    public void onEvent(bs destroyedErrorEndPlayEvent) {
        try {
            Logger.d(Logger.REPORT_TAG, "received destroyed ad end");
            a(destroyedErrorEndPlayEvent.e());
        } catch (Exception e) {
            Logger.w(Logger.REPORT_TAG, "error processing destroyed ad end");
        }
    }

    protected void a(jf jfVar) {
        a(jfVar, null);
    }

    protected void a(jf jfVar, Object obj) {
        try {
            this.b.a(jfVar, obj);
        } catch (Exception e) {
            Logger.e(Logger.REPORT_TAG, "error reporting event", e);
        }
    }

    protected void a(long j) {
        unregister();
        cz<?, ?, ?, A> czVar = this.c;
        if (czVar == null) {
            Logger.d(Logger.REPORT_TAG, "no current ad report");
        } else {
            czVar.a(cz.c.reportable);
            czVar.a(Long.valueOf(j));
            czVar.e_();
        }
        this.e.c();
        b();
    }
}
