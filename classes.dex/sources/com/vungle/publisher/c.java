package com.vungle.publisher;

import android.content.Context;
import android.content.Intent;
import android.database.SQLException;
import com.vungle.publisher.bw;
import com.vungle.publisher.cn;
import com.vungle.publisher.eb;
import com.vungle.publisher.env.r;
import com.vungle.publisher.hr;
import com.vungle.publisher.log.Logger;
import dagger.Lazy;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import rx.Observable;
import rx.Observer;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class c extends pi {

    @Inject
    r a;

    @Inject
    Context b;

    @Inject
    com.vungle.publisher.env.i c;

    @Inject
    qg d;

    @Inject
    Class e;

    @Inject
    Class f;

    @Inject
    Class g;

    @Inject
    bw h;

    @Inject
    sz i;

    @Inject
    Lazy<a> j;

    @Inject
    Provider<b> k;

    @Inject
    vc l;

    @Inject
    com.vungle.publisher.env.o m;

    @Inject
    u n;

    @Inject
    com.vungle.publisher.env.k o;

    @Inject
    eb.b p;

    @Inject
    xg q;

    @Inject
    com.vungle.publisher.log.g r;

    @Inject
    c() {
    }

    public void a() throws Throwable {
        register();
        this.a.a(this.m.d());
        if (this.a.c(this.m.e()) == 0) {
            b(this.m.e(), true);
        } else {
            this.h.b(d.a(this), bw.b.sleepWakeup, 5000L);
        }
    }

    /* synthetic */ void e() {
        this.d.a(new bl(this.m.e()));
    }

    public boolean a(String str) {
        return (str == null || this.p.b(str) == null) ? false : true;
    }

    public boolean b(String str) {
        this.r.b.info("isAdPlayable called for placement: " + str);
        return !this.o.a() && this.o.b() && a(str);
    }

    public cn c(String str) throws Throwable {
        dr<?> drVarD = d(str);
        cn cnVarM_ = drVarD != null ? drVarD.m_() : null;
        cn cnVarA = a(str, cnVarM_ == null ? null : cnVarM_.l());
        if (cnVarA == null) {
            cnVarA = cnVarM_;
        }
        this.r.b.info("next ad " + (cnVarA != null ? cnVarA.B() : null));
        return cnVarA;
    }

    void a(Observable<dr<?>> observable, final String str) {
        this.r.b.info("requestLocalAd processing: " + str);
        if (this.a.a(false, true)) {
            this.a.b(str);
            observable.subscribe(new Observer<dr<?>>() { // from class: com.vungle.publisher.c.1
                @Override // rx.Observer
                public void onCompleted() {
                    c.this.r.b.info("ad observable onComplete");
                    c.this.a.a(false);
                }

                @Override // rx.Observer
                public void onError(Throwable exception) {
                    c.this.r.b.info("ad observable onError");
                    c.this.a.a(false);
                    c.this.a.b((String) null);
                    if (str.contentEquals(c.this.m.e())) {
                        c.this.r.b.info("ad observable onError , queuing it for retry at end of the queue !");
                        c.this.a.a(str);
                    } else {
                        c.this.r.b.info("ad observable onError , ignoring this No retries !");
                    }
                    c.this.d.a(new al());
                }

                @Override // rx.Observer
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public void onNext(dr<?> drVar) {
                    c.this.r.b.info("ad observable onNext");
                    c.this.a.a(false);
                    c.this.a.b((String) null);
                    c.this.d.a(new al());
                    c.this.d.a(new am(str));
                }
            });
        } else {
            this.r.b.info("queuing this for now, will get back to this Ad Prepare");
            this.a.a(str);
        }
    }

    dr<?> a(String str, boolean z) {
        dr<?> drVar = null;
        if (this.c.l()) {
            dr<?> drVarA = z ? this.p.a(str) : this.p.b(str);
            if (drVarA == null) {
                this.r.b.info("no local ad available");
                if (z) {
                    a(this.q.a(str), str);
                    return drVarA;
                }
                return drVarA;
            }
            cn.c cVarG = drVarA.g();
            if (cVarG == cn.c.preparing) {
                if (z) {
                    this.r.b.info("local ad partially prepared, restarting preparation for " + drVarA.d());
                    a(this.q.a(drVarA), str);
                } else {
                    this.r.b.info("local ad partially prepared, but not restarting preparation for " + drVarA.d());
                }
            } else {
                if (cVarG == cn.c.ready) {
                    this.r.b.info("local ad already available for " + drVarA.d());
                }
                drVar = drVarA;
            }
            return drVar;
        }
        this.r.b.warning("unable to fetch local ad -  no external storage available");
        return null;
    }

    public dr<?> d(String str) {
        return a(str, false);
    }

    public void a(String str, t tVar) {
        Class cls;
        boolean z = false;
        if (this.m.b(str) == null) {
            this.d.a(new bm(null, str));
            return;
        }
        if (this.o.a(str)) {
            this.r.b.fine("AdManager.playAd()");
            try {
                cn cnVarC = c(str);
                if (cnVarC == null) {
                    this.r.b.info("no ad to play");
                    this.d.a(new bq(null, str));
                } else {
                    this.j.get().register();
                    if (cnVarC.a_() == m.vungle_local || cnVarC.a_() == m.vungle_streaming) {
                        cls = this.e;
                    } else if (cnVarC.a_() == m.vungle_mraid && x.flexview == x.a(cnVarC.s)) {
                        cls = this.g;
                    } else {
                        cls = this.f;
                    }
                    Intent intent = new Intent(this.b, (Class<?>) cls);
                    intent.addFlags(805306368);
                    this.n.a(intent, tVar);
                    intent.putExtra(VungleAdActivity.AD_ID_EXTRA_KEY, cnVarC.c_());
                    intent.putExtra(VungleAdActivity.AD_TYPE_EXTRA_KEY, cnVarC.a_());
                    intent.putExtra(VungleAdActivity.AD_PLACEMENT_REFERENCE_ID_KEY, str);
                    this.b.startActivity(intent);
                    z = true;
                }
                if (!z) {
                }
            } catch (Exception e) {
                this.r.b.severe("Error launching ad: " + e.getMessage());
                this.d.a(new bu(null, str, false));
            } finally {
                this.l.c();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v2, types: [com.vungle.publisher.hr] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v5, types: [long] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* JADX WARN: Type inference failed for: r2v8 */
    hr a(String str, String str2) throws Throwable {
        ?? r0;
        Exception exc;
        hr hrVar = null;
        try {
            if (!this.m.b()) {
                return null;
            }
            this.r.b.info("requesting streaming ad");
            b bVar = this.k.get();
            bVar.register();
            this.l.a(str, str2);
            ?? r2 = bVar.c;
            long jC = ((long) this.m.c()) + r2;
            synchronized (bVar) {
                while (!bVar.a) {
                    try {
                        try {
                            long jCurrentTimeMillis = jC - System.currentTimeMillis();
                            if (jCurrentTimeMillis <= 0) {
                                break;
                            }
                            try {
                                bVar.wait(jCurrentTimeMillis);
                            } catch (InterruptedException e) {
                            }
                        } catch (Throwable th) {
                            r2 = 0;
                            th = th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                long jCurrentTimeMillis2 = System.currentTimeMillis() - r2;
                if (bVar.a) {
                    hr hrVar2 = bVar.b;
                    if (hrVar2 != null) {
                        this.r.b.info("request streaming ad success after " + jCurrentTimeMillis2 + " ms " + hrVar2.B());
                        hrVar = hrVar2;
                    } else {
                        hrVar = hrVar2;
                    }
                } else {
                    this.r.b.info("request streaming ad timeout after " + jCurrentTimeMillis2 + " ms");
                    bVar.a();
                }
                try {
                    return hrVar;
                } catch (Throwable th3) {
                    r2 = hrVar;
                    th = th3;
                }
            }
            try {
                throw th;
            } catch (Exception e2) {
                exc = e2;
                r0 = r2;
            }
        } catch (Exception e3) {
            r0 = 0;
            exc = e3;
        }
        Logger.e(Logger.EVENT_TAG, "error getting streaming ad", exc);
        this.r.b.severe("error getting streaming ad: " + exc.getMessage());
        return r0;
    }

    void b() throws Throwable {
        this.h.a(bw.b.deleteExpiredAds);
        Long lC = this.p.c();
        if (lC != null) {
            this.h.a(e.a(this), bw.b.deleteExpiredAds, lC.longValue());
        }
    }

    /* synthetic */ void d() {
        this.p.a();
    }

    void b(String str, boolean z) throws Throwable {
        a(str, z);
        b();
    }

    public void onEvent(ql event) throws Throwable {
        b(event.a(), true);
    }

    public void onEvent(al event) throws Throwable {
        this.r.b.finest("HandleQueuedAdAvailabilityEvent");
        if (!this.a.n()) {
            b(this.a.m(), true);
        } else {
            f();
        }
    }

    private void f() {
        this.h.a(f.a(this));
    }

    /* synthetic */ void c() {
        this.r.b.finest("cleanUpInactivePlacements");
        this.p.a(this.m.f());
    }

    public void onEvent(ag decreasedAdAvailabilityEvent) throws Throwable {
        this.r.b.finest("decreasedAdAvailabilityEvent: " + decreasedAdAvailabilityEvent.a());
        if (decreasedAdAvailabilityEvent.a().equals(this.m.e())) {
            b(this.m.e(), true);
        }
    }

    public void e(String str) {
        if (this.m.b(str) == null) {
            this.d.a(new bl(str));
            return;
        }
        if (a(str)) {
            this.d.a(new as(str));
        } else if (this.a.c(str) > 0) {
            this.d.a(new bl(str));
        } else if (!str.equals(this.a.o())) {
            a(str, true);
        }
    }

    public boolean f(String str) {
        dr<?> drVarC;
        if (this.m.b(str) != null && (drVarC = this.p.c(str)) != null) {
            cn cnVarM_ = drVarC.m_();
            if (cnVarM_.a_() == m.vungle_mraid && x.flexview == x.a(cnVarM_.s)) {
                this.d.a(new sf(str));
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends pi {
        final String a = Logger.PREPARE_TAG;

        @Inject
        com.vungle.publisher.log.g b;

        @Inject
        a() {
        }

        public void onEvent(av<cn> startPlayAdEvent) {
            try {
                startPlayAdEvent.b().b(cn.c.viewed);
            } catch (Exception e) {
                Logger.e(Logger.PREPARE_TAG, "could not start Ad play: " + e.getLocalizedMessage());
                this.b.b.severe("error processing start play ad event: " + e.getMessage());
            }
        }

        public void onEvent(aj event) {
            this.b.b.info("sent ad report - un-registering play ad listener");
            unregister();
        }

        public void onEvent(bk event) {
            this.b.b.info("play ad failure - un-registering play ad listener");
            unregister();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: compiled from: vungle */
    public static class b extends pi {
        volatile boolean a;
        volatile hr b;
        final long c = System.currentTimeMillis();

        @Inject
        hr.a d;

        @Inject
        com.vungle.publisher.log.g e;

        @Inject
        b() {
        }

        void a() {
            this.a = true;
            synchronized (this) {
                notifyAll();
            }
        }

        public void onEvent(ak prepareStreamingAdFailureEvent) {
            unregister();
            this.e.b.info("request streaming ad failure after " + (prepareStreamingAdFailureEvent.e() - this.c) + " ms");
            a();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void onEvent(au prepareStreamingAdSuccessEvent) {
            unregister();
            long jE = prepareStreamingAdSuccessEvent.e() - this.c;
            wm wmVarA = prepareStreamingAdSuccessEvent.a();
            if (Boolean.TRUE.equals(wmVarA.n())) {
                String strG = wmVarA.g();
                this.e.b.info("received streaming ad: " + strG + " after " + jE + " ms");
                hr hrVar = (hr) this.d.a(strG, true);
                if (hrVar == null) {
                    hr hrVarA = this.d.a(wmVarA);
                    this.b = hrVarA;
                    this.e.b.info("inserting new " + hrVarA.B());
                    try {
                        hrVarA.d_();
                    } catch (SQLException e) {
                        this.e.b.info("did not insert streaming ad - possible duplicate");
                    }
                } else {
                    try {
                        this.d.b(hrVar, wmVarA);
                    } catch (Exception e2) {
                        this.e.b.warning("error updating ad " + strG + ": " + e2.getMessage());
                    }
                    cn.c cVarG = hrVar.g();
                    switch (cVarG) {
                        case aware:
                            this.e.b.warning("unexpected ad status " + cVarG + " for " + hrVar.B());
                        case ready:
                        case viewed:
                            this.e.b.info("existing " + hrVar.B() + " with status " + cVarG);
                            if (cVarG != cn.c.ready) {
                                hrVar.b(cn.c.ready);
                            }
                            this.b = hrVar;
                            break;
                        default:
                            this.e.b.warning("existing " + hrVar.B() + " with status " + cVarG + " - ignoring");
                            break;
                    }
                }
            } else {
                this.e.b.info("no streaming ad to play after " + jE + " ms");
            }
            a();
        }
    }
}
