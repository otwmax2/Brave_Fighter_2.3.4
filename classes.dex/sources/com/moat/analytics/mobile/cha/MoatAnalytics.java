package com.moat.analytics.mobile.cha;

import android.app.Application;
import android.support.annotation.UiThread;
import com.moat.analytics.mobile.cha.NoOp;

/* JADX INFO: loaded from: classes.dex */
public abstract class MoatAnalytics {

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private static MoatAnalytics f10 = null;

    @UiThread
    public abstract void prepareNativeDisplayTracking(String str);

    public abstract void start(Application application);

    public abstract void start(MoatOptions moatOptions, Application application);

    public static synchronized MoatAnalytics getInstance() {
        if (f10 == null) {
            try {
                f10 = new f();
            } catch (Exception e) {
                o.m131(e);
                f10 = new NoOp.MoatAnalytics();
            }
        }
        return f10;
    }
}
