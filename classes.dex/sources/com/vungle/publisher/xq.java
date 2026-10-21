package com.vungle.publisher;

import com.facebook.share.internal.ShareConstants;
import com.vungle.publisher.cn;
import com.vungle.publisher.cz;
import com.vungle.publisher.eb;
import com.vungle.publisher.ei;
import com.vungle.publisher.el;
import com.vungle.publisher.log.Logger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.inject.Inject;
import rx.Observable;
import rx.exceptions.Exceptions;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.schedulers.Schedulers;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class xq implements Func1<dr<?>, Observable<? extends dr<?>>> {

    @Inject
    cz.b a;

    @Inject
    xy b;

    @Inject
    eb.b c;

    @Inject
    el.a d;

    @Inject
    xq() {
    }

    @Override // rx.functions.Func1
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Observable<? extends dr<?>> call(dr<?> drVar) throws Throwable {
        if (drVar == null) {
            throw new IllegalArgumentException("no ad to prepare ");
        }
        String strD = drVar.d();
        m mVarA_ = drVar.a_();
        cn.c cVarG = drVar.g();
        Logger.d(Logger.PREPARE_TAG, "run PrepareAdRunnable. adId = " + strD + ", adType = " + mVarA_);
        try {
            Logger.d(Logger.PREPARE_TAG, "local ad not prepared. has status: " + cVarG);
            switch (cVarG) {
                case deleting:
                case invalid:
                    throw new RuntimeException("ad status: " + cVarG);
                case viewed:
                    Logger.d(Logger.PREPARE_TAG, "ad already " + cn.c.viewed + ", recycling: " + strD);
                    c(drVar);
                case ready:
                    Logger.d(Logger.PREPARE_TAG, "ad already " + cn.c.ready + ": " + strD);
                    return Observable.just(drVar);
                case failed:
                    i(drVar);
                default:
                    b(drVar);
                    return e(drVar);
            }
        } catch (Exception e) {
            Logger.e(Logger.PREPARE_TAG, "error processing ad.id: " + strD, e);
            Exceptions.propagate(e);
            throw new RuntimeException("could not prepare ad");
        }
    }

    void b(dr<?> drVar) {
        this.a.a(drVar);
        drVar.a(cn.c.preparing);
        drVar.f_();
    }

    void c(dr<?> drVar) {
        String strD = drVar.d();
        Logger.d(Logger.PREPARE_TAG, "re-verify prepare_retry_count " + drVar.j() + " for ad " + strD);
        d(drVar);
        Iterator it = drVar.k_().iterator();
        while (it.hasNext()) {
            a((gd<?>) it.next());
        }
        cn.c cVar = cn.c.ready;
        Logger.i(Logger.PREPARE_TAG, "re-verified ad and set to " + cVar + ": " + strD);
        this.a.a(drVar).a_(-1L);
        drVar.a(cVar);
        drVar.f_();
    }

    void d(dr<?> drVar) {
        if (!drVar.l_()) {
            throw new RuntimeException("invalid ad structure");
        }
    }

    void a(gd<?> gdVar) {
        if (!gdVar.n()) {
            throw new RuntimeException(gdVar.o() + " re-verification failed for ad_id " + gdVar.f());
        }
    }

    <C extends dr<?>> Observable<C> e(C c) {
        d(c);
        List<? extends gd<?>> listK_ = c.k_();
        if (j(c)) {
            Logger.d(Logger.PREPARE_TAG, "skipping prepare as ad_token_hash already present");
            k(c);
            b(listK_);
            return Observable.just(c);
        }
        return (Observable<C>) a(listK_).doOnNext(h(c)).doOnError(g(c)).flatMap(f(c));
    }

    Observable<? extends List<gd<?>>> a(List<? extends gd<?>> list) {
        if (list == null || list.size() <= 0) {
            return Observable.just(new ArrayList());
        }
        return Observable.from(list).observeOn(Schedulers.io()).flatMap(this.b).doOnError(a()).doOnNext(b()).buffer(list.size());
    }

    public <C extends dr<?>> Func1<List<gd<?>>, Observable<C>> f(C c) {
        return xr.a(c);
    }

    static /* synthetic */ Observable b(dr drVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (((gd) it.next()).j() != ei.a.ready) {
                throw new RuntimeException("prepared ad somehow has non-ready viewables");
            }
        }
        return Observable.just(drVar);
    }

    public Action1<Throwable> a() {
        return xs.a();
    }

    public Action1<Throwable> g(dr<?> drVar) {
        return xt.a(this, drVar);
    }

    /* synthetic */ void a(dr drVar, Throwable th) {
        Logger.w(Logger.PREPARE_TAG, "ad prep error: " + th);
        if (th instanceof qn) {
            Logger.w(Logger.PREPARE_TAG, "deleting all ads due to IO failure");
            this.c.b();
        } else {
            Logger.d(Logger.PREPARE_TAG, "marking current ad as " + cn.c.failed);
            drVar.a(cn.c.failed);
            drVar.f_();
        }
    }

    public Action1<gd<?>> b() {
        return xu.a();
    }

    public Action1<List<gd<?>>> h(dr<?> drVar) {
        return xv.a(this, drVar);
    }

    /* synthetic */ void a(dr drVar, List list) {
        Logger.i(Logger.PREPARE_TAG, "ad ready " + drVar.d());
        drVar.a(cn.c.ready);
        this.a.a(drVar, Long.valueOf(System.currentTimeMillis()));
        drVar.f_();
    }

    boolean i(dr<?> drVar) {
        cn.c cVar;
        String strD = drVar.d();
        cn.c cVarG = drVar.g();
        if (cVarG == cn.c.failed) {
            cVar = cn.c.preparing;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jK = drVar.k();
            if (jCurrentTimeMillis < jK) {
                Logger.d(Logger.PREPARE_TAG, "clock change detected; updating ad.id " + strD + " status from " + cVarG + " to " + cVar);
                drVar.a(cVar);
            } else {
                long j = (jCurrentTimeMillis - jK) / 60000;
                if (j >= 1440) {
                    Logger.d(Logger.PREPARE_TAG, "retrying " + cn.c.failed + " ad." + ShareConstants.WEB_DIALOG_PARAM_ID + " " + strD + " after " + j + "/1440 minutes; updating status from " + cVarG + " to " + cVar);
                    drVar.a(cVar);
                } else {
                    throw new RuntimeException("could not update failed status");
                }
            }
        } else {
            cVar = cVarG;
        }
        drVar.f_();
        return cVar != cn.c.failed;
    }

    public boolean j(dr<?> drVar) {
        return this.d.a(drVar.m_().c_(), drVar.m_().m(), cn.c.ready);
    }

    void k(dr<?> drVar) {
        cn.c cVar = cn.c.ready;
        Logger.v(Logger.PREPARE_TAG, "updating and reusing cacheables for ad and set to " + cVar + ": " + drVar.d());
        this.a.a(drVar).a_(-1L);
        drVar.a(cVar);
        drVar.f_();
    }

    void b(List<? extends gd<?>> list) {
        Iterator<? extends gd<?>> it = list.iterator();
        while (it.hasNext()) {
            it.next().b(ei.a.ready);
        }
    }
}
