package com.vungle.publisher;

import com.vungle.publisher.cn;
import com.vungle.publisher.eh;
import com.vungle.publisher.eh.a;
import com.vungle.publisher.je;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.wc;
import com.vungle.publisher.wu;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class je<D extends je<D, A, R, E, F, T>, A extends cn, R extends wc, E extends eh, F extends eh.a<E, T, R>, T extends wu> {
    protected Map<jf, List<E>> b;
    protected cn c;

    protected abstract a<D, A, R, E, F, T> b();

    public void c() {
        if (this.b != null) {
            Iterator<List<E>> it = this.b.values().iterator();
            while (it.hasNext()) {
                Iterator<E> it2 = it.next().iterator();
                while (it2.hasNext()) {
                    it2.next().d_();
                }
            }
        }
    }

    public List<String> a(jf jfVar) {
        List<E> list;
        Map<jf, List<E>> map = this.b;
        if (map == null || (list = map.get(jfVar)) == null || list.size() <= 0) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<E> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a());
        }
        return arrayList;
    }

    public void a(StringBuilder sb) {
        dp.a(sb, "eventTrackings", this.b == null ? null : Integer.valueOf(this.b.size()));
    }

    public Map<jf, List<E>> a(R r) {
        eh.a aVarC = b().c();
        if (aVarC != null) {
            this.b = aVarC.a((wc) r);
        }
        return this.b;
    }

    /* JADX INFO: compiled from: vungle */
    static abstract class a<D extends je<D, A, R, E, F, T>, A extends cn, R extends wc, E extends eh, F extends eh.a<E, T, R>, T extends wu> {
        protected abstract F c();

        protected abstract D d();

        a() {
        }

        public D a(A a, R r) {
            return (D) a(d(), a, r);
        }

        public D a(A a) {
            return (D) a(d(), a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected D a(D d, A a) throws Throwable {
            d.c = a;
            Map<jf, List<E>> mapB = c().b((String) a.u);
            if (mapB != null) {
                d.b = mapB;
                Logger.d(Logger.REPORT_TAG, "got " + mapB.size() + " event trackings by adId: " + ((String) a.u));
            } else {
                Logger.d(Logger.REPORT_TAG, "no event trackings for adId: " + ((String) a.u));
            }
            return d;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public D a(D d, A a, R r) {
            d.c = a;
            d.b = c().a((String) a.u, r.e());
            return d;
        }
    }
}
