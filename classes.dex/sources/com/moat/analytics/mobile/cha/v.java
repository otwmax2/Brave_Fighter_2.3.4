package com.moat.analytics.mobile.cha;

import android.support.annotation.Nullable;
import android.view.ViewGroup;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
final class v extends d implements WebAdTracker {
    v(@Nullable ViewGroup viewGroup) {
        this(x.m186(viewGroup, false).orElse(null));
        if (viewGroup == null) {
            String str = "WebAdTracker initialization not successful, Target ViewGroup is null";
            a.m15(3, "WebAdTracker", this, str);
            a.m12("[ERROR] ", str);
            this.f51 = new o("Target ViewGroup is null");
        }
        if (this.f49 == null) {
            String str2 = "WebAdTracker initialization not successful, No WebView to track inside of ad container";
            a.m15(3, "WebAdTracker", this, str2);
            a.m12("[ERROR] ", str2);
            this.f51 = new o("No WebView to track inside of ad container");
        }
    }

    v(@Nullable WebView webView) {
        super(webView, false, false);
        a.m15(3, "WebAdTracker", this, "Initializing.");
        if (webView == null) {
            String str = "WebAdTracker initialization not successful, WebView is null";
            a.m15(3, "WebAdTracker", this, str);
            a.m12("[ERROR] ", str);
            this.f51 = new o("WebView is null");
            return;
        }
        try {
            super.m48(webView);
            a.m12("[SUCCESS] ", "WebAdTracker created for " + m41());
        } catch (o e) {
            this.f51 = e;
        }
    }

    @Override // com.moat.analytics.mobile.cha.d
    /* JADX INFO: renamed from: ˋ */
    final String mo45() {
        return "WebAdTracker";
    }
}
