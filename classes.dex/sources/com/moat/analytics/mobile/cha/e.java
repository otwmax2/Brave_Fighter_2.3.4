package com.moat.analytics.mobile.cha;

import android.app.Activity;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.google.android.gms.ads.AdActivity;
import com.moat.analytics.mobile.cha.base.functional.Optional;
import com.moat.analytics.mobile.cha.t;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class e {

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static WeakReference<Activity> f53 = new WeakReference<>(null);

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    @Nullable
    private static WebAdTracker f54;

    e() {
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static void m50(Activity activity) {
        try {
            if (t.m165().f183 == t.a.f195) {
                return;
            }
            String name = activity.getClass().getName();
            a.m15(3, "GMAInterstitialHelper", activity, "Activity name: " + name);
            if (name.contains(AdActivity.CLASS_NAME)) {
                if (f53.get() == null || f53.get() != activity) {
                    View decorView = activity.getWindow().getDecorView();
                    if (decorView instanceof ViewGroup) {
                        Optional<WebView> optionalM186 = x.m186((ViewGroup) decorView, true);
                        if (optionalM186.isPresent()) {
                            f53 = new WeakReference<>(activity);
                            WebView webView = optionalM186.get();
                            a.m15(3, "GMAInterstitialHelper", f53.get(), "Starting to track GMA interstitial");
                            WebAdTracker webAdTrackerCreateWebAdTracker = MoatFactory.create().createWebAdTracker(webView);
                            f54 = webAdTrackerCreateWebAdTracker;
                            webAdTrackerCreateWebAdTracker.startTracking();
                            return;
                        }
                        a.m15(3, "GMAInterstitialHelper", activity, "Sorry, no WebView in this activity");
                        return;
                    }
                    return;
                }
                return;
            }
            if (f54 != null) {
                a.m15(3, "GMAInterstitialHelper", f53.get(), "Stopping to track GMA interstitial");
                f54.stopTracking();
                f54 = null;
            }
            f53 = new WeakReference<>(null);
        } catch (Exception e) {
            o.m131(e);
        }
    }
}
