package com.moat.analytics.mobile.iro;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.moat.analytics.mobile.iro.t;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class a {

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static WeakReference<Activity> f239;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static Application f242;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static boolean f240 = false;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static int f243 = 0;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static boolean f241 = false;

    a() {
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static void m192(Application application) {
        f242 = application;
        if (!f240) {
            f240 = true;
            f242.registerActivityLifecycleCallbacks(new c());
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static Application m194() {
        return f242;
    }

    static class c implements Application.ActivityLifecycleCallbacks {
        c() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            int unused = a.f243 = 1;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            try {
                a.f239 = new WeakReference<>(activity);
                int unused = a.f243 = 2;
                if (!a.f241) {
                    m198(true);
                }
                boolean unused2 = a.f241 = true;
                b.m203(3, "ActivityState", this, "Activity started: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                o.m311(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            try {
                a.f239 = new WeakReference<>(activity);
                int unused = a.f243 = 3;
                t.m340().m349();
                b.m203(3, "ActivityState", this, "Activity resumed: " + activity.getClass() + "@" + activity.hashCode());
                if (((j) MoatAnalytics.getInstance()).f341) {
                    e.m229(activity);
                }
            } catch (Exception e) {
                o.m311(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            try {
                int unused = a.f243 = 4;
                if (a.m195(activity)) {
                    a.f239 = new WeakReference<>(null);
                }
                b.m203(3, "ActivityState", this, "Activity paused: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                o.m311(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            try {
                if (a.f243 != 3) {
                    boolean unused = a.f241 = false;
                    m198(false);
                }
                int unused2 = a.f243 = 5;
                if (a.m195(activity)) {
                    a.f239 = new WeakReference<>(null);
                }
                b.m203(3, "ActivityState", this, "Activity stopped: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                o.m311(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            try {
                if (a.f243 != 3 && a.f243 != 5) {
                    if (a.f241) {
                        m198(false);
                    }
                    boolean unused = a.f241 = false;
                }
                int unused2 = a.f243 = 6;
                b.m203(3, "ActivityState", this, "Activity destroyed: " + activity.getClass() + "@" + activity.hashCode());
                if (a.m195(activity)) {
                    a.f239 = new WeakReference<>(null);
                }
            } catch (Exception e) {
                o.m311(e);
            }
        }

        /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
        private static void m198(boolean z) {
            if (z) {
                b.m203(3, "ActivityState", null, "App became visible");
                if (t.m340().f402 == t.c.f419 && !((j) MoatAnalytics.getInstance()).f342) {
                    k.m296().m304();
                    return;
                }
                return;
            }
            b.m203(3, "ActivityState", null, "App became invisible");
            if (t.m340().f402 == t.c.f419 && !((j) MoatAnalytics.getInstance()).f342) {
                k.m296().m303();
            }
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static /* synthetic */ boolean m195(Activity activity) {
        return f239 != null && f239.get() == activity;
    }
}
