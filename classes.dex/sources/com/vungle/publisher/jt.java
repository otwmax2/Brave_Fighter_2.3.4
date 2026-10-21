package com.vungle.publisher;

import com.vungle.publisher.eb;
import com.vungle.publisher.jn;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class jt extends eb<jn, wr, jn.a> {
    @Inject
    jt() {
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends eb.a<jn, wr, jn.a, jt> {

        @Inject
        jt a;

        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.vungle.publisher.eb.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public jt a() {
            return this.a;
        }
    }
}
