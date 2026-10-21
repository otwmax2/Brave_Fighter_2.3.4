package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.text.TextUtils;
import com.vungle.publisher.cn;
import com.vungle.publisher.je;
import com.vungle.publisher.jg;
import com.vungle.publisher.jh;
import com.vungle.publisher.wp;
import java.util.List;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class jh<A extends jh<A, V, R>, V extends jg<A>, R extends wp> extends cn {
    protected String A;
    protected String B;
    protected V C;
    protected je<?, A, R, ji, ?, ?> D;
    protected boolean E;

    @Inject
    qg F;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.cn
    public abstract a<A, V, R> x();

    public String y() {
        return this.A;
    }

    public String z() {
        return this.B;
    }

    public List<String> a(jf jfVar) {
        return this.D.a(jfVar);
    }

    public V D() {
        return (V) x().a(this, false);
    }

    public void E() {
        if (this.D != null) {
            this.D.c();
        }
    }

    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: w */
    public String d_() throws SQLException {
        String str = (String) super.d_();
        E();
        if (this.C != null) {
            this.C.d_();
        }
        return str;
    }

    @Override // com.vungle.publisher.dp, com.vungle.publisher.gj
    public int f_() {
        int iF_ = super.f_();
        if (iF_ == 1 && this.C != null) {
            this.C.f_();
        }
        return iF_;
    }

    @Override // com.vungle.publisher.cn, com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        contentValuesA.put("call_to_action_final_url", this.A);
        contentValuesA.put("call_to_action_url", this.B);
        return contentValuesA;
    }

    @Override // com.vungle.publisher.cn, com.vungle.publisher.dp
    protected StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "call_to_action_final_url", this.A);
        a(sbP, "call_to_action_url", this.B);
        this.D.a(sbP);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes2.dex */
    protected static abstract class a<A extends jh<A, V, R>, V extends jg<A>, R extends wp> extends cn.a<A, R> {
        protected abstract je.a<?, A, R, ji, ?, ?> j();

        protected abstract jg.a<A, V, R> k();

        protected a() {
        }

        @Override // com.vungle.publisher.cn.a, com.vungle.publisher.ea
        public A a(R r) {
            A a = (A) super.a(r);
            a.D = j().a(a, r);
            a.C = (V) k().a((jh) a, (wp) r);
            return a;
        }

        @Override // com.vungle.publisher.cn.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int b(A a, R r) {
            a((jh) a, (wp) r);
            k().a(a.D(), r);
            a.D.a(r);
            return super.b(a, r);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cn.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public A a(A a, R r) {
            super.a(a, r);
            String strQ = r.q();
            String strS = r.s();
            if (TextUtils.isEmpty(strQ)) {
                a.A = strS;
            } else {
                a.A = strQ;
                a.B = strS;
            }
            return a;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cn.a, com.vungle.publisher.dp.a
        public A a(A a, Cursor cursor, boolean z) {
            super.a(a, cursor, z);
            a.A = ce.e(cursor, "call_to_action_final_url");
            a.B = ce.e(cursor, "call_to_action_url");
            a.D = j().a(a);
            if (z) {
                a((jh) a, z);
            }
            return a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        protected V a(A a, boolean z) {
            if (a.E) {
                return a.C;
            }
            V v = (V) k().a((String) a.u, z);
            a.C = v;
            a.E = true;
            return v;
        }
    }
}
