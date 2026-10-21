package com.vungle.publisher;

import com.vungle.publisher.log.Logger;
import com.vungle.publisher.wg;
import com.vungle.publisher.wj;
import com.vungle.publisher.wr;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;
import rx.Observable;
import rx.exceptions.Exceptions;
import rx.functions.Func1;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class yg {

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a implements Func1<wd, Observable<wc>> {

        @Inject
        wg.a a;

        @Inject
        wj.a b;

        @Inject
        wr.a c;

        @Inject
        a() {
        }

        protected wc a(wd wdVar) {
            boolean zN = wdVar.n();
            m mVarD = wdVar.d();
            if (!zN) {
                return null;
            }
            if (wdVar.k()) {
                Logger.i(Logger.PREPARE_TAG, "received expired ad from server, tossing it and getting a new one");
                throw new RuntimeException("ad is expired");
            }
            if (mVarD == null) {
                Logger.w(Logger.PREPARE_TAG, "received null adType from server, tossing it and getting a new one");
                throw new RuntimeException("adType is null");
            }
            Logger.v(Logger.PREPARE_TAG, "received a valid ad, continue processing ad with type: " + mVarD);
            return a(mVarD, wdVar.o());
        }

        private wc a(m mVar, final JSONObject jSONObject) {
            return new q<wc>() { // from class: com.vungle.publisher.yg.a.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
                public wc a() {
                    try {
                        return a.this.a.c(jSONObject);
                    } catch (JSONException e) {
                        throw Exceptions.propagate(e);
                    }
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
                public wc b() {
                    Logger.i(Logger.PREPARE_TAG, "received invalid ad from server, tossing it and getting a new one");
                    throw new RuntimeException("received invalid ad from server, tossing it and getting a new one");
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
                public wc c() {
                    try {
                        return a.this.c.c(jSONObject);
                    } catch (JSONException e) {
                        throw Exceptions.propagate(e);
                    }
                }

                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.vungle.publisher.q
                /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
                public wc d() {
                    try {
                        return a.this.b.a(jSONObject);
                    } catch (JSONException e) {
                        throw Exceptions.propagate(e);
                    }
                }
            }.a(mVar);
        }

        @Override // rx.functions.Func1
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Observable<wc> call(wd wdVar) {
            return Observable.just(a(wdVar));
        }
    }
}
