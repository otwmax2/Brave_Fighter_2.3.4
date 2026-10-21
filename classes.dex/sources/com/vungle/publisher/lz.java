package com.vungle.publisher;

import android.webkit.WebView;
import com.vungle.publisher.log.Logger;
import java.util.Locale;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class lz extends ml {

    @Inject
    qg a;

    @Inject
    mc b;

    @Inject
    public lz() {
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView v, int code, String desc, String url) {
        Logger.e(Logger.AD_TAG, "failed to load web view: code " + code + ", " + desc);
        this.a.a(new bg());
    }

    @Override // com.vungle.publisher.ml, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String url) {
        Logger.v(Logger.AD_TAG, "webview finished loading. appending config string");
        if (!url.toLowerCase(Locale.US).startsWith("javascript:")) {
            StringBuilder sb = new StringBuilder("javascript:function actionClicked(m,p){ var q = prompt('vungle:'+JSON.stringify({method:m,params:(p?p:null)}));if(q&&typeof q === 'string'){return JSON.parse(q).result;}};function noTapHighlight(){var l=document.getElementsByTagName('*');for(var i=0; i<l.length; i++){l[i].style.webkitTapHighlightColor='rgba(0,0,0,0)';}};noTapHighlight();");
            try {
                sb.append("if (typeof vungleInit == 'function') {vungleInit($webviewConfig$);};".replace("$webviewConfig$", this.b.e()));
            } catch (JSONException e) {
                Logger.e(Logger.AD_TAG, "webview failed to load config object", e);
            }
            String string = sb.toString();
            Logger.v(Logger.AD_TAG, "webview client injecting javascript: " + string);
            webView.loadUrl(string);
            super.onPageFinished(webView, url);
        }
    }
}
