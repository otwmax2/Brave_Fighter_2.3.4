package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import com.facebook.share.internal.ShareConstants;
import com.vungle.publisher.cn;
import com.vungle.publisher.dp;
import com.vungle.publisher.ei;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.m;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class jm<A extends cn> extends dp<Integer> implements ei<A> {
    protected String o;
    protected m p;
    protected ei.a q;
    protected ei.b r;
    protected A s;

    protected abstract cn.a<A, ?> y();

    protected jm() {
    }

    @Override // com.vungle.publisher.dp
    protected String c() {
        return "viewable";
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public Integer c_() {
        return (Integer) this.u;
    }

    @Override // com.vungle.publisher.ei
    public String f() {
        return this.o;
    }

    public A N() {
        if (this.s == null) {
            this.s = y().a(this.o, false);
        }
        return this.s;
    }

    @Override // com.vungle.publisher.ei
    public String d() {
        return N().h();
    }

    @Override // com.vungle.publisher.ei
    public ei.a j() {
        return this.q;
    }

    @Override // com.vungle.publisher.ei
    public void a(ei.a aVar) {
        Logger.v(Logger.PREPARE_TAG, "setting " + this.r + " status from " + this.q + " to " + aVar + " for ad_id: " + this.o);
        this.q = aVar;
    }

    @Override // com.vungle.publisher.ei
    public void b(ei.a aVar) {
        Logger.v(Logger.PREPARE_TAG, "updating " + this.r + " status from " + this.q + " to " + aVar + " for ad_id: " + this.o);
        this.q = aVar;
        f_();
    }

    @Override // com.vungle.publisher.ei
    public ei.b o() {
        return this.r;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put(h_(), (Integer) this.u);
            contentValues.put("ad_id", this.o);
            contentValues.put("type", this.r.toString());
            contentValues.put("ad_type", this.p.toString());
        }
        contentValues.put("status", this.q.toString());
        return contentValues;
    }

    @Override // com.vungle.publisher.dp
    protected StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "ad_id", this.o);
        a(sbP, "status", this.q);
        a(sbP, "type", this.r);
        return sbP;
    }

    @Override // com.vungle.publisher.dp
    protected String C() {
        return String.valueOf(o());
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    protected static abstract class a<A extends cn, W extends jm<A>, R extends wc> extends dp.a<W, Integer> {

        @Inject
        m.a e;

        protected a() {
        }

        protected W a(A a, R r) {
            if (r == null) {
                return null;
            }
            W wG_ = g_();
            wG_.s = a;
            wG_.o = r.g();
            wG_.p = r.d();
            wG_.q = ei.a.aware;
            return wG_;
        }

        protected List<W> a(ei.b bVar, String str, boolean z) {
            return a("ad_id = ? AND type = ?", new String[]{str, bVar.toString()});
        }

        protected W a(String str, ei.b bVar, boolean z) throws SQLException {
            W wG_ = g_();
            wG_.o = str;
            wG_.r = bVar;
            return (W) a((jm) wG_, z);
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected W a(W w, boolean z) throws Throwable {
            Cursor cursorQuery;
            String str;
            W w2 = null;
            Integer num = (Integer) w.u;
            ei.b bVar = w.r;
            try {
                String str2 = w.o;
                if (num == null) {
                    if (str2 == null) {
                        Logger.w(Logger.DATABASE_TAG, "unable to fetch " + bVar + ": no " + ShareConstants.WEB_DIALOG_PARAM_ID + " or ad_id");
                        str = null;
                        cursorQuery = null;
                    } else {
                        String str3 = "ad_id " + str2;
                        Logger.d(Logger.DATABASE_TAG, "fetching " + bVar + " by " + str3);
                        cursorQuery = this.d.getReadableDatabase().query("viewable", null, "ad_id = ? AND type = ?", new String[]{str2, String.valueOf(bVar)}, null, null, null);
                        str = str3;
                    }
                } else {
                    String str4 = "id: " + num;
                    Logger.d(Logger.DATABASE_TAG, "fetching " + bVar + " by " + str4);
                    cursorQuery = this.d.getReadableDatabase().query("viewable", null, "id = ?", new String[]{String.valueOf(num)}, null, null, null);
                    str = str4;
                }
                if (cursorQuery != null) {
                    try {
                        int count = cursorQuery.getCount();
                        switch (count) {
                            case 0:
                                Logger.v(Logger.DATABASE_TAG, "no " + bVar + " found for " + str);
                                break;
                            case 1:
                                Logger.d(Logger.DATABASE_TAG, "have " + bVar + " for " + str);
                                cursorQuery.moveToFirst();
                                w2 = (W) a((jm) w, cursorQuery, z);
                                break;
                            default:
                                throw new SQLException(count + " " + bVar + " records for " + str);
                        }
                    } catch (Throwable th) {
                        th = th;
                        if (cursorQuery != null) {
                            cursorQuery.close();
                        }
                        throw th;
                    }
                }
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                Logger.v(Logger.DATABASE_TAG, "fetched " + w2);
                return w2;
            } catch (Throwable th2) {
                th = th2;
                cursorQuery = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.dp.a
        public W a(W w, Cursor cursor, boolean z) {
            w.u = ce.c(cursor, ShareConstants.WEB_DIALOG_PARAM_ID);
            w.o = ce.e(cursor, "ad_id");
            w.q = (ei.a) ce.a(cursor, "status", ei.a.class);
            w.r = (ei.b) ce.a(cursor, "type", ei.b.class);
            w.p = this.e.a(ce.e(cursor, "ad_type"));
            return w;
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "viewable";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Integer[] b(int i) {
            return new Integer[i];
        }
    }
}
