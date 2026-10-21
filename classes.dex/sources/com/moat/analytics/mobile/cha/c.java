package com.moat.analytics.mobile.cha;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.moat.analytics.mobile.cha.t;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class c {

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static Application f38;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static WeakReference<Activity> f40;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static boolean f39 = false;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static int f41 = 0;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static boolean f37 = false;

    c() {
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    static void m38(Application application) {
        f38 = application;
        if (!f39) {
            f39 = true;
            f38.registerActivityLifecycleCallbacks(new a());
        }
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static Application m36() {
        return f38;
    }

    static class a implements Application.ActivityLifecycleCallbacks {
        a() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            int unused = c.f41 = 1;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            try {
                c.f40 = new WeakReference<>(activity);
                int unused = c.f41 = 2;
                if (!c.f37) {
                    m40(true);
                }
                boolean unused2 = c.f37 = true;
                com.moat.analytics.mobile.cha.a.m15(3, "ActivityState", this, "Activity started: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                o.m131(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            try {
                c.f40 = new WeakReference<>(activity);
                int unused = c.f41 = 3;
                t.m165().m171();
                com.moat.analytics.mobile.cha.a.m15(3, "ActivityState", this, "Activity resumed: " + activity.getClass() + "@" + activity.hashCode());
                if (((f) MoatAnalytics.getInstance()).f61) {
                    e.m50(activity);
                }
            } catch (Exception e) {
                o.m131(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            try {
                int unused = c.f41 = 4;
                if (c.m34(activity)) {
                    c.f40 = new WeakReference<>(null);
                }
                com.moat.analytics.mobile.cha.a.m15(3, "ActivityState", this, "Activity paused: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                o.m131(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            try {
                if (c.f41 != 3) {
                    boolean unused = c.f37 = false;
                    m40(false);
                }
                int unused2 = c.f41 = 5;
                if (c.m34(activity)) {
                    c.f40 = new WeakReference<>(null);
                }
                com.moat.analytics.mobile.cha.a.m15(3, "ActivityState", this, "Activity stopped: " + activity.getClass() + "@" + activity.hashCode());
            } catch (Exception e) {
                o.m131(e);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            try {
                if (c.f41 != 3 && c.f41 != 5) {
                    if (c.f37) {
                        m40(false);
                    }
                    boolean unused = c.f37 = false;
                }
                int unused2 = c.f41 = 6;
                com.moat.analytics.mobile.cha.a.m15(3, "ActivityState", this, "Activity destroyed: " + activity.getClass() + "@" + activity.hashCode());
                if (c.m34(activity)) {
                    c.f40 = new WeakReference<>(null);
                }
            } catch (Exception e) {
                o.m131(e);
            }
        }

        /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
        private static void m40(boolean z) {
            if (z) {
                com.moat.analytics.mobile.cha.a.m15(3, "ActivityState", null, "App became visible");
                if (t.m165().f183 == t.a.f194 && !((f) MoatAnalytics.getInstance()).f59) {
                    n.m117().m127();
                    return;
                }
                return;
            }
            com.moat.analytics.mobile.cha.a.m15(3, "ActivityState", null, "App became invisible");
            if (t.m165().f183 == t.a.f194 && !((f) MoatAnalytics.getInstance()).f59) {
                n.m117().m128();
            }
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static /* synthetic */ boolean m34(Activity activity) {
        return f40 != null && f40.get() == activity;
    }
}
