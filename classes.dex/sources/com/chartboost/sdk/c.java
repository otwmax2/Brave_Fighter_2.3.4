package com.chartboost.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Libraries.j;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.ai;
import com.chartboost.sdk.impl.aq;
import com.chartboost.sdk.impl.bb;
import com.chartboost.sdk.impl.s;
import java.util.HashSet;

/* JADX INFO: loaded from: classes.dex */
public class c {
    final h a;
    final Handler b;
    public final d c;
    j d;
    Runnable g;
    final Application.ActivityLifecycleCallbacks h;
    private final ai i;
    private final com.chartboost.sdk.Tracking.a j;
    private j m;
    CBImpressionActivity e = null;
    com.chartboost.sdk.Model.c f = null;
    private boolean k = false;
    private final HashSet<Integer> l = new HashSet<>();

    public c(Activity activity, ai aiVar, h hVar, com.chartboost.sdk.Tracking.a aVar, Handler handler, d dVar) {
        this.i = aiVar;
        this.a = hVar;
        this.j = aVar;
        this.b = handler;
        this.c = dVar;
        this.d = a(activity);
        aq.a("CBUIManager.assignHostActivityRef", this.d);
        this.g = new b();
        if (s.a().a(14)) {
            this.h = new a();
        } else {
            this.h = null;
        }
    }

    j a(Activity activity) {
        if (this.m == null || this.m.a != activity.hashCode()) {
            this.m = new j(activity);
        }
        return this.m;
    }

    public Activity a() {
        if (this.d != null) {
            return (Activity) this.d.get();
        }
        return null;
    }

    public Activity b() {
        return this.e;
    }

    public d c() {
        if (b() == null) {
            return null;
        }
        return this.c;
    }

    com.chartboost.sdk.Model.c d() {
        d dVarC = c();
        bb bbVarA = dVarC == null ? null : dVarC.a();
        if (bbVarA == null || !bbVarA.f()) {
            return null;
        }
        return bbVarA.e();
    }

    public boolean e() {
        return d() != null;
    }

    void a(CBImpressionActivity cBImpressionActivity) {
        aq.a("CBUIManager.setImpressionActivity", cBImpressionActivity);
        if (this.e == null) {
            i.m = cBImpressionActivity.getApplicationContext();
            this.e = cBImpressionActivity;
        }
        this.b.removeCallbacks(this.g);
    }

    void f() {
        aq.a("CBUIManager.clearImpressionActivity");
        this.e = null;
    }

    private void a(int i, boolean z) {
        if (z) {
            this.l.add(Integer.valueOf(i));
        } else {
            this.l.remove(Integer.valueOf(i));
        }
    }

    void a(j jVar, boolean z) {
        if (jVar != null) {
            a(jVar.a, z);
        }
    }

    void a(Activity activity, boolean z) {
        if (activity != null) {
            a(activity.hashCode(), z);
        }
    }

    boolean a(j jVar) {
        if (jVar == null) {
            return false;
        }
        return this.l.contains(Integer.valueOf(jVar.a));
    }

    boolean g() {
        return a(this.d);
    }

    private void b(j jVar, boolean z) {
    }

    private boolean l(Activity activity) {
        return this.e == activity;
    }

    private boolean c(j jVar) {
        if (jVar == null) {
            return this.e == null;
        }
        return jVar.a(this.e);
    }

