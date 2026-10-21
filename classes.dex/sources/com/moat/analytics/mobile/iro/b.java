package com.moat.analytics.mobile.iro;

import android.annotation.SuppressLint;
import android.app.Application;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.ads.AudienceNetworkActivity;
import com.moat.analytics.mobile.iro.f;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
final class b {

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    final String f244;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    f f245;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private final int f246;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    WebView f247;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private boolean f248;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static /* synthetic */ boolean m200(b bVar) {
        bVar.f248 = true;
        return true;
    }

    /* JADX WARN: $VALUES field not found */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    static final class a {

        /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
        public static final int f252 = 1;

        /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
        public static final int f251 = 2;

        static {
            int[] iArr = {1, 2};
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    b(Application application, int i) {
        this.f246 = i;
        this.f248 = false;
        this.f244 = String.format(Locale.ROOT, "_moatTracker%d", Integer.valueOf((int) (Math.random() * 1.0E8d)));
        this.f247 = new WebView(application);
        WebSettings settings = this.f247.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setAllowContentAccess(false);
        settings.setAllowFileAccess(false);
        settings.setDatabaseEnabled(false);
        settings.setDomStorageEnabled(false);
        settings.setGeolocationEnabled(false);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setSaveFormData(false);
        if (Build.VERSION.SDK_INT >= 16) {
            settings.setAllowFileAccessFromFileURLs(false);
            settings.setAllowUniversalAccessFromFileURLs(false);
        }
        if (Build.VERSION.SDK_INT >= 21) {
            settings.setMixedContentMode(1);
        }
        try {
            this.f245 = new f(this.f247, i == a.f251 ? f.b.f303 : f.b.f304);
        } catch (o e) {
            o.m311(e);
        }
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final void m206(String str) {
        if (this.f246 == a.f252) {
            this.f247.setWebViewClient(new WebViewClient() { // from class: com.moat.analytics.mobile.iro.b.5
                @Override // android.webkit.WebViewClient
                public final void onPageFinished(WebView webView, String str2) {
                    if (!b.this.f248) {
                        try {
                            b.m200(b.this);
                            b.this.f245.m256();
                        } catch (Exception e) {
                            o.m311(e);
                        }
                    }
                }
            });
            this.f247.loadData("<!DOCTYPE html>\n<html>\n<head lang=\"en\">\n   <meta charset=\"UTF-8\">\n   <title></title>\n</head>\n<body style=\"margin:0;padding:0;\">\n    <script src=\"https://z.moatads.com/" + str + "/moatad.js\" type=\"text/javascript\"></script>\n</body>\n</html>", AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING);
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    final void m207(String str, Map<String, String> map, Integer num, Integer num2, Integer num3) {
        if (this.f246 == a.f251) {
            this.f247.setWebViewClient(new WebViewClient() { // from class: com.moat.analytics.mobile.iro.b.1
                @Override // android.webkit.WebViewClient
                public final void onPageFinished(WebView webView, String str2) {
                    if (!b.this.f248) {
                        try {
                            b.m200(b.this);
                            b.this.f245.m256();
                            b.this.f245.m258(b.this.f244);
                        } catch (Exception e) {
                            o.m311(e);
                        }
                    }
                }
            });
            JSONObject jSONObject = new JSONObject(map);
            this.f247.loadData(String.format(Locale.ROOT, "<html><head></head><body><div id=\"%s\" style=\"width: %dpx; height: %dpx;\"></div><script>(function initMoatTracking(apiname, pcode, ids, duration) {var events = [];window[pcode + '_moatElToTrack'] = document.getElementById('%s');var moatapi = {'dropTime':%d,'adData': {'ids': ids, 'duration': duration, 'url': 'n/a'},'dispatchEvent': function(ev) {if (this.sendEvent) {if (events) { events.push(ev); ev = events; events = false; }this.sendEvent(ev);} else {events.push(ev);}},'dispatchMany': function(evs){for (var i=0, l=evs.length; i<l; i++) {this.dispatchEvent(evs[i]);}}};Object.defineProperty(window, apiname, {'value': moatapi});var s = document.createElement('script');s.src = 'https://z.moatads.com/' + pcode + '/moatvideo.js?' + apiname + '#' + apiname;document.body.appendChild(s);})('%s', '%s', %s, %s);</script></body></html>", "mianahwvc", num, num2, "mianahwvc", Long.valueOf(System.currentTimeMillis()), this.f244, str, jSONObject.toString(), num3), AudienceNetworkActivity.WEBVIEW_MIME_TYPE, null);
        }
    }

    b() {
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static void m203(int i, String str, Object obj, String str2) {
        if (t.m340().f404) {
            if (obj == null) {
                Log.println(i, "Moat" + str, String.format("message = %s", str2));
            } else {
                Log.println(i, "Moat" + str, String.format("id = %s, message = %s", Integer.valueOf(obj.hashCode()), str2));
            }
        }
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    static void m204(String str, Object obj, String str2) {
        if (!t.m340().f405) {
            return;
        }
        String str3 = "Moat" + str;
        Object[] objArr = new Object[2];
        objArr[0] = obj == null ? "null" : Integer.valueOf(obj.hashCode());
        objArr[1] = str2;
        Log.println(2, str3, String.format("id = %s, message = %s", objArr));
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static void m199(String str, Object obj, String str2, Exception exc) {
        if (t.m340().f404) {
            Log.e("Moat" + str, String.format("id = %s, message = %s", Integer.valueOf(obj.hashCode()), str2), exc);
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    static void m201(String str, String str2) {
        if (!t.m340().f404 && ((j) MoatAnalytics.getInstance()).f343) {
            int i = 2;
            if (str.equals("[ERROR] ")) {
                i = 6;
            }
            Log.println(i, "MoatAnalytics", str + str2);
        }
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    static String m205(View view) {
        return view != null ? view.getClass().getSimpleName() + "@" + view.hashCode() : "null";
    }
}
