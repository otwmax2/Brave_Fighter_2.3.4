package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.facebook.share.internal.ShareConstants;
import com.ironsource.sdk.constants.Constants;
import com.vungle.publisher.cy;
import com.vungle.publisher.dp;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class da<P extends cy<?, P, ?>> extends dp<Integer> {
    P a;
    jf b;
    long c;
    String d;
    private String e;

    protected da() {
    }

    public jf a() {
        return this.b;
    }

    public long e() {
        return this.c;
    }

    public Integer h() {
        if (this.a == null) {
            return null;
        }
        return (Integer) this.a.c_();
    }

    public String i() {
        return this.d;
    }

    @Override // com.vungle.publisher.dp
    protected String c() {
        return "ad_report_event";
    }

    @Override // com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValues = new ContentValues();
        if (z) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            this.c = jCurrentTimeMillis;
            contentValues.put("insert_timestamp_millis", Long.valueOf(jCurrentTimeMillis));
            contentValues.put("play_id", h());
            contentValues.put("event", this.b.toString());
            contentValues.put(Constants.ParametersKeys.VALUE, this.d);
        }
        return contentValues;
    }

    @Override // com.vungle.publisher.dp
    public String toString() {
        String str = this.e;
        if (str == null) {
            String string = super.toString();
            this.e = string;
            return string;
        }
        return str;
    }

    @Override // com.vungle.publisher.dp
    protected StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "play_id", h());
        a(sbP, "event", this.b);
        a(sbP, "insert_timestamp_millis", Long.valueOf(this.c));
        a(sbP, Constants.ParametersKeys.VALUE, this.d);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    protected static abstract class a<P extends cy<?, P, E>, E extends da<P>> extends dp.a<E, Integer> {
        protected abstract jf a(Cursor cursor);

        protected a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected E a(P p, jf jfVar, Object obj) {
            if (p == 0) {
                throw new IllegalArgumentException("null ad_play");
            }
            if (jfVar == null) {
                throw new IllegalArgumentException("null event");
            }
            E eG_ = g_();
            eG_.a = p;
            eG_.b = jfVar;
            eG_.d = obj == null ? null : obj.toString();
            return eG_;
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected List<E> a(P p) {
            if (p == 0) {
                throw new IllegalArgumentException("null ad_play");
            }
            Integer num = (Integer) p.c_();
            if (num == null) {
                throw new IllegalArgumentException("null play_id");
            }
            List<E> listA = a("play_id = ?", new String[]{num.toString()}, "insert_timestamp_millis ASC");
            Iterator<E> it = listA.iterator();
            while (it.hasNext()) {
                it.next().a = p;
            }
            return listA;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: Type inference failed for: r0v2, types: [I, java.lang.Integer] */
        @Override // com.vungle.publisher.dp.a
        public E a(E e, Cursor cursor, boolean z) {
            e.b = a(cursor);
            e.u = ce.c(cursor, ShareConstants.WEB_DIALOG_PARAM_ID);
            e.c = ce.d(cursor, "insert_timestamp_millis").longValue();
            e.d = ce.e(cursor, Constants.ParametersKeys.VALUE);
            return e;
        }

        @Override // com.vungle.publisher.dp.a
        protected String c() {
            return "ad_report_event";
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Integer[] b(int i) {
            return new Integer[i];
        }
    }
}