    public void a(com.chartboost.sdk.Model.c cVar) {
        aq.a("CBUIManager.queueDisplayView", cVar);
        if (e()) {
            cVar.a(CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
            return;
        }
        if (this.e != null) {
            this.c.a(cVar);
            return;
        }
        if (!g()) {
            cVar.a(CBError.CBImpressionError.NO_HOST_ACTIVITY);
            return;
        }
        Activity activityA = a();
        if (activityA == null) {
            CBLogging.b("CBUIManager", "Failed to display impression as the host activity reference has been lost!");
            cVar.a(CBError.CBImpressionError.NO_HOST_ACTIVITY);
            return;
        }
        if (this.f != null && this.f != cVar) {
            cVar.a(CBError.CBImpressionError.IMPRESSION_ALREADY_VISIBLE);
            return;
        }
        this.f = cVar;
        if (i.c != null) {
            if (cVar.n == 1 || cVar.n == 2) {
                i.c.willDisplayVideo(cVar.m);
            } else if (cVar.n == 0) {
                i.c.willDisplayInterstitial(cVar.m);
            }
        }
        if (i.d != null) {
            RunnableC0002c runnableC0002c = new RunnableC0002c(9);
            runnableC0002c.b = activityA;
            runnableC0002c.d = cVar;
            this.b.postDelayed(runnableC0002c, 1);
            return;
        }
        a(activityA, cVar);
    }

    public void a(Activity activity, com.chartboost.sdk.Model.c cVar) {
        boolean z = false;
        Intent intent = new Intent(activity, (Class<?>) CBImpressionActivity.class);
        boolean z2 = (activity.getWindow().getAttributes().flags & 1024) != 0;
        boolean z3 = (activity.getWindow().getAttributes().flags & 2048) != 0;
        if (z2 && !z3) {
            z = true;
        }
        intent.putExtra("paramFullscreen", z);
        intent.putExtra("isChartboost", true);
        try {
            activity.startActivity(intent);
            this.k = true;
        } catch (ActivityNotFoundException e) {
            CBLogging.b("CBUIManager", "Please add CBImpressionActivity in AndroidManifest.xml following README.md instructions.");
            this.f = null;
            cVar.a(CBError.CBImpressionError.ACTIVITY_MISSING_IN_MANIFEST);
        }
    }

    void b(j jVar) {
        aq.a("CBUIManager.onStop", jVar);
        if (!(jVar.get() instanceof CBImpressionActivity)) {
            a(jVar, false);
        }
        this.a.c();
    }

    void b(Activity activity) {
        aq.a("CBUIManager.onCreateCallback", activity);
        if (com.chartboost.sdk.b.b() && com.chartboost.sdk.b.a(activity)) {
            RunnableC0002c runnableC0002c = new RunnableC0002c(0);
            runnableC0002c.b = activity;
            h.b(runnableC0002c);
        }
    }

    void c(Activity activity) {
        aq.a("CBUIManager.onCreateImpl", activity);
        if (this.d != null && !this.d.a(activity) && g()) {
            b(this.d);
            a(this.d, false);
        }
        this.b.removeCallbacks(this.g);
        this.d = a(activity);
        aq.a("CBUIManager.assignHostActivityRef", this.d);
    }

    void d(Activity activity) {
        aq.a("CBUIManager.onStartCallback", activity);
        if (com.chartboost.sdk.b.b() && com.chartboost.sdk.b.a(activity)) {
            RunnableC0002c runnableC0002c = new RunnableC0002c(1);
            runnableC0002c.b = activity;
            h.b(runnableC0002c);
        }
    }

    void e(Activity activity) {
        aq.a("CBUIManager.onStartImpl", activity);
        i.m = activity.getApplicationContext();
        if (!(activity instanceof CBImpressionActivity)) {
            this.d = a(activity);
            aq.a("CBUIManager.assignHostActivityRef", this.d);
            a(this.d, true);
        } else {
            a((CBImpressionActivity) activity);
        }
        this.b.removeCallbacks(this.g);
        boolean z = i.d != null && i.d.doesWrapperUseCustomBackgroundingBehavior();
        if (activity != null) {
            if (z || l(activity)) {
                b(a(activity), true);
                if (activity instanceof CBImpressionActivity) {
                    this.k = false;
                }
                if (b(activity, this.f)) {
                    this.f = null;
                }
                com.chartboost.sdk.Model.c cVarD = d();
                if (cVarD != null) {
                    cVarD.s();
                }
            }
        }
    }

    void f(Activity activity) {
        aq.a("CBUIManager.onResumeCallback", activity);
        if (com.chartboost.sdk.b.b() && com.chartboost.sdk.b.a(activity)) {
            this.a.e();
            RunnableC0002c runnableC0002c = new RunnableC0002c(2);
            runnableC0002c.b = activity;
            h.b(runnableC0002c);
        }
    }

    void h() {
        aq.a("CBUIManager.onResumeImpl", (String) null);
        this.i.b(i.m);
        com.chartboost.sdk.Model.c cVarD = d();
        if (CBUtility.a(Chartboost.CBFramework.CBFrameworkUnity)) {
            this.a.b();
        }
        if (cVarD != null) {
            cVarD.r();
        }
    }

    void g(Activity activity) {
        aq.a("CBUIManager.onPauseCallback", activity);
        if (com.chartboost.sdk.b.b() && com.chartboost.sdk.b.a(activity)) {
            RunnableC0002c runnableC0002c = new RunnableC0002c(3);
            runnableC0002c.b = activity;
            h.b(runnableC0002c);
        }
    }

    void i() {
        aq.a("CBUIManager.onPauseImpl", (String) null);
        com.chartboost.sdk.Model.c cVarD = d();
        if (cVarD != null) {
            cVarD.t();
        }
        this.i.c(i.m);
    }

    void h(Activity activity) {
        aq.a("CBUIManager.onStopCallback", activity);
        if (com.chartboost.sdk.b.b() && com.chartboost.sdk.b.a(activity)) {
            RunnableC0002c runnableC0002c = new RunnableC0002c(4);
            runnableC0002c.b = activity;
            h.b(runnableC0002c);
        }
    }

    void i(Activity activity) {
        j jVarA = a(activity);
        aq.a("CBUIManager.onStopImpl", jVarA);
        com.chartboost.sdk.Model.c cVarD = d();
        if (cVarD != null && cVarD.p.b == 0) {
            d dVarC = c();
            if (c(jVarA) && dVarC != null) {
                dVarC.c(cVarD);
                this.f = cVarD;
                b(jVarA, false);
            }
            if (!(jVarA.get() instanceof CBImpressionActivity)) {
                a(jVarA, false);
            }
        }
    }

    boolean j() {
        aq.a("CBUIManager.onBackPressedCallback");
        if (!com.chartboost.sdk.b.b()) {
            return false;
        }
        if (this.d == null) {
            CBLogging.b("CBUIManager", "The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly.");
            return false;
        }
        if (!this.k) {
            return false;
        }
        this.k = false;
        k();
        return true;
    }

    boolean k() {
        aq.a("CBUIManager.onBackPressedImpl");
        return m();
    }

    private boolean m() {
        aq.a("CBUIManager.closeImpressionImpl");
        com.chartboost.sdk.Model.c cVarD = d();
        if (cVarD != null && cVarD.l == 2) {
            if (cVarD.q()) {
                return true;
            }
            h.b(new RunnableC0002c(7));
            return true;
        }
        return false;
    }

    void j(Activity activity) {
        aq.a("CBUIManager.onDestroyCallback", activity);
        if (com.chartboost.sdk.b.b() && com.chartboost.sdk.b.a(activity)) {
            RunnableC0002c runnableC0002c = new RunnableC0002c(5);
            runnableC0002c.b = activity;
            h.b(runnableC0002c);
        }
    }

    void k(Activity activity) {
        aq.a("CBUIManager.onDestroyImpl", activity);
        b(a(activity), false);
        com.chartboost.sdk.Model.c cVarD = d();
        if (cVarD == null && activity == this.e && this.f != null) {
            cVarD = this.f;
        }
        d dVarC = c();
        if (dVarC != null && cVarD != null) {
            dVarC.d(cVarD);
        }
        this.f = null;
    }

    public void b(com.chartboost.sdk.Model.c cVar) {
        d dVarC;
        if (cVar.l == 2) {
            d dVarC2 = c();
            if (dVarC2 != null) {
                dVarC2.b(cVar);
            }
        } else if (cVar.p.b == 1 && cVar.l == 1 && (dVarC = c()) != null) {
            dVarC.d(cVar);
        }
        if (cVar.v()) {
            this.j.d(cVar.a.a(cVar.p.b), cVar.m, cVar.o());
        } else {
            this.j.e(cVar.a.a(cVar.p.b), cVar.m, cVar.o());
        }
    }

    boolean l() {
        com.chartboost.sdk.Model.c cVarD = d();
        if (cVarD == null) {
            return false;
        }
        cVarD.z = true;
        b(cVarD);
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    boolean b(Activity activity, com.chartboost.sdk.Model.c cVar) {
        if (cVar != null) {
            switch (cVar.l) {
                case 1:
                case 3:
                    a(cVar);
                    break;
                case 2:
                    if (!cVar.g()) {
                        if (i.d != null && i.d.doesWrapperUseCustomBackgroundingBehavior() && !(activity instanceof CBImpressionActivity)) {
                            return false;
                        }
                        d dVarC = c();
                        if (dVarC != null) {
                            CBLogging.b("CBUIManager", "Error onActivityStart " + cVar.l);
                            dVarC.d(cVar);
                        }
                    }
                    break;
            }
        }
        return true;
    }

    class b implements Runnable {
        private final int b;
        private final int c;
        private final int d;

        private com.chartboost.sdk.a a() {
            return i.c;
        }

        b() {
            com.chartboost.sdk.a aVarA = a();
            this.b = c.this.e == null ? -1 : c.this.e.hashCode();
            this.c = c.this.d == null ? -1 : c.this.d.hashCode();
            this.d = aVarA != null ? aVarA.hashCode() : -1;
        }

        @Override // java.lang.Runnable
        public void run() {
            aq.a("ClearMemoryRunnable.run");
            com.chartboost.sdk.a aVarA = a();
            if (c.this.d != null && c.this.d.hashCode() == this.c) {
                c.this.d = null;
                aq.a("CBUIManager.clearHostActivityRef");
            }
            if (aVarA != null && aVarA.hashCode() == this.d) {
                i.c = null;
                aq.a("SdkSettings.clearDelegate");
            }
        }
    }

    @TargetApi(14)
    private class a implements Application.ActivityLifecycleCallbacks {
        private a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
            aq.a("CBUIManager.ActivityCallbackListener.onActivityCreated", activity);
            CBLogging.a("CBUIManager", "######## onActivityCreated callback called");
            if (!(activity instanceof CBImpressionActivity)) {
                c.this.b(activity);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            aq.a("CBUIManager.ActivityCallbackListener.onActivityStarted", activity);
            if (!(activity instanceof CBImpressionActivity)) {
                CBLogging.a("CBUIManager", "######## onActivityStarted callback called from developer side");
                c.this.d(activity);
            } else {
                CBLogging.a("CBUIManager", "######## onActivityStarted callback called from CBImpressionactivity");
                c.this.e(activity);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            aq.a("CBUIManager.ActivityCallbackListener.onActivityResumed", activity);
            if (!(activity instanceof CBImpressionActivity)) {
                CBLogging.a("CBUIManager", "######## onActivityResumed callback called from developer side");
                c.this.f(activity);
            } else {
                CBLogging.a("CBUIManager", "######## onActivityResumed callback called from CBImpressionactivity");
                c.this.a(activity);
                c.this.h();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            aq.a("CBUIManager.ActivityCallbackListener.onActivityPaused", activity);
            if (!(activity instanceof CBImpressionActivity)) {
                CBLogging.a("CBUIManager", "######## onActivityPaused callback called from developer side");
                c.this.g(activity);
            } else {
                CBLogging.a("CBUIManager", "######## onActivityPaused callback called from CBImpressionactivity");
                c.this.a(activity);
                c.this.i();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            aq.a("CBUIManager.ActivityCallbackListener.onActivityStopped", activity);
            if (!(activity instanceof CBImpressionActivity)) {
                CBLogging.a("CBUIManager", "######## onActivityStopped callback called from developer side");
                c.this.h(activity);
            } else {
                CBLogging.a("CBUIManager", "######## onActivityStopped callback called from CBImpressionactivity");
                c.this.i(activity);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            aq.a("CBUIManager.ActivityCallbackListener.onActivityDestroyed", activity);
            if (!(activity instanceof CBImpressionActivity)) {
                CBLogging.a("CBUIManager", "######## onActivityDestroyed callback called from developer side");
                c.this.j(activity);
            } else {
                CBLogging.a("CBUIManager", "######## onActivityDestroyed callback called from CBImpressionactivity");
                c.this.k(activity);
            }
        }
    }

    /* JADX INFO: renamed from: com.chartboost.sdk.c$c, reason: collision with other inner class name */
    public class RunnableC0002c implements Runnable {
        public final int a;
        Activity b = null;
        boolean c = false;
        public com.chartboost.sdk.Model.c d = null;

        public RunnableC0002c(int i) {
            this.a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                switch (this.a) {
                    case 0:
                        c.this.c(this.b);
                        break;
                    case 1:
                        c.this.b.removeCallbacks(c.this.g);
                        if (c.this.d != null && !c.this.d.a(this.b) && c.this.g()) {
                            c.this.b(c.this.d);
                            c.this.a(c.this.d, false);
                        }
                        c.this.a(this.b, true);
                        c.this.d = c.this.a(this.b);
                        c.this.a.b();
                        c.this.a.a(this.b);
                        c.this.e(this.b);
                        break;
                    case 2:
                        if (c.this.a(c.this.a(this.b))) {
                            c.this.h();
                        } else if (CBUtility.a(Chartboost.CBFramework.CBFrameworkUnity)) {
                            c.this.a.b();
                        }
                        break;
                    case 3:
                        if (c.this.a(c.this.a(this.b))) {
                            c.this.i();
                        }
                        break;
                    case 4:
                        j jVarA = c.this.a(this.b);
                        if (c.this.a(jVarA)) {
                            c.this.b(jVarA);
                        }
                        break;
                    case 5:
                        if (c.this.d == null || c.this.d.a(this.b)) {
                            c.this.g = c.this.new b();
                            c.this.g.run();
                        }
                        c.this.k(this.b);
                        break;
                    case 6:
                        if (c.this.e != null) {
                            if (this.c) {
                                c.this.e.forwardTouchEvents(c.this.a());
                            } else {
                                c.this.e.forwardTouchEvents(null);
                            }
                        }
                        break;
                    case 7:
                        c.this.l();
                        break;
                    case 9:
                        c.this.a(this.b, this.d);
                        break;
                    case 10:
                        if (this.d.a()) {
                            this.d.u().b();
                        }
                        break;
                    case 11:
                        d dVarC = c.this.c();
                        if (this.d.l == 2 && dVarC != null) {
                            dVarC.b(this.d);
                            break;
                        }
                        break;
                    case 12:
                        this.d.n();
                        break;
                    case 13:
                        c.this.c.a(this.d, this.b);
                        break;
                    case 14:
                        c.this.c.d(this.d);
                        break;
                }
            } catch (Exception e) {
                com.chartboost.sdk.Tracking.a.a(RunnableC0002c.class, "run (" + this.a + ")", e);
            }
        }
    }
}
