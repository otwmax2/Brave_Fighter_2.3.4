package com.vungle.publisher;

import com.vungle.publisher.ji;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class hs extends ji {

    @Inject
    a d;

    @Inject
    hs() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends ji.b<wm> {

        @Inject
        Provider<hs> a;

        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public hs g_() {
            return this.a.get();
        }
    }
}
