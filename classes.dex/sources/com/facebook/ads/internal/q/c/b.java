package com.facebook.ads.internal.q.c;

import android.annotation.TargetApi;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.internal.settings.AdInternalSettings;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static String a() {
        String urlPrefix = AdInternalSettings.getUrlPrefix();
        return TextUtils.isEmpty(urlPrefix) ? "https://www.facebook.com/" : String.format("https://www.%s.facebook.com", urlPrefix);
    }

    public static void a(WebView webView) {
        webView.loadUrl("about:blank");
        webView.clearCache(true);
    }

    @TargetApi(21)
    public static void b(WebView webView) {
        WebSettings settings = webView.getSettings();
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(0);
        } else {
            try {
                WebSettings.class.getMethod("setMixedContentMode", new Class[0]).invoke(settings, 0);
            } catch (Exception e) {
            }
        }
    }
}
