package com.vungle.publisher;

import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import com.vungle.publisher.ei;
import com.vungle.publisher.hr;
import com.vungle.publisher.jg;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class hq extends jg<hr> {

    @Inject
    hr.a a;

    @Inject
    a b;
    String c;

    @Inject
    protected hq() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.jm
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public hr.a y() {
        return this.a;
    }

    @Override // com.vungle.publisher.jg
    public Uri x() {
        return Uri.parse(this.c);
    }

    @Override // com.vungle.publisher.jg, com.vungle.publisher.jm, com.vungle.publisher.dp
    protected ContentValues a(boolean z) {
        ContentValues contentValuesA = super.a(z);
        contentValuesA.put("url", this.c);
        return contentValuesA;
    }

    @Override // com.vungle.publisher.jg, com.vungle.publisher.jm, com.vungle.publisher.dp
    protected StringBuilder p() {
        StringBuilder sbP = super.p();
        a(sbP, "url", this.c);
        return sbP;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends jg.a<hr, hq, wm> {
        private static final ei.b b = ei.b.streamingVideo;

        @Inject
        Provider<hq> a;

        @Inject
        protected a() {
        }

        @Override // com.vungle.publisher.jg.a
        protected ei.b a() {
            return b;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jg.a, com.vungle.publisher.jm.a
        public hq a(hr hrVar, wm wmVar) {
            hq hqVar = (hq) super.a(hrVar, wmVar);
            if (hqVar != null) {
                hqVar.c = wmVar.x();
                hqVar.r = b;
            }
            return hqVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jg.a, com.vungle.publisher.jm.a
        public hq a(hq hqVar, Cursor cursor, boolean z) {
            super.a(hqVar, cursor, z);
            hqVar.c = ce.e(cursor, "url");
            return hqVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public hq[] d(int i) {
            return new hq[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.jm.a, com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c */
        public Integer[] b(int i) {
            return new Integer[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public hq g_() {
            return this.a.get();
        }
    }
}
