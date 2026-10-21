package com.vungle.publisher;

import com.vungle.publisher.bw;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.tr;
import java.util.EnumMap;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ub {

    @Inject
    ue a;
    private tr b;
    private tx c;
    private un d;
    private bw.b e;

    @Inject
    ub() {
    }

    public tr a() {
        return this.b;
    }

    public un b() {
        return this.d;
    }

    public bw.b c() {
        return this.e;
    }

    public void d() {
        this.d.d();
        this.c.a(this, this.a.a(this.b));
    }

    public String toString() {
        return "{" + this.b + ", " + this.d + "}";
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {
        private static final EnumMap<tr.c, bw.b> b = new EnumMap<>(tr.c.class);

        @Inject
        Provider<ub> a;

        static {
            b.put(tr.c.download, bw.b.downloadLocalAd);
            b.put(tr.c.reportAd, bw.b.reportAd);
            b.put(tr.c.requestConfig, bw.b.requestConfig);
            b.put(tr.c.requestLocalAd, bw.b.requestLocalAd);
            b.put(tr.c.requestWillPlayAd, bw.b.requestWillPlayAd);
            b.put(tr.c.trackEvent, bw.b.externalNetworkRequest);
            b.put(tr.c.trackInstall, bw.b.reportInstall);
            b.put(tr.c.unfilledAd, bw.b.unfilledAd);
            b.put(tr.c.appFingerprint, bw.b.appFingerprint);
            b.put(tr.c.reportExceptions, bw.b.reportExceptions);
        }

        @Inject
        protected a() {
        }

        public ub a(tr trVar, tx txVar) {
            return a(trVar, txVar, new un());
        }

        public ub a(tr trVar, tx txVar, un unVar) {
            ub ubVar = this.a.get();
            ubVar.b = trVar;
            ubVar.c = txVar;
            bw.b bVar = b.get(trVar.b());
            if (bVar == null) {
                Logger.w(Logger.NETWORK_TAG, "missing mapping for HttpTransaction requestType = " + trVar.b().toString());
                bVar = bw.b.otherTask;
            }
            ubVar.e = bVar;
            ubVar.d = unVar;
            return ubVar;
        }
    }
}
