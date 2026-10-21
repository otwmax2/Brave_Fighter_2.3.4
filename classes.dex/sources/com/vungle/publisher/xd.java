package com.vungle.publisher;

import com.vungle.publisher.cn;
import com.vungle.publisher.eb;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;
import rx.Observable;
import rx.exceptions.Exceptions;
import rx.functions.Func1;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class xd implements Func1<wc, Observable<dr<cn>>> {

    @Inject
    cn.b a;

    @Inject
    eb.b b;

    @Inject
    xd() {
    }

    @Override // rx.functions.Func1
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Observable<dr<cn>> call(wc wcVar) throws Throwable {
        dr drVar;
        Exception e;
        ea eaVarA = this.a.a(wcVar.d());
        String strG = wcVar.g();
        dr drVarA = eaVarA.a(strG, true);
        if (drVarA == null) {
            try {
                drVar = (dr) eaVarA.a(wcVar);
                try {
                    Logger.i(Logger.PREPARE_TAG, "received new " + drVar.B());
                    drVar.m_().d_();
                } catch (Exception e2) {
                    e = e2;
                    Logger.e(Logger.PREPARE_TAG, "error preparing ad " + strG + ", retrying", e);
                    Exceptions.propagate(e);
                }
            } catch (Exception e3) {
                drVar = drVarA;
                e = e3;
            }
        } else {
            try {
                eaVarA.b(drVarA.m_(), wcVar);
            } catch (Exception e4) {
                Logger.w(Logger.PREPARE_TAG, "error updating ad " + strG, e4);
            }
            cn.c cVarG = drVarA.g();
            String str = "received " + drVarA.B() + " in status " + cVarG;
            switch (cVarG) {
                case aware:
                case failed:
                case preparing:
                case viewed:
                    Logger.i(Logger.PREPARE_TAG, str);
                    drVar = drVarA;
                    break;
                case invalid:
                case deleting:
                    Logger.w(Logger.PREPARE_TAG, str + " - retrying");
                    throw new RuntimeException("received invalid ad in status: " + cVarG);
                default:
                    Logger.i(Logger.PREPARE_TAG, str + " - ignoring");
                    drVar = drVarA;
                    break;
            }
        }
        return Observable.just(drVar);
    }
}
