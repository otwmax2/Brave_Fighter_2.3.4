package com.moat.analytics.mobile.iro;

import android.app.Activity;
import android.support.annotation.CallSuper;
import android.support.annotation.Nullable;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebView;
import com.facebook.internal.AnalyticsEvents;
import com.ironsource.sdk.constants.Constants;
import com.moat.analytics.mobile.iro.f;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
abstract class c {

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private WeakReference<View> f255;

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private final boolean f256;

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private boolean f257;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    TrackerListener f258;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private final y f259;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    o f260 = null;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    final String f261;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    f f262;

    /* JADX INFO: renamed from: ˏॱ, reason: contains not printable characters */
    private boolean f263;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    WeakReference<WebView> f264;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    final boolean f265;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    abstract String mo211();

    c(@Nullable View view, boolean z, boolean z2) {
        b.m203(3, "BaseTracker", this, "Initializing.");
        this.f261 = z ? "m" + hashCode() : "";
        this.f255 = new WeakReference<>(view);
        this.f256 = z;
        this.f265 = z2;
        this.f257 = false;
        this.f263 = false;
        this.f259 = new y();
    }

    public void setListener(TrackerListener trackerListener) {
        this.f258 = trackerListener;
    }

    public void removeListener() {
        this.f258 = null;
    }

    public void startTracking() {
        try {
            b.m203(3, "BaseTracker", this, "In startTracking method.");
            mo214();
            if (this.f258 != null) {
                this.f258.onTrackingStarted("Tracking started on " + b.m205(this.f255.get()));
            }
            String str = "startTracking succeeded for " + b.m205(this.f255.get());
            b.m203(3, "BaseTracker", this, str);
            b.m201("[SUCCESS] ", mo211() + " " + str);
        } catch (Exception e) {
            m217("startTracking", e);
        }
    }

    @CallSuper
    public void stopTracking() {
        boolean z = true;
        try {
            b.m203(3, "BaseTracker", this, "In stopTracking method.");
            this.f263 = true;
        } catch (Exception e) {
            o.m311(e);
        }
        if (this.f262 == null) {
            z = false;
        } else {
            this.f262.m255(this);
        }
        b.m203(3, "BaseTracker", this, "Attempt to stop tracking ad impression was " + (z ? "" : "un") + "successful.");
        b.m201(z ? "[SUCCESS] " : "[ERROR] ", mo211() + " stopTracking " + (z ? AnalyticsEvents.PARAMETER_SHARE_OUTCOME_SUCCEEDED : Constants.ParametersKeys.FAILED) + " for " + b.m205(this.f255.get()));
        if (this.f258 != null) {
            this.f258.onTrackingStopped("");
            this.f258 = null;
        }
    }

    @CallSuper
    public void changeTargetView(View view) {
        b.m203(3, "BaseTracker", this, "changing view to " + b.m205(view));
        this.f255 = new WeakReference<>(view);
    }

    @Deprecated
    public void setActivity(Activity activity) {
    }

    @CallSuper
    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    void mo214() throws o {
        b.m203(3, "BaseTracker", this, "Attempting to start impression.");
        m212();
        if (this.f257) {
            throw new o("Tracker already started");
        }
        if (!this.f263) {
            mo216(new ArrayList());
            if (this.f262 != null) {
                this.f262.m257(this);
                this.f257 = true;
                b.m203(3, "BaseTracker", this, "Impression started.");
                return;
            }
            b.m203(3, "BaseTracker", this, "Bridge is null, won't start tracking");
            throw new o("Bridge is null");
        }
        throw new o("Tracker already stopped");
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final void m213(WebView webView) throws o {
        if (webView != null) {
            this.f264 = new WeakReference<>(webView);
            if (this.f262 == null) {
                if (!(this.f256 || this.f265)) {
                    b.m203(3, "BaseTracker", this, "Attempting bridge installation.");
                    if (this.f264.get() != null) {
                        this.f262 = new f(this.f264.get(), f.b.f305);
                        b.m203(3, "BaseTracker", this, "Bridge installed.");
                    } else {
                        this.f262 = null;
                        b.m203(3, "BaseTracker", this, "Bridge not installed, WebView is null.");
                    }
                }
            }
            if (this.f262 != null) {
                this.f262.m254(this);
            }
        }
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final void m212() throws o {
        if (this.f260 != null) {
            throw new o("Tracker initialization failed: " + this.f260.getMessage());
        }
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final boolean m218() {
        return this.f257 && !this.f263;
    }

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    final View m208() {
        return this.f255.get();
    }

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    final String m209() {
        this.f259.m364(this.f261, this.f255.get());
        return this.f259.f435;
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final void m217(String str, Exception exc) {
        try {
            o.m311(exc);
            String strM310 = o.m310(str, exc);
            if (this.f258 != null) {
                this.f258.onTrackingFailedToStart(strM310);
            }
            b.m203(3, "BaseTracker", this, strM310);
            b.m201("[ERROR] ", mo211() + " " + strM310);
        } catch (Exception e) {
        }
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    final void m215() throws o {
        if (this.f257) {
            throw new o("Tracker already started");
        }
        if (!this.f263) {
        } else {
            throw new o("Tracker already stopped");
        }
    }

    @CallSuper
    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    void mo216(List<String> list) throws o {
        if (this.f255.get() == null && !this.f265) {
            list.add("Tracker's target view is null");
        }
        if (!list.isEmpty()) {
            throw new o(TextUtils.join(" and ", list));
        }
    }

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    final String m210() {
        return b.m205(this.f255.get());
    }
}
