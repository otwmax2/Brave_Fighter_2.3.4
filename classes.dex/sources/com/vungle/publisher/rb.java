package com.vungle.publisher;

import android.webkit.WebView;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class rb {
    @Inject
    public rb() {
    }

    void a(WebView webView, String str, String... strArr) {
        a("window.vungle.mraidBridgeExt", webView, str, strArr);
    }

    void b(WebView webView, String str, String... strArr) {
        a("window.vungle.mraidBridge", webView, str, strArr);
    }

    void a(String str, WebView webView, String str2, String... strArr) {
        a(webView, str + "." + str2 + "(" + zk.a(",", strArr) + ")");
    }

    void a(WebView webView, String str) {
        Logger.v(Logger.AD_TAG, "load javascript: " + str);
        webView.loadUrl("javascript:" + str);
    }
}
