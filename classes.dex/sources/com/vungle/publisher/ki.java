package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.publisher.cz;
import com.vungle.publisher.ds;
import com.vungle.publisher.jn;
import com.vungle.publisher.kd;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ki extends cz<ki, kd, kj, jn> implements eg {
    ds s;
    String w;

    @Inject
    a x;

    @Inject
    ki() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.cz
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public kd.a a() {
        return this.x.d();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.x;
    }

    public int F() {
        return this.s.a();
    }

    @Override // com.vungle.publisher.eg
    public void a_(Long l) {
        this.s.b(l);
    }

    @Override // com.vungle.publisher.cz, com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        this.s.a(contentValuesA);
        if (z) {
            contentValuesA.put("template_id", this.w);
        }
        return contentValuesA;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends cz.a<ki, kd, kj, jn, wr> {

        @Inject
        jn.a c;

        @Inject
        kd.a e;

        @Inject
        Provider<ki> f;

        @Inject
        ds.a g;

        @Inject
        a() {
        }

        @Override // com.vungle.publisher.cz.a
        public ki a(jn jnVar) {
            ki kiVar = (ki) super.a(jnVar);
            kiVar.s = this.g.a(kiVar);
            kiVar.w = jnVar.i();
            return kiVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cz.a, com.vungle.publisher.dp.a
        public ki a(ki kiVar, Cursor cursor, boolean z) {
            super.a(kiVar, cursor, z);
            kiVar.o = ce.d(cursor, "download_end_millis");
            kiVar.w = ce.e(cursor, "template_id");
            return kiVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cz.a
        public ki a(ki kiVar, jn jnVar, boolean z) {
            super.a(kiVar, jnVar, z);
            kiVar.s = this.g.a(kiVar);
            kiVar.w = ((jn) kiVar.a).i();
            return kiVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cz.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public jn.a a() {
            return this.c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cz.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public kd.a d() {
            return this.e;
        }

        @Override // com.vungle.publisher.cz.a
        public m e() {
            return m.vungle_mraid;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public ki g_() {
            return this.f.get();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public ki[] d(int i) {
            return new ki[i];
        }
    }
}
