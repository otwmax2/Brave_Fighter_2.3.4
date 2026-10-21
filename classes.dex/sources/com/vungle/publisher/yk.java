package com.vungle.publisher;

import com.vungle.publisher.cz;
import com.vungle.publisher.env.r;
import com.vungle.publisher.fg;
import com.vungle.publisher.ic;
import com.vungle.publisher.log.Logger;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class yk {

    @Inject
    qg a;

    @Inject
    cz.b b;

    @Inject
    fg.a c;

    @Inject
    vc d;

    @Inject
    r e;

    @Inject
    ic.a f;

    @Inject
    yk() {
    }

    public void a() {
        this.b.d();
        b();
        c();
    }

    public void a(Integer num) {
        Logger.i(Logger.REPORT_TAG, "deleting report " + num);
        this.c.a((Object[]) new Integer[]{num});
    }

    void b() {
        if (this.e.b()) {
            Logger.v(Logger.REPORT_TAG, "install already reported");
        } else {
            Logger.d(Logger.REPORT_TAG, "reporting install");
            this.d.b();
        }
    }

    void a(cz<?, ?, ?, ?> czVar) {
        String strB = czVar.B();
        try {
            Logger.d(Logger.REPORT_TAG, "sending " + strB);
            this.d.a(czVar);
        } catch (Exception e) {
            Logger.e(Logger.REPORT_TAG, "error sending " + strB, e);
            czVar.a(cz.c.failed);
            czVar.f_();
        }
    }

    public void c() {
        try {
            List<cz<?, ?, ?, ?>> listC = this.b.c();
            Logger.i(Logger.REPORT_TAG, "sending " + listC.size() + " ad reports");
            Iterator<cz<?, ?, ?, ?>> it = listC.iterator();
            while (it.hasNext()) {
                a(it.next());
            }
        } finally {
            this.a.a(new aj());
        }
    }
}
