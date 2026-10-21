package com.moat.analytics.mobile.vng;

import android.app.Activity;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.view.View;
import android.webkit.WebView;
import com.facebook.internal.AnalyticsEvents;
import com.ironsource.sdk.constants.Constants;
import com.moat.analytics.mobile.vng.j;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
abstract class b {
    j a;
    final String b;
    final boolean c;
    boolean d;
    boolean e;
    private WeakReference<View> f;
    private WeakReference<WebView> g;
    private final z h;
    private final boolean i;

    b(@Nullable View view, boolean z, boolean z2) {
        p.a(3, "BaseTracker", this, "Initializing.");
        if (z) {
            this.b = "m" + hashCode();
        } else {
            this.b = "";
        }
        this.f = new WeakReference<>(view);
        this.i = z;
        this.c = z2;
        this.d = false;
        this.e = false;
        this.h = new z();
    }

    private void g() {
        com.moat.analytics.mobile.vng.a.a.a.a(this.g);
        p.a(3, "BaseTracker", this, "Attempting bridge installation.");
        if (this.g.get() == null) {
            this.a = null;
            p.a(3, "BaseTracker", this, "Bridge not installed, WebView is null.");
            return;
        }
        if (!this.i && !this.c) {
            this.a = new j(this.g.get(), j.a.WEBVIEW);
        }
        p.a(3, "BaseTracker", this, "Bridge " + (this.a.a ? "" : "not ") + "installed.");
    }

    abstract String a();

    void a(WebView webView) {
        if (webView != null) {
            this.g = new WeakReference<>(webView);
            if (this.a == null) {
                g();
            }
            if (this.a == null || !this.a.a) {
                return;
            }
            this.a.a(this);
        }
    }

    void a(j jVar) {
        this.a = jVar;
    }

    boolean b() {
        p.a(3, "BaseTracker", this, "Attempting to start impression.");
        if (this.e) {
            p.a(3, "BaseTracker", this, "startTracking failed, tracker already started");
            p.a("[INFO] ", a() + " already started");
            return false;
        }
        boolean zB = this.a.b(this);
        p.a(3, "BaseTracker", this, "Impression " + (zB ? "" : "not ") + "started.");
        if (!zB) {
            return zB;
        }
        this.d = true;
        this.e = true;
        return zB;
    }

    boolean c() {
        p.a(3, "BaseTracker", this, "Attempting to stop impression.");
        this.d = false;
        boolean zC = this.a.c(this);
        p.a(3, "BaseTracker", this, "Impression tracking " + (zC ? "" : "not ") + "stopped.");
        return zC;
    }

    @CallSuper
    public void changeTargetView(View view) {
        p.a(3, "BaseTracker", this, "changing view to " + (view != null ? view.getClass().getSimpleName() + "@" + view.hashCode() : "null"));
        this.f = new WeakReference<>(view);
    }

    View d() {
        return this.f.get();
    }

    String e() {
        return d() != null ? d().getClass().getSimpleName() + "@" + d().hashCode() : "";
    }

    String f() {
        this.h.a(this.b, d());
        return this.h.a;
    }

    @Deprecated
    public void setActivity(Activity activity) {
    }

    public void startTracking() {
        boolean zB = false;
        try {
            p.a(3, "BaseTracker", this, "In startTracking method.");
            zB = b();
        } catch (Exception e) {
            m.a(e);
        }
        p.a(3, "BaseTracker", this, "Attempt to start tracking ad impression was " + (zB ? "" : "un") + "successful.");
        p.a(zB ? "[SUCCESS] " : "[ERROR] ", a() + " startTracking " + (zB ? AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED : Constants.ParametersKeys.FAILED) + " for " + e());
    }

    public void stopTracking() {
        boolean zC = false;
        try {
            p.a(3, "BaseTracker", this, "In stopTracking method.");
            zC = c();
        } catch (Exception e) {
            m.a(e);
        }
        p.a(3, "BaseTracker", this, "Attempt to stop tracking ad impression was " + (zC ? "" : "un") + "successful.");
        p.a(zC ? "[SUCCESS] " : "[ERROR] ", a() + " stopTracking " + (zC ? AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED : Constants.ParametersKeys.FAILED) + " for " + e());
    }
}
