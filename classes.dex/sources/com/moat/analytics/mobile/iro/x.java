package com.moat.analytics.mobile.iro;

import android.support.annotation.Nullable;
import android.view.ViewGroup;
import android.webkit.WebView;

/* JADX INFO: loaded from: classes.dex */
final class x extends c implements WebAdTracker {
    x(@Nullable ViewGroup viewGroup) {
        this(v.m354(viewGroup, false).orElse(null));
        if (viewGroup == null) {
            String str = "WebAdTracker initialization not successful, Target ViewGroup is null";
            b.m203(3, "WebAdTracker", this, str);
            b.m201("[ERROR] ", str);
            this.f260 = new o("Target ViewGroup is null");
        }
        if (this.f264 == null) {
            String str2 = "WebAdTracker initialization not successful, No WebView to track inside of ad container";
            b.m203(3, "WebAdTracker", this, str2);
            b.m201("[ERROR] ", str2);
            this.f260 = new o("No WebView to track inside of ad container");
        }
    }

    x(@Nullable WebView webView) {
        super(webView, false, false);
        b.m203(3, "WebAdTracker", this, "Initializing.");
        if (webView == null) {
            String str = "WebAdTracker initialization not successful, WebView is null";
            b.m203(3, "WebAdTracker", this, str);
            b.m201("[ERROR] ", str);
            this.f260 = new o("WebView is null");
            return;
        }
        try {
            super.m213(webView);
            b.m201("[SUCCESS] ", "WebAdTracker created for " + m210());
        } catch (o e) {
            this.f260 = e;
        }
    }

    @Override // com.moat.analytics.mobile.iro.c
    /* JADX INFO: renamed from: ˊ */
    final String mo211() {
        return "WebAdTracker";
    }
}
