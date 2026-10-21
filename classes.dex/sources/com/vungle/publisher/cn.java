package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.facebook.share.internal.ShareConstants;
import com.vungle.publisher.ct;
import com.vungle.publisher.cz;
import com.vungle.publisher.dp;
import com.vungle.publisher.el;
import com.vungle.publisher.gk;
import com.vungle.publisher.hp;
import com.vungle.publisher.hr;
import com.vungle.publisher.jn;
import com.vungle.publisher.log.Logger;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class cn extends dp<String> {
    protected static final String a = "(SELECT DISTINCT ad_id FROM ad_report WHERE status IN ('" + cz.c.reportable + "', '" + cz.c.playing + "'))";
    protected static final String b = "id NOT IN " + a;
    protected String c;
    protected String d;
    protected m e;
    protected c f;
    protected long g;
    protected long h;
    protected long i;
    protected String j;
    protected String k;
    int l;
    Long m;
    String n;
    int o;
    long p;
    String q;
    String r;
    public String s;

    /* JADX INFO: compiled from: vungle */
    public enum c {
        aware,
        failed,
        invalid,
        preparing,
        ready,
        viewed,
        deleting
    }

    /* JADX INFO: renamed from: a */
    protected abstract a<?, ?> x();

    protected abstract boolean b();

    @Override // com.vungle.publisher.dp
    protected final String c() {
        return "ad";
    }

    @Override // com.vungle.publisher.dp
    protected boolean i_() {
        return false;
    }

    public String e() {
        return this.j;
    }

    public m a_() {
        return this.e;
    }

    public c g() {
        return this.f;
    }

    public void a(String str) {
        this.n = str;
        this.q = null;
    }

    public String h() {
        if (this.q == null && this.n != null) {
            this.q = qr.a(this.n, qr.c(this.d));
        }
        return this.q;
    }

    public String i() {
        return this.k;
    }

    public int j() {
        return this.o;
    }

    public void a(int i) {
        this.o = i;
    }

    public long k() {
        return this.i;
    }

    public String l() {
        return this.c;
    }

    public String m() {
        return this.d;
    }

    public String n() {
        return this.r;
    }

    public void a(c cVar) {
        Logger.v(Logger.PREPARE_TAG, "setting status from " + this.f + " to " + cVar + " for " + B());
        this.f = cVar;
        if (cVar == c.failed) {
            this.i = System.currentTimeMillis();
        }
    }

    public void b(c cVar) {
        x().a(Arrays.asList(this), cVar);
    }

    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.h = jCurrentTimeMillis;
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(h_(), c_());
            this.g = jCurrentTimeMillis;
            contentValues.put("insert_timestamp_millis", Long.valueOf(jCurrentTimeMillis));
            contentValues.put("type", this.e.toString());
        }
        contentValues.put("ad_token", this.c);
        contentValues.put("ad_token_hash", this.d);
        contentValues.put("advertising_app_vungle_id", this.j);
        contentValues.put("campaign_id", this.r);
        contentValues.put("status", this.f.toString());
        contentValues.put("update_timestamp_millis", Long.valueOf(jCurrentTimeMillis));
        contentValues.put("failed_timestamp_millis", Long.valueOf(this.i));
        contentValues.put("delete_local_content_attempts", Integer.valueOf(this.l));
        contentValues.put("expiration_timestamp_seconds", this.m);
        contentValues.put("parent_path", this.n);
        contentValues.put("prepare_retry_count", Integer.valueOf(this.o));
        contentValues.put("received_timestamp_millis", Long.valueOf(this.p));
        return contentValues;
    }

    @Override // com.vungle.publisher.dp
    protected StringBuilder j_() {
        StringBuilder sbJ_ = super.j_();
        a(sbJ_, "type", this.e);
        return sbJ_;
    }

    @Override // com.vungle.publisher.dp
    protected StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "ad_token", this.c);
        a(sbP, "advertising_app_vungle_id", this.j);
        a(sbP, "campaign_id", this.r);
        a(sbP, "insert_timestamp_millis", Long.valueOf(this.g));
        a(sbP, "status", this.f);
        a(sbP, "update_timestamp_millis", Long.valueOf(this.h));
        a(sbP, "failed_timestamp_millis", Long.valueOf(this.i));
        a(sbP, "delete_local_content_attempts", Integer.valueOf(this.l));
        a(sbP, "expiration_timestamp_seconds", this.m);
        a(sbP, "parent_path", this.n);
        a(sbP, "prepare_retry_count", Integer.valueOf(this.o));
        a(sbP, "received_timestamp_millis", Long.valueOf(this.p));
        return sbP;
    }

    @Override // com.vungle.publisher.dp
    public int q() {
        int i = this.l;
        this.l = i + 1;
        if (x().a(c_(), m(), c.ready, c.preparing)) {
            return super.q();
        }
        if (b()) {
            return super.q();
        }
        Logger.w(Logger.DATABASE_TAG, "unable to delete files for " + B() + " attempt " + i);
        f_();
        return 0;
    }

    public boolean equals(Object ad) {
        return (ad instanceof cn) && a((cn) ad);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean a(cn cnVar) {
        return (cnVar == null || cnVar.u == 0 || !((String) cnVar.u).equals(this.u)) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        return this.u == 0 ? super.hashCode() : ((String) this.u).hashCode();
    }

    public boolean r() {
        return x().a(this);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class b {

        @Inject
        el.a a;

        @Inject
        hr.a b;

        @Inject
        jn.a c;

        @Inject
        gk.a d;

        @Inject
        b() {
        }

        public <A extends cn, R extends wc, F extends ea<A, R>> F a(final m mVar) {
            return (F) new q<F>() { // from class: com.vungle.publisher.cn.b.1
                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Incorrect return type in method signature: ()TF; */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public ea a() {
                    return b.this.a;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Incorrect return type in method signature: ()TF; */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public ea c() {
                    return b.this.c;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Incorrect return type in method signature: ()TF; */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
                public ea d() {
                    return b.this.d;
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Incorrect return type in method signature: ()TF; */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
                public ea b() {
                    throw new IllegalArgumentException("cannot get cacheable streamingVideoAdReportFactory for ad type: " + mVar);
                }
            }.a(mVar);
        }

        public cn a(m mVar, final String str) {
            return new q<cn>() { // from class: com.vungle.publisher.cn.b.2
                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public cn a() {
                    return (cn) b.this.a.a(str);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public cn b() {
                    return (cn) b.this.b.a(str);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
                public cn c() {
                    return (cn) b.this.c.a(str);
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Multi-variable type inference failed */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
                public cn d() {
                    return (cn) b.this.d.a(str);
                }
            }.a(mVar);
        }
    }

    /* JADX INFO: compiled from: vungle */
    public static abstract class a<A extends cn, R extends wc> extends dp.a<A, String> {

        @Inject
        qg a;

        @Inject
        zl b;

        @Inject
        ct.a c;

        protected abstract m a();

        @Override // com.vungle.publisher.dp.a
        public /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        @Override // com.vungle.publisher.dp.a
        public /* bridge */ /* synthetic */ List a(String str, String[] strArr) {
            return super.a(str, strArr);
        }

        /* JADX WARN: Type inference failed for: r1v0, types: [I, java.lang.String] */
        public A a(R r) {
            A aG_ = g_();
            aG_.u = r.g();
            aG_.t = String.class;
            aG_.e = a();
            aG_.m = r.c();
            a(aG_, r);
            return aG_;
        }

        protected A a(A a, R r) {
            a.c = r.a();
            a.d = r.b();
            a.j = r.h();
            a.r = r.f();
            return a;
        }

        public int b(A a, R r) {
            a.m = r.c();
            return a.f_();
        }

        protected int b() {
            c cVar = c.deleting;
            Logger.d(Logger.DATABASE_TAG, "deleting " + a() + " records without pending reports in status " + cVar);
            return this.d.getWritableDatabase().delete("ad", cn.b + " AND status = ?", new String[]{cVar.toString()});
        }

        public boolean a(cn cnVar) {
            if (!b("id = ? AND " + cn.b + " AND ((expiration_timestamp_seconds IS NULL OR expiration_timestamp_seconds <= ?) OR status != ?)", new String[]{cnVar.c_(), Long.toString(this.b.a() / 1000), c.ready.toString()})) {
                return false;
            }
            Logger.d(Logger.DATABASE_TAG, "deleting ad after successful report");
            return cnVar.q() > 0;
        }

        int a(c cVar, c cVar2) {
            if (cVar2 != c.ready && cVar == c.ready) {
                return -1;
            }
            if (cVar2 != c.ready || cVar == c.ready) {
                return 0;
            }
            return 1;
        }

        void a(int i, String str) {
            if (i > 0) {
                Logger.d(Logger.DATABASE_TAG, "ad availability increased by " + i);
                this.a.a(new am(str));
            } else if (i < 0) {
                Logger.d(Logger.DATABASE_TAG, "ad availability decreased by " + i);
                this.a.a(new ag(str));
            }
        }

        protected int a(List<? extends cn> list, c cVar) {
            String[] strArr = new String[1];
            HashMap map = new HashMap();
            int i = 0;
            for (cn cnVar : list) {
                strArr[0] = cnVar.c_();
                int iA = a(cnVar.g(), cVar);
                cnVar.a(cVar);
                ContentValues contentValues = new ContentValues();
                contentValues.put("status", cVar.toString());
                Logger.d(Logger.DATABASE_TAG, "updating status of ads " + strArr[0] + " to " + cVar);
                if (this.d.getWritableDatabase().updateWithOnConflict(c(), contentValues, "id IN ( ? )", strArr, 3) > 0) {
                    i++;
                    Iterator<ct> it = this.c.a(strArr[0]).iterator();
                    while (it.hasNext()) {
                        String str = it.next().b;
                        if (map.containsKey(str)) {
                            map.put(str, Integer.valueOf(((Integer) map.get(str)).intValue() + iA));
                        } else {
                            map.put(str, Integer.valueOf(iA));
                        }
                    }
                }
                i = i;
            }
            for (Map.Entry entry : map.entrySet()) {
                a(((Integer) entry.getValue()).intValue(), (String) entry.getKey());
            }
            return i;
        }

        public boolean a(String str, String str2, c... cVarArr) {
            String[] strArrA = yz.a(cVarArr);
            hp hpVarA = new hp.a().a("ad").b("id != ? ").b(" AND ad_token_hash = ? ").b(" AND status IN (" + ce.a(strArrA.length) + ")").c(str).c(str2).a(strArrA).a();
            Logger.v(Logger.DATABASE_TAG, "built query: " + hpVarA.a());
            int count = this.d.a(hpVarA).getCount();
            Logger.d(Logger.DATABASE_TAG, "No. of record found = " + count + " for : " + hpVarA.a());
            if (count <= 0) {
                return false;
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v9, types: [I, java.lang.String] */
        @Override // com.vungle.publisher.dp.a
        public A a(A a, Cursor cursor, boolean z) {
            a.c = ce.e(cursor, "ad_token");
            a.d = ce.e(cursor, "ad_token_hash");
            a.j = ce.e(cursor, "advertising_app_vungle_id");
            a.r = ce.e(cursor, "campaign_id");
            a.u = ce.e(cursor, ShareConstants.WEB_DIALOG_PARAM_ID);
            a.g = ce.d(cursor, "insert_timestamp_millis").longValue();
            a.f = (c) ce.a(cursor, "status", c.class);
            a.e = (m) ce.a(cursor, "type", m.class);
            a.h = ce.d(cursor, "update_timestamp_millis").longValue();
            a.i = ce.d(cursor, "failed_timestamp_millis").longValue();
            a.l = ce.a(cursor, "delete_local_content_attempts", 0);
            a.m = ce.d(cursor, "expiration_timestamp_seconds");
            a.o = ce.a(cursor, "prepare_retry_count", 0);
            a.p = this.b.a();
            return a;
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "ad";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public String[] b(int i) {
            return new String[i];
        }
    }
}
