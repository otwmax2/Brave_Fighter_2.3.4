package com.moat.analytics.mobile.iro;

import android.app.Activity;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.android.gms.ads.AdActivity;
import com.moat.analytics.mobile.iro.base.functional.Optional;
import com.moat.analytics.mobile.iro.t;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class e {

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static WeakReference<Activity> f278 = new WeakReference<>(null);

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    @Nullable
    private static WebAdTracker f279;

    e() {
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static void m229(Activity activity) {
        try {
            if (t.m340().f402 == t.c.f418) {
                return;
            }
            String name = activity.getClass().getName();
            b.m203(3, "GMAInterstitialHelper", activity, "Activity name: " + name);
            if (name.contains(AdActivity.CLASS_NAME)) {
                if (f278.get() == null || f278.get() != activity) {
                    View decorView = activity.getWindow().getDecorView();
                    if (decorView instanceof ViewGroup) {
                        Optional<WebView> optionalM354 = v.m354((ViewGroup) decorView, true);
                        if (optionalM354.isPresent()) {
                            f278 = new WeakReference<>(activity);
                            WebView webView = optionalM354.get();
                            b.m203(3, "GMAInterstitialHelper", f278.get(), "Starting to track GMA interstitial");
                            WebAdTracker webAdTrackerCreateWebAdTracker = MoatFactory.create().createWebAdTracker(webView);
                            f279 = webAdTrackerCreateWebAdTracker;
                            webAdTrackerCreateWebAdTracker.startTracking();
                            return;
                        }
                        b.m203(3, "GMAInterstitialHelper", activity, "Sorry, no WebView in this activity");
                        return;
                    }
                    return;
                }
                return;
            }
            if (f279 != null) {
                b.m203(3, "GMAInterstitialHelper", f278.get(), "Stopping to track GMA interstitial");
                f279.stopTracking();
                f279 = null;
            }
            f278 = new WeakReference<>(null);
        } catch (Exception e) {
            o.m311(e);
        }
    }
}
