package com.vungle.publisher;

import com.vungle.publisher.ub;
import com.vungle.publisher.uo;
import dagger.Lazy;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class uq extends ub.a {

    @Inject
    uo.a b;

    @Inject
    Lazy<te> c;

    @Inject
    Lazy<tn> d;

    @Inject
    uq() {
    }

    public ub a(cn cnVar, jf jfVar, String str) {
        tn tnVar;
        if (jfVar.a()) {
            tnVar = this.c.get();
        } else {
            tnVar = this.d.get();
        }
        return super.a(this.b.a(cnVar, jfVar, str), tnVar);
    }
}
