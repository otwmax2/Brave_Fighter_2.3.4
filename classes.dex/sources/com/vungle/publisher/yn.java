package com.vungle.publisher;

import com.vungle.publisher.co;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class yn extends yj<dq> {

    @Inject
    co.a h;

    @Inject
    yn() {
    }

    @Override // com.vungle.publisher.yj
    protected void a() {
    }

    public void onEvent(si event) {
        jf jfVarA = event.a();
        String strB = event.b();
        Logger.d(Logger.REPORT_TAG, "received mraid user action event: " + jfVarA.toString() + (strB == null ? "" : ", w/ value " + strB));
        a(jfVarA, strB);
        if (rx.mraidOpen.equals(jfVarA) || rx.mraidClose.equals(jfVarA)) {
            a(event.e());
        }
    }

    public void onEvent(sg event) {
        Logger.d(Logger.REPORT_TAG, "received mraid tpat event: " + event.a().toString());
        b(event.a());
    }

    public void onEvent(sm event) {
        this.h.a((Integer) this.c.c_(), event.a()).d_();
    }

    @Override // com.vungle.publisher.yj
    public void onEvent(av<dq> startMraidAdEvent) {
        super.onEvent(startMraidAdEvent);
        try {
            this.b.a(Long.valueOf(startMraidAdEvent.e()));
            this.b.f_();
        } catch (Exception e) {
            Logger.e(Logger.REPORT_TAG, "error updating play start millis", e);
        }
    }

    private void b(jf jfVar) {
        if (this.a == 0) {
            Logger.w(Logger.REPORT_TAG, "null ad in AdReportingHandler - cannot track event " + jfVar);
        } else {
            Logger.v(Logger.REPORT_TAG, "tpat event " + jfVar.toString());
            this.f.a(this.a, jfVar, ((dq) this.a).a(jfVar));
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        yn a;

        @Inject
        a() {
        }

        public yn a(dq dqVar) {
            this.a.a(dqVar);
            return this.a;
        }
    }
}
