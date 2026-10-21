package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import com.vungle.publisher.ds;
import com.vungle.publisher.el;
import com.vungle.publisher.fb;
import com.vungle.publisher.jk;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class fg extends jk<fg, fb, fh, el, ek> implements eg {

    @Inject
    a s;

    @Inject
    fb.a w;
    ds x;

    @Inject
    protected fg() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: D, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.s;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.cz
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public fb.a a() {
        return this.w;
    }

    public int F() {
        return this.x.a();
    }

    @Override // com.vungle.publisher.eg
    public void a_(Long l) {
        this.x.b(l);
    }

    @Override // com.vungle.publisher.cz, com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        this.x.a(contentValuesA);
        return contentValuesA;
    }

    @Override // com.vungle.publisher.cz, com.vungle.publisher.dp
    public StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "download_end_millis", this.o);
        return sbP;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends jk.a<fg, fb, fh, el, ek, wg> {

        @Inject
        el.a c;

        @Inject
        fb.a e;

        @Inject
        Provider<fg> f;

        @Inject
        ds.a g;

        @Inject
        protected a() {
        }

        @Override // com.vungle.publisher.cz.a
        public m e() {
            return m.vungle_local;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cz.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public el.a a() {
            return this.c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cz.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public fb.a d() {
            return this.e;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cz.a, com.vungle.publisher.dp.a
        public fg a(fg fgVar, Cursor cursor, boolean z) {
            super.a(fgVar, cursor, z);
            fgVar.o = ce.d(cursor, "download_end_millis");
            return fgVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cz.a
        public fg a(fg fgVar, el elVar, boolean z) {
            super.a(fgVar, elVar, z);
            fgVar.x = this.g.a(fgVar);
            return fgVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public fg[] d(int i) {
            return new fg[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public fg g_() {
            return this.f.get();
        }
    }
}
