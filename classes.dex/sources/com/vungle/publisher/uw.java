package com.vungle.publisher;

import java.io.IOException;
import javax.inject.Inject;
import rx.Observable;
import rx.exceptions.Exceptions;
import rx.functions.Func1;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class uw implements Func1<tw, Observable<String>> {

    @Inject
    uj a;

    @Inject
    public uw() {
    }

    @Override // rx.functions.Func1
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Observable<String> call(tw twVar) {
        try {
            return Observable.just(this.a.a(twVar.a()));
        } catch (IOException e) {
            throw Exceptions.propagate(e);
        }
    }
}
