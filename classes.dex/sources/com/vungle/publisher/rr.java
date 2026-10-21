package com.vungle.publisher;

import android.webkit.WebView;
import com.vungle.publisher.iz;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.rz;
import javax.inject.Inject;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class rr {

    @Inject
    mv a;

    @Inject
    rb b;

    @Inject
    rz.a c;
    private x d;

    @Inject
    rr() {
    }

    void a(WebView webView, p pVar, boolean z, x xVar) {
        this.d = xVar;
        rz rzVarA = this.c.a(xVar);
        rzVarA.c();
        rzVarA.a(true);
        rzVarA.d();
        rzVarA.a(pVar, z);
        rzVarA.a(se.interstitial);
        try {
            a(webView, rzVarA.b(), true);
        } catch (JSONException e) {
            Logger.e(Logger.AD_TAG, "could not update mraid properties", e);
        }
    }

    public void a(WebView webView) {
        rz rzVarA = this.c.a(this.d);
        rzVarA.d();
        try {
            a(webView, rzVarA.b(), false);
        } catch (JSONException e) {
            Logger.e(Logger.AD_TAG, "could not update mraid dimensions", e);
        }
    }

    public void a(boolean z, WebView webView) {
        rz rzVarA = this.c.a(this.d);
        rzVarA.a(z);
        try {
            a(webView, rzVarA.b(), false);
        } catch (JSONException e) {
            Logger.e(Logger.AD_TAG, "could not update viewable properties", e);
        }
    }

    public void a(x xVar) {
        this.d = xVar;
    }

    public void a(WebView webView, boolean z) {
        this.b.b(webView, "incentivizedDialogResponse", String.valueOf(z));
    }

    public void b(WebView webView) {
        this.b.a(webView, "requestMRAIDClose", new String[0]);
    }

    void a(WebView webView, JSONObject jSONObject, boolean z) {
        this.b.b(webView, "notifyPropertiesChange", jSONObject.toString(), String.valueOf(z));
    }

    void a(WebView webView, iz.b bVar) throws JSONException {
        Logger.d(Logger.AD_TAG, "inject tokens into js and notify ready");
        JSONObject jSONObjectB = bVar.b();
        if (jSONObjectB.length() > 0) {
            String string = jSONObjectB.toString();
            Logger.v(Logger.AD_TAG, "tokens: " + string);
            this.b.b(webView, "notifyReadyEvent", string);
            return;
        }
        this.b.b(webView, "notifyReadyEvent", new String[0]);
    }

    void c(WebView webView) {
        this.b.b(webView, "notifyCommandComplete", new String[0]);
    }

    void a(WebView webView, String str) {
        this.b.a(webView, "document.querySelector('" + str + "').play()");
    }
}
