package com.vungle.publisher;

import android.database.Cursor;
import android.database.SQLException;
import com.vungle.publisher.cn;
import com.vungle.publisher.cn.a;
import com.vungle.publisher.ct;
import com.vungle.publisher.er;
import com.vungle.publisher.hk;
import com.vungle.publisher.hp;
import com.vungle.publisher.jt;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.m;
import com.vungle.publisher.wc;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class eb<A extends cn, R extends wc, F extends cn.a<A, R>> {

    @Inject
    ci a;

    @Inject
    c b;

    @Inject
    zl c;

    @Inject
    hk.a d;

    @Inject
    ct.a e;
    cn.a<A, R> f;

    public int a(List<A> list) {
        if (list == null || list.size() <= 0) {
            return 0;
        }
        Logger.d(Logger.PREPARE_TAG, "deleting " + list.size() + " local ad(s)");
        this.f.a((List<? extends cn>) list, cn.c.deleting);
        Logger.d(Logger.PREPARE_TAG, "deleted local files " + c(list).size() + " local ad(s)");
        return this.f.b();
    }

    private List<A> c(List<A> list) {
        ArrayList arrayList = new ArrayList();
        for (A a2 : list) {
            int i = a2.l;
            a2.l = i + 1;
            if (!a2.x().a((String) a2.c_(), a2.m(), cn.c.ready, cn.c.preparing)) {
                if (a2.b() || i >= 3) {
                    arrayList.add(a2);
                } else {
                    Logger.w(Logger.PREPARE_TAG, "unable to delete files for " + a2.B() + " attempt " + i);
                    a2.f_();
                }
            } else {
                Logger.v(Logger.PREPARE_TAG, "Not deleting files of " + a2.B() + " for Matching ad_token_hash: " + a2.m());
            }
        }
        return arrayList;
    }

    protected int a() {
        m mVarA = this.f.a();
        Logger.d(Logger.PREPARE_TAG, "deleting expired " + mVarA + " ad records without pending reports");
        return a(this.f.a("type = ? AND expiration_timestamp_seconds <= ?", new String[]{mVarA.toString(), String.valueOf(this.c.a() / 1000)}, (String) null));
    }

    protected int b() {
        List<A> listA = this.f.a("type = ?", new String[]{this.f.a().toString()}, (String) null);
        Logger.d(Logger.PREPARE_TAG, "deleting " + listA.size() + " " + this.f.a() + " ad records");
        return a(listA);
    }

    public int b(List<s> list) {
        Logger.v(Logger.PREPARE_TAG, "cleanUpInactivePlacements");
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<s> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().a);
        }
        List<hk> listB = this.d.b(arrayList);
        Logger.v(Logger.PREPARE_TAG, "inActivePlacements: size " + listB.size());
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<hk> it2 = listB.iterator();
        while (it2.hasNext()) {
            arrayList2.addAll(this.e.b(it2.next().c_()));
        }
        Logger.v(Logger.PREPARE_TAG, "adPlacementsForInactivePlacement: size " + arrayList2.size());
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            arrayList3.add(((ct) it3.next()).a);
        }
        int iA = a(this.f.c(arrayList3));
        int iA2 = this.d.a((List) listB);
        Logger.v(Logger.PREPARE_TAG, "num of ads cleaned: " + iA);
        Logger.v(Logger.PREPARE_TAG, " for num of placements cleaned: " + iA2);
        return iA2;
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class a<A extends cn, R extends wc, F extends cn.a<A, R>, C extends eb<A, R, F>> {
        abstract C a();

        /* JADX WARN: Multi-variable type inference failed */
        public C a(F f) {
            C c = (C) a();
            c.f = f;
            return c;
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class b {

        @Inject
        ci a;

        @Inject
        m.a b;

        @Inject
        ct.a c;

        @Inject
        cn.b d;

        @Inject
        jt.a e;

        @Inject
        er.a f;

        @Inject
        c g;

        @Inject
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public eb<?, ?, ?>[] d() {
            return new eb[]{this.d.a(m.vungle_mraid).d(), this.d.a(m.vungle_local).d()};
        }

        public int a() {
            return new a() { // from class: com.vungle.publisher.eb.b.1
                @Override // com.vungle.publisher.eb.b.a
                int a(eb<?, ?, ?> ebVar) {
                    return ebVar.a();
                }
            }.a();
        }

        public int b() {
            return new a() { // from class: com.vungle.publisher.eb.b.2
                @Override // com.vungle.publisher.eb.b.a
                int a(eb<?, ?, ?> ebVar) {
                    return ebVar.b();
                }
            }.a();
        }

        public int a(final List<s> list) {
            Logger.v(Logger.PREPARE_TAG, "Mediator cleanUpInactivePlacements");
            return new a() { // from class: com.vungle.publisher.eb.b.3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super();
                }

                @Override // com.vungle.publisher.eb.b.a
                int a(eb<?, ?, ?> ebVar) {
                    Logger.v(Logger.PREPARE_TAG, "DeleteCommand : cleanUpInactivePlacements");
                    return ebVar.b(list);
                }
            }.a();
        }

        public dr<?> a(String str) {
            return a(str, cn.c.ready, cn.c.preparing);
        }

        public dr<?> b(String str) {
            return a(str, cn.c.ready);
        }

        public dr<?> c(String str) {
            return a(str, cn.c.viewed);
        }

        public Long c() throws Throwable {
            Cursor cursorA;
            Long lValueOf = null;
            try {
                String[] strArr = {cn.c.viewed.toString(), cn.c.deleting.toString()};
                cursorA = this.a.a(new hp.a().a("ad").b("status NOT IN (" + ce.a(strArr.length) + ")").b(" ORDER BY expiration_timestamp_seconds ASC").b(" LIMIT ?").a(strArr).c("1").a());
                try {
                    if (cursorA.moveToFirst()) {
                        Long lD = ce.d(cursorA, "expiration_timestamp_seconds");
                        if (lD == null) {
                            Logger.w(Logger.PREPARE_TAG, "next ad expiration time seconds is null");
                        } else {
                            lValueOf = Long.valueOf(lD.longValue() * 1000);
                            Logger.d(Logger.PREPARE_TAG, "next ad expiration time millis " + lValueOf);
                        }
                    }
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    return lValueOf;
                } catch (Throwable th) {
                    th = th;
                    if (cursorA != null) {
                        cursorA.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                cursorA = null;
            }
        }

        <A extends cn, R extends wc> dr<?> a(String str, cn.c... cVarArr) throws Throwable {
            Cursor cursorA;
            dr<?> drVar;
            String[] strArrA = yz.a(cVarArr);
            try {
                String[] strArrA2 = yz.a(this.b.a());
                Iterator<ct> it = this.c.b(str).iterator();
                cursorA = null;
                while (true) {
                    try {
                        try {
                            if (!it.hasNext()) {
                                drVar = null;
                                break;
                            }
                            hp hpVarA = this.g.a(it.next().a, strArrA, strArrA2);
                            cursorA = this.a.a(hpVarA);
                            int count = cursorA.getCount();
                            if (count == 0) {
                                Logger.d(Logger.PREPARE_TAG, "no record found for " + hpVarA.a());
                            } else {
                                if (count != 1) {
                                    throw new SQLException("fetched " + count);
                                }
                                if (cursorA.moveToFirst()) {
                                    cn.a<A, R> aVarN_ = this.d.a(this.b.a(cursorA, "type")).n_();
                                    drVar = (dr) aVarN_.a((cn) aVarN_.g_(), cursorA, true);
                                    break;
                                }
                            }
                        } catch (Exception e) {
                            e = e;
                            Logger.e(Logger.PREPARE_TAG, "could not get next ad by status", e);
                            if (cursorA == null) {
                                return null;
                            }
                            cursorA.close();
                            return null;
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (cursorA != null) {
                            cursorA.close();
                        }
                        throw th;
                    }
                }
                if (cursorA == null) {
                    return drVar;
                }
                cursorA.close();
                return drVar;
            } catch (Exception e2) {
                e = e2;
                cursorA = null;
            } catch (Throwable th2) {
                th = th2;
                cursorA = null;
            }
        }

        /* JADX INFO: compiled from: vungle */
        private abstract class a {
            abstract int a(eb<?, ?, ?> ebVar);

            private a() {
            }

            int a() {
                int iA = 0;
                for (eb<?, ?, ?> ebVar : b.this.d()) {
                    iA += a(ebVar);
                }
                return iA;
            }
        }
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class c {

        @Inject
        ci a;

        @Inject
        m.a b;

        @Inject
        ct.a c;

        @Inject
        zl d;

        @Inject
        c() {
        }

        hp a(String str, String[] strArr, String[] strArr2) {
            hp hpVarA = new hp.a().a("ad").b("id = ? ").b(" AND status IN (" + ce.a(strArr.length) + ")").b(" AND type IN (" + ce.a(strArr2.length) + ")").b(" AND expiration_timestamp_seconds > ?").b(" ORDER BY received_timestamp_millis ASC").b(" LIMIT ?").c(str).a(strArr).a(strArr2).a(new String[]{Long.toString(this.d.a() / 1000), "1"}).a();
            Logger.v(Logger.PREPARE_TAG, "built query: " + hpVarA.a());
            return hpVarA;
        }
    }
}
