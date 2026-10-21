package com.vungle.publisher;

import com.vungle.publisher.id;
import com.vungle.publisher.jj;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class hx extends jj<ic, hx, id> {

    @Inject
    a e;

    @Inject
    protected hx() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.cy
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public id.a a() {
        return this.e.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends jj.a<ic, hx, id, hr, hq> {

        @Inject
        Provider<hx> a;

        @Inject
        id.a b;

        @Inject
        protected a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cy.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public id.a a() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public hx[] d(int i) {
            return new hx[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public hx g_() {
            return this.a.get();
        }
    }
}
