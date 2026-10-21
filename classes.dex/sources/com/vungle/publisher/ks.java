package com.vungle.publisher;

import com.vungle.publisher.je;
import com.vungle.publisher.jy;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class ks extends je<ks, jn, wr, jy, jy.a, vu> {

    @Inject
    a a;

    @Inject
    ks() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.je
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a b() {
        return this.a;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends je.a<ks, jn, wr, jy, jy.a, vu> {

        @Inject
        Provider<ks> a;

        @Inject
        jy.a b;

        @Inject
        a() {
        }

        @Override // com.vungle.publisher.je.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public jy.a c() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.je.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public ks d() {
            return this.a.get();
        }
    }
}
