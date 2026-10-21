package com.vungle.publisher;

import com.vungle.publisher.ew;
import com.vungle.publisher.je;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class fq extends je<fq, el, wg, ji, ew.a, wv> {

    @Inject
    a a;

    @Inject
    fq() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.je
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a b() {
        return this.a;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends je.a<fq, el, wg, ji, ew.a, wv> {

        @Inject
        Provider<fq> a;

        @Inject
        ew.a b;

        @Inject
        a() {
        }

        @Override // com.vungle.publisher.je.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public ew.a c() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.je.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public fq d() {
            return this.a.get();
        }
    }
}
