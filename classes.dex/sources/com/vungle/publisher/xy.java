package com.vungle.publisher;

import com.vungle.publisher.ei;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.th;
import javax.inject.Inject;
import javax.inject.Singleton;
import rx.Observable;
import rx.functions.Action1;
import rx.functions.Func1;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class xy implements Func1<gd<?>, Observable<? extends gd<?>>> {

    @Inject
    th.a a;

    @Inject
    uu b;

    @Inject
    uz c;

    @Inject
    yd d;

    @Inject
    xy() {
    }

    @Override // rx.functions.Func1
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Observable<? extends gd<?>> call(gd<?> gdVar) {
        ei.b bVarO = gdVar.o();
        ei.a aVarJ = gdVar.j();
        String strF = gdVar.f();
        Logger.d(Logger.PREPARE_TAG, "preparing viewable: " + gdVar);
        Observable<? extends gd<?>> observableJust = Observable.just(gdVar);
        switch (aVarJ) {
            case ready:
                return observableJust;
            case downloaded:
                break;
            case aware:
            case failed:
                Logger.d(Logger.PREPARE_TAG, bVarO + " will begin downloading for ad_id " + strF);
                observableJust = observableJust.flatMap(this.a).flatMap(this.c).zipWith(Observable.just(gdVar), this.b);
                break;
            default:
                throw new IllegalStateException("unexpected " + bVarO + " status: " + aVarJ);
        }
        return observableJust.flatMap(a()).doOnError(b(gdVar)).retryWhen(this.d.a(3, "viewable prep failed"));
    }

    Action1<Throwable> b(gd<?> gdVar) {
        return xz.a(gdVar);
    }

    static /* synthetic */ void a(gd gdVar, Throwable th) {
        Logger.i(Logger.PREPARE_TAG, "viewable prep error, update status to failed for " + gdVar);
        gdVar.b(ei.a.failed);
    }

    Func1<gd<?>, Observable<? extends gd<?>>> a() {
        return ya.a();
    }

    static /* synthetic */ Observable c(gd gdVar) {
        if (!gdVar.m()) {
            throw new RuntimeException(gdVar.o() + " post processing failed for ad_id " + gdVar.f());
        }
        return Observable.just(gdVar);
    }
}
