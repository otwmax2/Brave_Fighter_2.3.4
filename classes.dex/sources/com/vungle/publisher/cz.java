package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.facebook.share.internal.ShareConstants;
import com.vungle.publisher.cn;
import com.vungle.publisher.co;
import com.vungle.publisher.ct;
import com.vungle.publisher.cy;
import com.vungle.publisher.cz;
import com.vungle.publisher.da;
import com.vungle.publisher.dp;
import com.vungle.publisher.fg;
import com.vungle.publisher.gv;
import com.vungle.publisher.ic;
import com.vungle.publisher.ki;
import com.vungle.publisher.log.Logger;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class cz<T extends cz<T, P, E, A>, P extends cy<T, P, E>, E extends da<P>, A extends cn> extends dp<Integer> {
    protected A a;
    protected String b;
    protected String c;
    protected Long d;
    protected boolean e;
    protected String f;
    protected String g;
    protected c h;
    protected Long i;
    protected Integer j;
    protected Long k;
    protected Long l;
    protected List<P> m;
    protected List<co> n;
    Long o;
    protected String p;
    protected int q;

    @Inject
    zl r;

    /* JADX INFO: compiled from: vungle */
    public enum c {
        open,
        failed,
        playing,
        reportable
    }

    protected abstract cy.a<T, P, E> a();

    protected cz() {
    }

    @Override // com.vungle.publisher.dp
    protected String c() {
        return "ad_report";
    }

    public List<co> e() {
        return this.n;
    }

    protected String h() {
        return this.a == null ? this.b : (String) this.a.c_();
    }

    protected void a(String str) {
        this.b = str;
    }

    public A i() {
        return this.a;
    }

    public boolean m() {
        return this.e;
    }

    public void b(boolean z) {
        this.e = z;
    }

    public String n() {
        return this.c;
    }

    public void b(String str) {
        this.c = str;
    }

    public String r() {
        return this.f;
    }

    public void a(c cVar) {
        Logger.d(Logger.REPORT_TAG, "setting ad_report status " + cVar + " for " + B());
        this.h = cVar;
    }

    public Integer s() {
        return this.j;
    }

    protected void a(Integer num) {
        Logger.d(Logger.REPORT_TAG, "setting video duration millis " + num + " for " + B());
        this.j = num;
    }

    public void b(Integer num) {
        a(num);
        f_();
    }

    public int t() {
        if (this.l == null) {
            Logger.w(Logger.DATABASE_TAG, "unable to calculate ad duration because view start millis was null");
            return -1;
        }
        if (this.k == null) {
            Logger.w(Logger.DATABASE_TAG, "unable to calculate ad duration because view end millis was null");
            return -1;
        }
        return (int) (this.k.longValue() - this.l.longValue());
    }

    public void a(Long l) {
        Logger.d(Logger.REPORT_TAG, "setting ad end millis " + l + " for " + B());
        this.k = l;
    }

    public void b(Long l) {
        a(l);
        f_();
    }

    public Long u() {
        return this.l;
    }

    public void c(Long l) {
        Logger.d(Logger.REPORT_TAG, "setting ad start millis " + l + " for " + B());
        this.l = l;
    }

    public String v() {
        return this.p;
    }

    public void a(int i) {
        this.q = i;
    }

    public int w() {
        return this.q;
    }

    public P x() {
        List<P> listZ = z();
        P p = (P) a().a(this);
        p.d_();
        listZ.add(p);
        return p;
    }

    public P[] y() {
        List<P> listZ = z();
        return (P[]) ((cy[]) listZ.toArray(a().d(listZ.size())));
    }

    protected List<P> z() {
        List<P> list = this.m;
        if (list == null) {
            List<P> listA = a().a(this, false);
            this.m = listA;
            return listA;
        }
        return list;
    }

    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        long jA = this.r.a();
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("ad_id", h());
            Long lValueOf = Long.valueOf(jA);
            this.d = lValueOf;
            contentValues.put("insert_timestamp_millis", lValueOf);
        }
        contentValues.put("incentivized_publisher_app_user_id", this.c);
        contentValues.put("is_incentivized", Boolean.valueOf(this.e));
        contentValues.put("placement_reference_id", this.f);
        contentValues.put("ad_token", this.g);
        contentValues.put("status", zk.a(this.h));
        Long lValueOf2 = Long.valueOf(jA);
        this.i = lValueOf2;
        contentValues.put("update_timestamp_millis", lValueOf2);
        contentValues.put("video_duration_millis", this.j);
        contentValues.put("view_end_millis", this.k);
        contentValues.put("view_start_millis", this.l);
        contentValues.put("app_id", this.p);
        contentValues.put("ordinal_view_count", Integer.valueOf(this.q));
        return contentValues;
    }

    @Override // com.vungle.publisher.dp
    public StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "ad_id", h());
        a(sbP, "insert_timestamp_millis", this.d);
        a(sbP, "incentivized_publisher_app_user_id", this.c);
        a(sbP, "is_incentivized", Boolean.valueOf(this.e));
        a(sbP, "placement_reference_id", this.f);
        a(sbP, "ad_token", this.g);
        a(sbP, "status", this.h);
        a(sbP, "update_timestamp_millis", this.i);
        a(sbP, "video_duration_millis", this.j);
        a(sbP, "view_end_millis", this.k);
        a(sbP, "view_start_millis", this.l);
        a(sbP, "plays", this.m == null ? "not fetched" : Integer.valueOf(this.m.size()));
        a(sbP, "ordinal_view_count", Integer.valueOf(this.q));
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class b {

        @Inject
        ci a;

        @Inject
        fg.a b;

        @Inject
        ic.a c;

        @Inject
        ki.a d;

        @Inject
        gv.a e;
        Map<m, a<?, ?, ?, ?, ?>> f;

        @Inject
        b() {
        }

        public Map<m, a<?, ?, ?, ?, ?>> a() {
            if (this.f != null) {
                return this.f;
            }
            this.f = new HashMap();
            this.f.put(m.vungle_local, this.b);
            this.f.put(m.vungle_streaming, this.c);
            this.f.put(m.vungle_mraid, this.d);
            this.f.put(m.third_party_mraid, this.e);
            return this.f;
        }

        public Collection<a<?, ?, ?, ?, ?>> b() {
            return a().values();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <A extends cn> eg a(dr<A> drVar) {
            Object objB = b(drVar.m_());
            try {
                return (eg) objB;
            } catch (Exception e) {
                throw new IllegalArgumentException("ad report type is not cacheable " + objB);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public <A extends cn> eg b(dr<A> drVar) {
            cn cnVarM_ = drVar.m_();
            try {
                return (eg) a(cnVarM_);
            } catch (Exception e) {
                throw new IllegalArgumentException("ad type is not cacheable " + cnVarM_);
            }
        }

        public <A extends cn> void a(dr<A> drVar, Long l) {
            b(drVar).a_(l);
        }

        public List<cz<?, ?, ?, ?>> c() {
            ArrayList arrayList = new ArrayList();
            Iterator<a<?, ?, ?, ?, ?>> it = b().iterator();
            while (it.hasNext()) {
                Iterator<T> it2 = it.next().f().iterator();
                while (it2.hasNext()) {
                    arrayList.add(it2.next());
                }
            }
            return arrayList;
        }

        public int d() {
            ContentValues contentValues = new ContentValues();
            contentValues.put("status", c.reportable.toString());
            return this.a.getWritableDatabase().update("ad_report", contentValues, "status = ?", new String[]{c.playing.toString()});
        }

        public <A extends cn> cz<?, ?, ?, A> a(final A a) {
            return (cz) new q<cz<?, ?, ?, A>>() { // from class: com.vungle.publisher.cz.b.1
                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public cz<?, ?, ?, A> a() {
                    return b.this.b.c(a);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public cz<?, ?, ?, A> c() {
                    return b.this.d.c(a);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
                public cz<?, ?, ?, A> d() {
                    return b.this.e.c(a);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
                public cz<?, ?, ?, A> b() {
                    return b.this.c.c(a);
                }
            }.a(a);
        }

        public <A extends cn> cz<?, ?, ?, A> b(final A a) {
            return (cz) new q<cz<?, ?, ?, A>>() { // from class: com.vungle.publisher.cz.b.2
                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public cz<?, ?, ?, A> a() {
                    return b.this.b.b(a);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public cz<?, ?, ?, A> c() {
                    return b.this.d.b(a);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
                public cz<?, ?, ?, A> d() {
                    return b.this.e.b(a);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
                public cz<?, ?, ?, A> b() {
                    return b.this.c.b(a);
                }
            }.a(a);
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class a<T extends cz<T, P, E, A>, P extends cy<T, P, E>, E extends da<P>, A extends cn, R extends wc> extends dp.a<T, Integer> {

        @Inject
        co.a a;

        @Inject
        ct.a b;

        protected abstract cn.a<A, R> a();

        protected abstract cy.a<T, P, E> d();

        public abstract m e();

        @Override // com.vungle.publisher.dp.a
        public /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        @Override // com.vungle.publisher.dp.a
        public /* bridge */ /* synthetic */ List a(String str, String[] strArr) {
            return super.a(str, strArr);
        }

        protected a() {
        }

        public T a(A a) {
            T tG_ = g_();
            tG_.a = a;
            tG_.h = c.open;
            if (a != null) {
                tG_.p = a.j;
            }
            a((cz) tG_, (cn) a, false);
            Logger.d(Logger.DATABASE_TAG, "creating new " + tG_.B());
            return tG_;
        }

        protected List<T> f() {
            return a((List) a("status = ? AND ad_id IN (SELECT id FROM ad WHERE type = ?)", new String[]{c.reportable.toString(), e().toString()}, "insert_timestamp_millis ASC"), true);
        }

        public T b(A a) {
            T t = (T) a((cn) a, false);
            if (t == null) {
                T t2 = (T) a((cn) a);
                t2.d_();
                return t2;
            }
            return t;
        }

        protected T a(A a, String str, String[] strArr, boolean z) {
            if (a == null) {
                throw new IllegalArgumentException("null ad");
            }
            String str2 = (String) a.c_();
            if (str2 == null) {
                throw new IllegalArgumentException("null ad_id");
            }
            String[] strArr2 = new String[strArr.length + 1];
            strArr2[0] = str2;
            for (int i = 0; i < strArr.length; i++) {
                strArr2[i + 1] = strArr[i];
            }
            List<T> listA = a("ad_id = ? AND " + str, strArr2, "insert_timestamp_millis DESC");
            String str3 = "ad_id = ? AND " + str + ", with params: " + zk.a(strArr2);
            int size = listA.size();
            switch (size) {
                case 0:
                    return null;
                case 1:
                    T t = (T) a(listA.get(0), a, z);
                    Logger.d(Logger.DATABASE_TAG, "fetched " + t.B());
                    return t;
                default:
                    Logger.w(Logger.DATABASE_TAG, size + " ad_report records for " + str3);
                    return null;
            }
        }

        public T c(A a) {
            return (T) a((cn) a, false);
        }

        public T a(A a, boolean z) {
            return (T) a((cn) a, "status = ?", new String[]{c.open.toString()}, z);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.dp.a
        public T a(T t, Cursor cursor, boolean z) {
            t.u = ce.c(cursor, ShareConstants.WEB_DIALOG_PARAM_ID);
            t.a(ce.e(cursor, "ad_id"));
            t.c = ce.e(cursor, "incentivized_publisher_app_user_id");
            t.e = ce.a(cursor, "is_incentivized").booleanValue();
            t.d = ce.d(cursor, "insert_timestamp_millis");
            t.f = ce.e(cursor, "placement_reference_id");
            t.g = ce.e(cursor, "ad_token");
            t.h = (c) ce.a(cursor, "status", c.class);
            t.i = ce.d(cursor, "update_timestamp_millis");
            t.j = ce.c(cursor, "video_duration_millis");
            t.k = ce.d(cursor, "view_end_millis");
            t.l = ce.d(cursor, "view_start_millis");
            t.p = ce.e(cursor, "app_id");
            t.q = ce.c(cursor, "ordinal_view_count").intValue();
            return t;
        }

        protected List<T> a(List<T> list, boolean z) {
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                a(it.next(), (cn) null, z);
            }
            return list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected T a(T t, A a, boolean z) {
            if (a == null) {
                t.a = a().a(t.h(), false);
            } else {
                t.a = a;
                List<ct> listA = this.b.a((String) a.c_());
                if (listA != null && listA.size() == 1) {
                    t.f = listA.get(0).b;
                }
            }
            if (z) {
                t.m = d().a(t, z);
                t.n = this.a.a((Integer) t.u);
            }
            return t;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer[] b(int i) {
            return new Integer[i];
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "ad_report";
        }
    }
}
