package com.vungle.publisher;

import com.vungle.publisher.ei;
import com.vungle.publisher.ej;
import com.vungle.publisher.el;
import com.vungle.publisher.lb;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class em extends ej<el, em> {

    @Inject
    el.a g;

    @Inject
    a h;

    @Inject
    lb.a i;

    @Inject
    protected em() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.dp
    /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
    public a b_() {
        return this.h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.vungle.publisher.jm
    /* JADX INFO: renamed from: J, reason: merged with bridge method [inline-methods] */
    public el.a y() {
        return this.g;
    }

    public lb K() {
        return this.i.a(D().toURI().toString());
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends ej.a<el, em, wg> {

        @Inject
        Provider<em> b;

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
        public em a(el elVar, wg wgVar, ei.b bVar) {
            if (wgVar == null) {
                return null;
            }
            if (bVar == ei.b.postRoll) {
                String strN = wgVar.n();
                if (strN == null) {
                    return null;
                }
                em emVar = (em) super.a(elVar, wgVar, bVar);
                emVar.a(strN);
                return emVar;
            }
            throw new IllegalArgumentException("cannot create archive of type: " + bVar);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public em[] d(int i) {
            return new em[i];
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.dp.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public em g_() {
            em emVar = this.b.get();
            emVar.f = this.a.a(emVar);
            return emVar;
        }
    }
}
