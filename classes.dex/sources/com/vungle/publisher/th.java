package com.vungle.publisher;

import com.vungle.publisher.tr;
import javax.inject.Inject;
import javax.inject.Singleton;
import rx.Observable;
import rx.functions.Func1;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class th extends tr {
    th() {
    }

    @Override // com.vungle.publisher.tr
    protected tr.b a() {
        return tr.b.GET;
    }

    @Override // com.vungle.publisher.tr
    protected tr.c b() {
        return tr.c.download;
    }

    @Override // com.vungle.publisher.tr
    public String toString() {
        return "{" + b() + ": " + c() + "}";
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a extends tr.a<th> implements Func1<gd<?>, Observable<th>> {
        @Inject
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.vungle.publisher.tr.a
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public th b() {
            return new th();
        }

        @Override // rx.functions.Func1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Observable<th> call(gd<?> gdVar) {
            th thVarC = c();
            thVarC.a(gdVar.e());
            return Observable.just(thVarC);
        }
    }
}
