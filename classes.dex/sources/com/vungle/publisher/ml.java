package com.vungle.publisher;

import android.webkit.WebView;
import android.webkit.WebViewClient;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class ml extends WebViewClient {
    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String url) {
        super.onPageFinished(webView, url);
        zo.b(webView);
    }
}
