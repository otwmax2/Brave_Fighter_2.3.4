package com.vungle.publisher;

import com.vungle.publisher.fh;
import com.vungle.publisher.jj;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class fb extends jj<fg, fb, fh> {

    @Inject
    a e;

    @Inject
    protected fb() {
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
    public fh.a a() {
        return this.e.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends jj.a<fg, fb, fh, el, ek> {

        @Inject
        Provider<fb> a;

        @Inject
        fh.a b;

        @Inject
        protected a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cy.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public fh.a a() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public fb[] d(int i) {
            return new fb[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public fb g_() {
            return this.a.get();
        }
    }
}
