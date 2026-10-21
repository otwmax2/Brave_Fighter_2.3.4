package com.moat.analytics.mobile.iro;

import android.app.Application;
import android.support.annotation.UiThread;
import com.moat.analytics.mobile.iro.NoOp;

/* JADX INFO: loaded from: classes.dex */
public abstract class MoatAnalytics {

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static MoatAnalytics f235 = null;

    @UiThread
    public abstract void prepareNativeDisplayTracking(String str);

    public abstract void start(Application application);

    public abstract void start(MoatOptions moatOptions, Application application);

    public static synchronized MoatAnalytics getInstance() {
        if (f235 == null) {
            try {
                f235 = new j();
            } catch (Exception e) {
                o.m311(e);
                f235 = new NoOp.MoatAnalytics();
            }
        }
        return f235;
    }
}
