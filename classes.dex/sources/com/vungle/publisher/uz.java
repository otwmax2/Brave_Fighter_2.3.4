package com.vungle.publisher;

import javax.inject.Inject;
import rx.Observable;
import rx.functions.Func1;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class uz implements Func1<tr, Observable<tw>> {

    @Inject
    ue a;

    @Inject
    public uz() {
    }

    @Override // rx.functions.Func1
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Observable<tw> call(tr trVar) {
        return Observable.just(b(trVar));
    }

    protected tw b(tr trVar) {
        return this.a.a(trVar);
    }
}
