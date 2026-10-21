package com.moat.analytics.mobile.vng;

import android.app.Application;
import com.moat.analytics.mobile.vng.v;

/* JADX INFO: loaded from: classes.dex */
public abstract class MoatAnalytics {
    private static MoatAnalytics a = null;

    public static synchronized MoatAnalytics getInstance() {
        if (a == null) {
            try {
                a = new k();
            } catch (Exception e) {
                m.a(e);
                a = new v.a();
            }
        }
        return a;
    }

    public abstract void prepareNativeDisplayTracking(String str);

    public abstract void start(Application application);

    public abstract void start(MoatOptions moatOptions, Application application);
}
