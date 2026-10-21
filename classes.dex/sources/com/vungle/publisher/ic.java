package com.vungle.publisher;

import com.vungle.publisher.hr;
import com.vungle.publisher.hx;
import com.vungle.publisher.jk;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ic extends jk<ic, hx, id, hr, hq> {

    @Inject
    a s;

    @Inject
    hx.a w;

    @Inject
    protected ic() {
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
    public hx.a a() {
        return this.w;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends jk.a<ic, hx, id, hr, hq, wm> {

        @Inject
        hx.a c;

        @Inject
        hr.a e;

        @Inject
        Provider<ic> f;

        @Inject
        protected a() {
        }

        @Override // com.vungle.publisher.cz.a
        public m e() {
            return m.vungle_streaming;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cz.a
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public hr.a a() {
            return this.e;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cz.a
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public hx.a d() {
            return this.c;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public ic[] d(int i) {
            return new ic[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public ic g_() {
            return this.f.get();
        }
    }
}
