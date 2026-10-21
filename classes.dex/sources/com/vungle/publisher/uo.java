package com.vungle.publisher;

import com.vungle.publisher.tr;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class uo extends tr {
    cn a;
    jf b;

    uo() {
    }

    @Override // com.vungle.publisher.tr
    protected tr.c b() {
        return tr.c.trackEvent;
    }

    @Override // com.vungle.publisher.tr
    protected tr.b a() {
        return tr.b.GET;
    }

    @Override // com.vungle.publisher.tr
    public String toString() {
        return "{" + b() + ": " + c() + "}";
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends tr.a<uo> {
        @Inject
        a() {
        }

        protected uo a(cn cnVar, jf jfVar, String str) {
            uo uoVarC = c();
            uoVarC.a = cnVar;
            uoVarC.b = jfVar;
            uoVarC.a(str);
            return uoVarC;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.tr.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public uo b() {
            return new uo();
        }
    }
}
