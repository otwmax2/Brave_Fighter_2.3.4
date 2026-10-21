package com.vungle.publisher;

import com.vungle.publisher.cy;
import com.vungle.publisher.kj;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class kd extends cy<ki, kd, kj> {

    @Inject
    a e;

    @Inject
    kd() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.cy
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public kj.a a() {
        return this.e.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.e;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends cy.a<ki, kd, kj> {

        @Inject
        Provider<kd> a;

        @Inject
        kj.a b;

        @Override // com.vungle.publisher.dp.a
        public /* bridge */ /* synthetic */ int a(List list) {
            return super.a(list);
        }

        @Override // com.vungle.publisher.dp.a
        public /* bridge */ /* synthetic */ List a(String str, String[] strArr) {
            return super.a(str, strArr);
        }

        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.cy.a
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public kj.a a() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public kd g_() {
            return this.a.get();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public kd[] d(int i) {
            return new kd[i];
        }
    }
}
