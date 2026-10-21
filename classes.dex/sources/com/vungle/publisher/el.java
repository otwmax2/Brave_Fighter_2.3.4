package com.vungle.publisher;

import android.database.Cursor;
import android.database.SQLException;
import com.vungle.publisher.cn;
import com.vungle.publisher.dw;
import com.vungle.publisher.ei;
import com.vungle.publisher.ek;
import com.vungle.publisher.em;
import com.vungle.publisher.er;
import com.vungle.publisher.fq;
import com.vungle.publisher.jh;
import com.vungle.publisher.log.Logger;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class el extends jh<el, ek, wg> implements dr<el> {
    em w;
    public dw x;
    boolean y;

    @Inject
    a z;

    @Override // com.vungle.publisher.dr
    public /* synthetic */ String d() {
        return (String) super.c_();
    }

    @Inject
    protected el() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return a();
    }

    @Override // com.vungle.publisher.dr
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public el m_() {
        return this;
    }

    @Override // com.vungle.publisher.jh
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public a x() {
        return this.z;
    }

    public em v() {
        return this.z.a(this, false);
    }

    @Override // com.vungle.publisher.cn, com.vungle.publisher.dr
    public void a(cn.c cVar) {
        cn.c cVar2 = this.f;
        super.a(cVar);
        this.x.a(cVar2, cVar);
    }

    @Override // com.vungle.publisher.dr
    public List<gd<el>> k_() {
        ArrayList arrayList = new ArrayList();
        ek ekVarD = D();
        if (ekVarD != null) {
            arrayList.add(ekVarD);
        }
        em emVarV = v();
        if (emVarV != null) {
            arrayList.add(emVarV);
        }
        return arrayList;
    }

    @Override // com.vungle.publisher.dr
    public boolean l_() {
        ek ekVarD = D();
        em emVarV = v();
        boolean z = ekVarD != null;
        boolean z2 = emVarV != null;
        boolean z3 = z || z2;
        String strB = B();
        if (z3) {
            if (z) {
                Logger.v(Logger.PREPARE_TAG, strB + " has " + ei.b.localVideo + ": " + ekVarD.e());
            }
            if (z2) {
                Logger.v(Logger.PREPARE_TAG, strB + " has " + ei.b.postRoll + ": " + emVarV.e());
            }
        } else {
            a(cn.c.invalid);
        }
        return z3;
    }

    @Override // com.vungle.publisher.cn
    public boolean b() {
        return qr.a(h());
    }

    @Override // com.vungle.publisher.jh, com.vungle.publisher.dp
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public String d_() throws SQLException {
        String strD_ = super.d_();
        if (this.w != null) {
            this.w.d_();
        }
        return strD_;
    }

    @Override // com.vungle.publisher.jh, com.vungle.publisher.dp, com.vungle.publisher.gj
    public int f_() {
        int iF_ = super.f_();
        if (iF_ == 1 && this.w != null) {
            this.w.f_();
        }
        return iF_;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends jh.a<el, ek, wg> implements ea<el, wg> {

        @Inject
        Provider<String> e;

        @Inject
        em.a f;

        @Inject
        Provider<el> g;

        @Inject
        ek.a h;

        @Inject
        er.a i;

        @Inject
        dw.a j;

        @Inject
        fq.a k;

        @Override // com.vungle.publisher.ea
        public /* bridge */ /* synthetic */ dr a(String str, boolean z) {
            return (dr) super.a(str, z);
        }

        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jh.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public ek.a k() {
            return this.h;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jh.a
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public fq.a j() {
            return this.k;
        }

        @Override // com.vungle.publisher.jh.a
        public el a(wg wgVar) throws qm {
            el elVar = (el) super.a(wgVar);
            elVar.a(this.e.get());
            elVar.w = this.f.a(elVar, wgVar, ei.b.postRoll);
            elVar.x = this.j.a(elVar);
            elVar.a(cn.c.aware);
            return elVar;
        }

        @Override // com.vungle.publisher.cn.a
        protected m a() {
            return m.vungle_local;
        }

        @Override // com.vungle.publisher.cn.a, com.vungle.publisher.dp.a
        public int a(List<el> list) {
            return d().a(list);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jh.a
        public el a(el elVar, Cursor cursor, boolean z) {
            super.a(elVar, cursor, z);
            elVar.a(ce.e(cursor, "parent_path"));
            elVar.x = this.j.a(elVar);
            if (z) {
                a(elVar, z);
            }
            return elVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        em a(el elVar, boolean z) {
            if (elVar.y) {
                return elVar.w;
            }
            em emVar = (em) this.f.a((String) elVar.u, ei.b.postRoll, z);
            elVar.w = emVar;
            elVar.y = true;
            return emVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public el[] d(int i) {
            return new el[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public el g_() {
            return this.g.get();
        }

        @Override // com.vungle.publisher.ea
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public a n_() {
            return this;
        }

        @Override // com.vungle.publisher.ea
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public er d() {
            return this.i.a(this);
        }
    }
}
