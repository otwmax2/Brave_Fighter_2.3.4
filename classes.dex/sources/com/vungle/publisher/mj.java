package com.vungle.publisher;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.facebook.ads.AudienceNetworkActivity;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class mj extends WebView {
    protected qg a;

    protected mj(Context context) {
        super(context);
    }

    public void a(lf lfVar) {
        if (lfVar.a()) {
            Logger.v(Logger.AD_TAG, "loading webview with url: " + lfVar.b());
            loadUrl(lfVar.b());
        } else if (lfVar.c()) {
            Logger.v(Logger.AD_TAG, "loading webview with content: " + lfVar.d());
            loadDataWithBaseURL("http://lol.vungle.com/", lfVar.d(), AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING, null);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public void onConfigurationChanged(Configuration newConfig) {
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a {

        @Inject
        qg a;

        @Inject
        com.vungle.publisher.env.i b;

        @Inject
        SharedPreferences c;

        @Inject
        bz d;

        @Inject
        a() {
        }

        public void a(Context context) {
            if (this.c.getString("defaultUserAgent", null) == null) {
                this.d.a(mk.a(this, context));
            } else {
                this.a.a(new pg());
            }
        }

        /* synthetic */ void b(Context context) {
            this.b.a(new WebView(context));
            this.a.a(new pg());
        }
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    public static abstract class b<W extends mj> {

        @Inject
        Context a;

        @Inject
        qg b;

        protected abstract W a(Context context);

        protected abstract void a(W w);

        protected abstract void a(String str, W w, p pVar, boolean z, x xVar);

        public W a(String str, p pVar, boolean z, x xVar) {
            W w = (W) a(this.a);
            w.a = this.b;
            a(w, str, pVar, z, xVar);
            return w;
        }

        protected void a(W w, String str, p pVar, boolean z, x xVar) {
            WebSettings settings = w.getSettings();
            settings.setBuiltInZoomControls(false);
            settings.setJavaScriptEnabled(true);
            settings.setLoadWithOverviewMode(true);
            settings.setSaveFormData(true);
            settings.setUseWideViewPort(false);
            if (Build.VERSION.SDK_INT >= 17) {
                settings.setMediaPlaybackRequiresUserGesture(false);
            }
            w.setBackgroundColor(Color.argb(1, 0, 0, 0));
            w.setBackgroundResource(0);
            a(str, w, pVar, z, xVar);
            a(w);
            if (Build.VERSION.SDK_INT >= 19) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
        }
    }
}
