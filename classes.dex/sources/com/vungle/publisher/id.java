package com.vungle.publisher;

import com.vungle.publisher.jl;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class id extends jl<hx> {

    @Inject
    a e;

    @Inject
    protected id() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends jl.b<id, hx> {

        @Inject
        Provider<id> a;

        @Inject
        protected a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public id[] d(int i) {
            return new id[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public id g_() {
            return this.a.get();
        }
    }
}
