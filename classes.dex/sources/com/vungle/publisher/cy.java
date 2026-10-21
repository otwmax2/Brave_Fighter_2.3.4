package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.facebook.share.internal.ShareConstants;
import com.vungle.publisher.cy;
import com.vungle.publisher.cz;
import com.vungle.publisher.da;
import com.vungle.publisher.dp;
import com.vungle.publisher.log.Logger;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class cy<T extends cz<T, P, E, ?>, P extends cy<T, P, E>, E extends da<P>> extends dp<Integer> {
    T a;
    Integer b;
    Long c;
    List<E> d;

    protected abstract da.a<P, E> a();

    protected cy() {
    }

    public void a(Long l) {
        this.c = l;
    }

    public void a(Integer num) {
        if (this.b == null || (num != null && num.intValue() > this.b.intValue())) {
            Logger.d(Logger.AD_TAG, "setting watched millis " + num);
            this.b = num;
        } else {
            Logger.w(Logger.AD_TAG, "ignoring decreased watched millis " + num);
        }
    }

    public void a(jf jfVar, Object obj) {
        List<E> listH = h();
        if (listH.size() >= 1000) {
            Logger.w(Logger.REPORT_TAG, "ignoring report event " + jfVar + " because the event buffer is full!");
            return;
        }
        Logger.d(Logger.REPORT_TAG, "adding report event " + jfVar + (obj == null ? "" : ", value " + obj + " for " + B()));
        da daVarA = a().a(this, jfVar, obj);
        daVarA.d_();
        listH.add(daVarA);
    }

    public E[] e() {
        List<E> listH = h();
        return (E[]) ((da[]) listH.toArray(a().d(listH.size())));
    }

    List<E> h() {
        List<E> list = this.d;
        if (list == null) {
            List<E> listA = a().a(this);
            this.d = listA;
            return listA;
        }
        return list;
    }

    @Override // com.vungle.publisher.dp
    protected String c() {
        return "ad_play";
    }

    public Integer i() {
        if (this.a == null) {
            return null;
        }
        return (Integer) this.a.c_();
    }

    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            contentValues.put("report_id", i());
        } else {
            contentValues.put("start_millis", this.c);
            contentValues.put("watched_millis", this.b);
        }
        return contentValues;
    }

    @Override // com.vungle.publisher.dp
    protected StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "report_id", i());
        a(sbP, "start_millis", this.c);
        a(sbP, "watched_millis", this.b);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    protected static abstract class a<T extends cz<T, P, E, ?>, P extends cy<T, P, E>, E extends da<P>> extends dp.a<P, Integer> {
        protected abstract da.a<P, E> a();

        protected a() {
        }

        protected P a(T t) {
            P pG_ = g_();
            pG_.a = t;
            return pG_;
        }

        protected List<P> a(T t, boolean z) {
            if (t == null) {
                throw new IllegalArgumentException("null ad_report");
            }
            Integer num = (Integer) t.c_();
            if (num == null) {
                throw new IllegalArgumentException("null report_id");
            }
            List<P> listA = a("report_id = ?", new String[]{num.toString()}, "start_millis ASC", (String) null);
            Iterator<P> it = listA.iterator();
            while (it.hasNext()) {
                it.next().a = t;
            }
            return listA;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v1, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.dp.a
        public P a(P p, Cursor cursor, boolean z) {
            p.u = ce.c(cursor, ShareConstants.WEB_DIALOG_PARAM_ID);
            p.b = ce.c(cursor, "watched_millis");
            p.c = ce.d(cursor, "start_millis");
            if (z) {
                p.d = a().a(p);
            }
            return p;
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "ad_play";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer[] b(int i) {
            return new Integer[i];
        }
    }
}
