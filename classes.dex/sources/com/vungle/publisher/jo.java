package com.vungle.publisher;

import com.vungle.publisher.ei;
import com.vungle.publisher.ej;
import com.vungle.publisher.jn;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class jo extends ej<jn, jo> {

    @Inject
    jn.a g;

    @Inject
    a h;

    @Inject
    jo() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.jm
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public jn.a y() {
        return this.g;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.h;
    }

    @Override // com.vungle.publisher.ej
    public String E() {
        return qr.a(z(), "index.html");
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends ej.a<jn, jo, wr> {

        @Inject
        Provider<jo> b;

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

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.vungle.publisher.ej.a
        public jo a(jn jnVar, wr wrVar, ei.b bVar) {
            String strQ;
            if (wrVar == null || (strQ = wrVar.q()) == null) {
                return null;
            }
            jo joVar = (jo) super.a(jnVar, wrVar, bVar);
            joVar.a(strQ);
            return joVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public jo[] d(int i) {
            return new jo[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public jo g_() {
            jo joVar = this.b.get();
            joVar.f = this.a.a(joVar);
            return joVar;
        }
    }
}
