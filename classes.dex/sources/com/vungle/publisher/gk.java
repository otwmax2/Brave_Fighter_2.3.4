package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.publisher.cn;
import com.vungle.publisher.gl;
import com.vungle.publisher.li;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class gk extends dq implements dr<gk> {
    String w;

    @Inject
    a x;

    @Inject
    li.a y;

    @Override // com.vungle.publisher.dr
    public /* synthetic */ String d() {
        return (String) super.c_();
    }

    @Inject
    gk() {
    }

    @Override // com.vungle.publisher.cn
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public a x() {
        return this.x;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return a();
    }

    @Override // com.vungle.publisher.dq
    /* JADX INFO: renamed from: v, reason: merged with bridge method [inline-methods] */
    public li s() {
        return this.y.a(this.w);
    }

    @Override // com.vungle.publisher.cn
    protected boolean b() {
        return true;
    }

    @Override // com.vungle.publisher.cn, com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        contentValuesA.put("html_content", this.w);
        return contentValuesA;
    }

    @Override // com.vungle.publisher.dr
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public gk m_() {
        return this;
    }

    @Override // com.vungle.publisher.dr
    public boolean l_() {
        return true;
    }

    @Override // com.vungle.publisher.dr
    public List<gd<gk>> k_() {
        return new ArrayList();
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends cn.a<gk, wj> implements ea<gk, wj> {

        @Inject
        Provider<gk> e;

        @Inject
        gl.a f;

        @Override // com.vungle.publisher.ea
        public /* bridge */ /* synthetic */ dr a(String str, boolean z) {
            return (dr) super.a(str, z);
        }

        @Inject
        a() {
        }

        @Override // com.vungle.publisher.cn.a, com.vungle.publisher.ea
        public gk a(wj wjVar) {
            gk gkVar = (gk) super.a(wjVar);
            gkVar.w = wjVar.n();
            gkVar.a(cn.c.aware);
            return gkVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cn.a, com.vungle.publisher.dp.a
        public gk a(gk gkVar, Cursor cursor, boolean z) {
            super.a(gkVar, cursor, z);
            gkVar.w = ce.e(cursor, "html_content");
            return gkVar;
        }

        @Override // com.vungle.publisher.cn.a
        protected m a() {
            return m.third_party_mraid;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public gk g_() {
            return this.e.get();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public gk[] d(int i) {
            return new gk[i];
        }

        @Override // com.vungle.publisher.ea
        public cn.a<gk, wj> n_() {
            return this;
        }

        @Override // com.vungle.publisher.cn.a, com.vungle.publisher.dp.a
        public int a(List<gk> list) {
            return d().a(list);
        }

        @Override // com.vungle.publisher.ea
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public gl d() {
            return this.f.a(this);
        }
    }
}
