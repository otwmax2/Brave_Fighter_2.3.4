package com.moat.analytics.mobile.cha;

import android.app.Activity;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.facebook.internal.AnalyticsEvents;
import com.ironsource.sdk.constants.Constants;
import com.moat.analytics.mobile.cha.j;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class d {

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private WeakReference<View> f42;

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private final boolean f43;

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    final boolean f44;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    TrackerListener f45;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private boolean f46;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final String f47;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    j f48;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    WeakReference<WebView> f49;

    /* JADX INFO: renamed from: ͺ, reason: contains not printable characters */
    private boolean f50;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    o f51 = null;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private final u f52;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    abstract String mo45();

    d(@Nullable View view, boolean z, boolean z2) {
        a.m15(3, "BaseTracker", this, "Initializing.");
        this.f47 = z ? "m" + hashCode() : "";
        this.f42 = new WeakReference<>(view);
        this.f43 = z;
        this.f44 = z2;
        this.f46 = false;
        this.f50 = false;
        this.f52 = new u();
    }

    public void setListener(TrackerListener trackerListener) {
        this.f45 = trackerListener;
    }

    public void removeListener() {
        this.f45 = null;
    }

    public void startTracking() {
        try {
            a.m15(3, "BaseTracker", this, "In startTracking method.");
            mo28();
            if (this.f45 != null) {
                this.f45.onTrackingStarted("Tracking started on " + a.m14(this.f42.get()));
            }
            String str = "startTracking succeeded for " + a.m14(this.f42.get());
            a.m15(3, "BaseTracker", this, str);
            a.m12("[SUCCESS] ", mo45() + " " + str);
        } catch (Exception e) {
            m49("startTracking", e);
        }
    }

    @CallSuper
    public void stopTracking() {
        boolean z = true;
        try {
            a.m15(3, "BaseTracker", this, "In stopTracking method.");
            this.f50 = true;
        } catch (Exception e) {
            o.m131(e);
        }
        if (this.f48 == null) {
            z = false;
        } else {
            this.f48.m101(this);
        }
        a.m15(3, "BaseTracker", this, "Attempt to stop tracking ad impression was " + (z ? "" : "un") + "successful.");
        a.m12(z ? "[SUCCESS] " : "[ERROR] ", mo45() + " stopTracking " + (z ? AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED : Constants.ParametersKeys.FAILED) + " for " + a.m14(this.f42.get()));
        if (this.f45 != null) {
            this.f45.onTrackingStopped("");
            this.f45 = null;
        }
    }

    @CallSuper
    public void changeTargetView(View view) {
        a.m15(3, "BaseTracker", this, "changing view to " + a.m14(view));
        this.f42 = new WeakReference<>(view);
    }

    @Deprecated
    public void setActivity(Activity activity) {
    }

    @CallSuper
    /* JADX INFO: renamed from: ˏ */
    void mo28() throws o {
        a.m15(3, "BaseTracker", this, "Attempting to start impression.");
        m46();
        if (this.f46) {
            throw new o("Tracker already started");
        }
        if (!this.f50) {
            mo25(new ArrayList());
            if (this.f48 != null) {
                this.f48.m102(this);
                this.f46 = true;
                a.m15(3, "BaseTracker", this, "Impression started.");
                return;
            }
            a.m15(3, "BaseTracker", this, "Bridge is null, won't start tracking");
            throw new o("Bridge is null");
        }
        throw new o("Tracker already stopped");
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final void m48(WebView webView) throws o {
        if (webView != null) {
            this.f49 = new WeakReference<>(webView);
            if (this.f48 == null) {
                if (!(this.f43 || this.f44)) {
                    a.m15(3, "BaseTracker", this, "Attempting bridge installation.");
                    if (this.f49.get() != null) {
                        this.f48 = new j(this.f49.get(), j.e.f121);
                        a.m15(3, "BaseTracker", this, "Bridge installed.");
                    } else {
                        this.f48 = null;
                        a.m15(3, "BaseTracker", this, "Bridge not installed, WebView is null.");
                    }
                }
            }
            if (this.f48 != null) {
                this.f48.m100(this);
            }
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    final void m46() throws o {
        if (this.f51 != null) {
            throw new o("Tracker initialization failed: " + this.f51.getMessage());
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    final boolean m44() {
        return this.f46 && !this.f50;
    }

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    final View m42() {
        return this.f42.get();
    }

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    final String m43() {
        this.f52.m185(this.f47, this.f42.get());
        return this.f52.f214;
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final void m49(String str, Exception exc) {
        try {
            o.m131(exc);
            String strM130 = o.m130(str, exc);
            if (this.f45 != null) {
                this.f45.onTrackingFailedToStart(strM130);
            }
            a.m15(3, "BaseTracker", this, strM130);
            a.m12("[ERROR] ", mo45() + " " + strM130);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final void m47() throws o {
        if (this.f46) {
            throw new o("Tracker already started");
        }
        if (!this.f50) {
        } else {
            throw new o("Tracker already stopped");
        }
    }

    @CallSuper
    /* JADX INFO: renamed from: ˋ */
    void mo25(List<String> list) throws o {
        if (this.f42.get() == null && !this.f44) {
            list.add("Tracker's target view is null");
        }
        if (!list.isEmpty()) {
            throw new o(TextUtils.join(" and ", list));
        }
    }

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    final String m41() {
        return a.m14(this.f42.get());
    }
}
