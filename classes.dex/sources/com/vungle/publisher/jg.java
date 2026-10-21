package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import com.vungle.publisher.cn;
import com.vungle.publisher.ei;
import com.vungle.publisher.jm;
import com.vungle.publisher.wp;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class jg<A extends cn> extends jm<A> {
    Float e;
    Integer f;
    Integer g;
    Boolean h;
    Boolean i;
    Integer j;
    Integer k;
    Integer l;
    Integer m;
    Integer n;

    public abstract Uri x();

    protected jg() {
    }

    public Float D() {
        return this.e;
    }

    public Integer E() {
        return this.f;
    }

    public Boolean F() {
        return this.h;
    }

    public Boolean G() {
        return this.i;
    }

    public Integer H() {
        return this.j;
    }

    public Integer I() {
        return this.k;
    }

    public Integer J() {
        return this.l;
    }

    public boolean K() {
        return (this.g == null || this.n == null || this.n.intValue() <= this.g.intValue()) ? false : true;
    }

    public boolean L() {
        return (this.g == null || this.n == null || this.g.intValue() <= this.n.intValue()) ? false : true;
    }

    @Override // com.vungle.publisher.jm, com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        contentValuesA.put("cta_clickable_percent", this.e);
        contentValuesA.put("enable_cta_delay_seconds", this.f);
        contentValuesA.put("height", this.g);
        contentValuesA.put("is_cta_enabled", this.h);
        contentValuesA.put("is_cta_shown_on_touch", this.i);
        contentValuesA.put("show_cta_delay_seconds", this.j);
        contentValuesA.put("show_close_delay_incentivized_seconds", this.k);
        contentValuesA.put("show_close_delay_interstitial_seconds", this.l);
        contentValuesA.put("show_countdown_delay_seconds", this.m);
        contentValuesA.put("width", this.n);
        return contentValuesA;
    }

    @Override // com.vungle.publisher.jm, com.vungle.publisher.dp
    protected StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "cta_clickable_percent", this.e);
        a(sbP, "enable_cta_delay_seconds", this.f);
        a(sbP, "height", this.g);
        a(sbP, "is_cta_enabled", this.h);
        a(sbP, "is_cta_shown_on_touch", this.i);
        a(sbP, "show_cta_delay_seconds", this.j);
        a(sbP, "show_close_delay_incentivized_seconds", this.k);
        a(sbP, "show_close_delay_interstitial_seconds", this.l);
        a(sbP, "show_countdown_delay_seconds", this.m);
        a(sbP, "width", this.n);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    protected static abstract class a<A extends jh<A, V, R>, V extends jg<A>, R extends wp> extends jm.a<A, V, R> {
        protected abstract ei.b a();

        protected a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jm.a
        public V a(A a, R r) {
            V v = (V) super.a(a, r);
            if (v != null) {
                b(v, r);
            }
            return v;
        }

        public int a(V v, wp wpVar) {
            return b(v, wpVar).f_();
        }

        private V b(V v, wp wpVar) {
            v.g = wpVar.w();
            v.k = wpVar.t();
            v.l = wpVar.u();
            v.m = wpVar.v();
            v.n = wpVar.y();
            wp.a aVarR = wpVar.r();
            if (aVarR != null) {
                v.e = aVarR.c();
                v.f = aVarR.h();
                v.h = aVarR.d();
                v.i = aVarR.f();
                v.j = aVarR.g();
            }
            return v;
        }

        protected V a(String str, boolean z) throws SQLException {
            return a(str, a(), z);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jm.a
        public V a(V v, Cursor cursor, boolean z) {
            super.a(v, cursor, z);
            v.e = ce.b(cursor, "cta_clickable_percent");
            v.f = ce.c(cursor, "enable_cta_delay_seconds");
            v.g = ce.c(cursor, "height");
            v.h = ce.a(cursor, "is_cta_enabled");
            v.i = ce.a(cursor, "is_cta_shown_on_touch");
            v.j = ce.c(cursor, "show_cta_delay_seconds");
            v.k = ce.c(cursor, "show_close_delay_incentivized_seconds");
            v.l = ce.c(cursor, "show_close_delay_interstitial_seconds");
            v.m = ce.c(cursor, "show_countdown_delay_seconds");
            v.n = ce.c(cursor, "width");
            return v;
        }
    }
}
