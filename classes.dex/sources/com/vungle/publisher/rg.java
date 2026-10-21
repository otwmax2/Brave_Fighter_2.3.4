package com.vungle.publisher;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.support.v4.view.ViewCompat;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import com.ironsource.sdk.constants.Constants;
import com.vungle.publisher.iz;
import com.vungle.publisher.jn;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.ro;
import com.vungle.publisher.rv;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class rg extends ml {
    iz.b a;

    @Inject
    qg b;

    @Inject
    rr c;

    @Inject
    rv.a d;

    @Inject
    bz e;

    @Inject
    com.vungle.publisher.env.i f;

    @Inject
    jn.a g;
    private p h;
    private boolean i = false;
    private boolean j = true;
    private boolean k = false;
    private boolean l = false;
    private x m;
    private String n;

    @Inject
    rg() {
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
        Logger.e(Logger.AD_TAG, "received error in WebViewClient: " + description, new RuntimeException());
        this.b.a(new sm(Constants.ErrorCodes.GET_APPS_INSTALL_TIME));
        super.onReceivedError(view, errorCode, description, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        Logger.e(Logger.AD_TAG, "received ssl error: " + error.getPrimaryError());
        this.b.a(new sm("101"));
        super.onReceivedSslError(view, handler, error);
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView view, String url, Bitmap favicon) {
        super.onPageStarted(view, url, favicon);
        Logger.v(Logger.AD_TAG, "mraid page started loading: " + url);
    }

    @Override // com.vungle.publisher.ml, android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String url) {
        Logger.v(Logger.AD_TAG, "mraid page finished loading: " + url);
        if (this.j) {
            Logger.d(Logger.AD_TAG, "mraid webview finished loading");
            this.c.a(webView, this.h, this.i, this.m);
        } else {
            if (this.l && !"about:blank".equalsIgnoreCase(url)) {
                Logger.v(Logger.AD_TAG, "clear history");
                this.l = false;
                webView.clearHistory();
            }
            this.b.a(new st(ro.b.visible));
            this.b.a(new sr(ry.NONE, true));
        }
        super.onPageFinished(webView, url);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String url) {
        Logger.v(Logger.AD_TAG, "mraid attempted to navigate to url: " + url);
        try {
            Uri uri = Uri.parse(url);
            String scheme = uri.getScheme();
            String host = uri.getHost();
            if ("mraid".equals(scheme)) {
                try {
                    HashMap map = new HashMap();
                    for (String str : zk.a(uri)) {
                        map.put(str, uri.getQueryParameter(str));
                    }
                    a(webView, this.d.a(host), map);
                } catch (Exception e) {
                    Logger.e(Logger.AD_TAG, "exception while overriding mraid url", e);
                    this.b.a(new sn());
                }
                return true;
            }
            return a(uri);
        } catch (Exception e2) {
            Logger.e(Logger.AD_TAG, "Invalid URL: " + url, e2);
            this.b.a(new sn());
            return true;
        }
    }

    void a(WebView webView, Uri uri) {
        if (!a(uri)) {
            webView.loadUrl("about:blank");
            webView.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            this.j = false;
            this.l = true;
            webView.loadUrl(uri.toString());
            webView.clearHistory();
            this.b.a(new sp());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    boolean a(Uri uri) {
        String scheme = uri.getScheme();
        jn jnVar = (jn) this.g.a(this.n, false);
        if (ru.a.contains(scheme) && ((jnVar == null || !jnVar.w()) && Build.VERSION.SDK_INT < 26)) {
            return false;
        }
        Logger.d(Logger.AD_TAG, "navigating to external location: " + uri.toString());
        this.b.a(new so(uri));
        return true;
    }

    void a(WebView webView) {
        if (!this.k) {
            try {
                this.c.a(webView, this.a);
            } catch (JSONException e) {
                Logger.e(Logger.AD_TAG, "failed to inject JSON tokens", e);
            }
            this.k = true;
            this.b.a(new sq());
        }
    }

    void a(WebView webView, rv rvVar, Map<String, String> map) {
        Logger.d(Logger.AD_TAG, "received MRAID event from js: " + rvVar);
        switch (rvVar) {
            case CLOSE:
                this.b.a(new sj());
                break;
            case PROPERTIES_SET:
                a(webView);
                return;
            case USE_CUSTOM_CLOSE:
                this.b.a(new st(ro.b.valueOf(map.get("sdkCloseButton"))));
                break;
            case USE_CUSTOM_PRIVACY:
                this.b.a(new su(zk.c(map.get("useCustomPrivacy"))));
                break;
            case OPEN:
                a(webView, Uri.parse(map.get("url")));
                break;
            case PRIVACY_PAGE_EVENT:
                this.b.a(new aq(map.get("url")));
                break;
            case SET_ORIENTATION_PROPERTIES:
                this.b.a(new sr(zk.e(map.get("forceOrientation")), zk.c(map.get("allowOrientationChange"))));
                break;
            case TPAT_EVENT:
                this.b.a(new sg(a(map)));
                break;
            case USER_ACTION_EVENT:
            case USER_VALUE_ACTION_EVENT:
                this.b.a(new si(a(map), map.get(Constants.ParametersKeys.VALUE)));
                break;
            case ERROR_EVENT:
                this.b.a(new sm(map.get("code")));
                break;
            case SUCCESSFUL_VIEW_EVENT:
                this.b.a(new ax());
                break;
            case THROW_INCENTIVIZED_DIALOG:
                break;
            case PLAY_HTML_VIDEO_EVENT:
                try {
                    this.e.a(rh.a(this, webView, ut.a(map.get("selector"))), 500L);
                } catch (Exception e) {
                    Logger.e(Logger.AD_TAG, "invalid mraid video selector: " + map.get("selector"), e);
                    this.b.a(new sn());
                }
                break;
            default:
                Logger.w(Logger.AD_TAG, "Unknown MRAID Javascript command: " + rvVar);
                break;
        }
        this.c.c(webView);
    }

    /* synthetic */ void a(WebView webView, String str) {
        this.c.a(webView, str);
    }

    public boolean a() {
        return this.j;
    }

    public boolean b() {
        return this.l;
    }

    private hf a(Map<String, String> map) {
        return new hf(map.get("event"));
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        Provider<rg> a;

        @Inject
        iz.a b;

        @Inject
        a() {
        }

        public rg a(String str, p pVar, boolean z, x xVar) {
            rg rgVar = this.a.get();
            rgVar.m = xVar;
            rgVar.a = this.b.b(str);
            rgVar.h = pVar;
            rgVar.i = z;
            rgVar.n = str;
            return rgVar;
        }
    }
}
