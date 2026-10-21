package com.chartboost.sdk.impl;

import android.os.Handler;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ConsoleMessage;
import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.e;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class bc extends WebChromeClient {
    private View a;
    private ViewGroup b;
    private boolean c = false;
    private FrameLayout d;
    private WebChromeClient.CustomViewCallback e;
    private a f;
    private final be g;
    private final Handler h;

    public interface a {
        void a(boolean z);
    }

    public bc(View view, ViewGroup viewGroup, View view2, bd bdVar, be beVar, Handler handler) {
        this.a = view;
        this.b = viewGroup;
        this.g = beVar;
        this.h = handler;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage cm) {
        Log.d(bc.class.getSimpleName(), "Chartboost Webview:" + cm.message() + " -- From line " + cm.lineNumber() + " of " + cm.sourceId());
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
        try {
            JSONObject jSONObject = new JSONObject(message);
            result.confirm(a(jSONObject.getJSONObject("eventArgs"), jSONObject.getString("eventType")));
        } catch (JSONException e) {
            CBLogging.b("CBWebChromeClient", "Exception caught parsing the function name from js to native");
        }
        return true;
    }

    public String a(JSONObject jSONObject, String str) {
        int i;
        com.chartboost.sdk.Model.a aVar;
        i = 0;
        switch (str) {
            case "getParameters":
                Log.d("CBWebChromeClient", "JavaScript to native " + str + " callback triggered.");
                if (this.g.e != null && (aVar = this.g.e.p) != null) {
                    JSONObject jSONObjectA = com.chartboost.sdk.Libraries.e.a(new e.a[0]);
                    for (Map.Entry<String, String> entry : aVar.d.entrySet()) {
                        com.chartboost.sdk.Libraries.e.a(jSONObjectA, entry.getKey(), entry.getValue());
                    }
                    for (Map.Entry<String, com.chartboost.sdk.Model.b> entry2 : aVar.c.entrySet()) {
                        com.chartboost.sdk.Model.b value = entry2.getValue();
                        com.chartboost.sdk.Libraries.e.a(jSONObjectA, entry2.getKey(), value.a + "/" + value.b);
                    }
                    return jSONObjectA.toString();
                }
                return "{}";
            case "click":
                break;
            case "close":
                i = 1;
                break;
            case "videoCompleted":
                i = 9;
                break;
            case "videoPlaying":
                i = 11;
                break;
            case "videoPaused":
                i = 10;
                break;
            case "videoReplay":
                i = 12;
                break;
            case "currentVideoDuration":
                i = 2;
                break;
            case "totalVideoDuration":
                i = 7;
                break;
            case "show":
                i = 6;
                break;
            case "error":
                Log.d(bd.class.getName(), "Javascript Error occured");
                i = 4;
                break;
            case "warning":
                Log.d(bd.class.getName(), "Javascript warning occurred");
                i = 13;
                break;
            case "debug":
                i = 3;
                break;
            case "tracking":
                i = 8;
                break;
            case "openUrl":
                i = 5;
                break;
            case "getMaxSize":
                Log.d("CBWebChromeClient", "JavaScript to native " + str + " callback triggered.");
                return this.g.s();
            case "getScreenSize":
                Log.d("CBWebChromeClient", "JavaScript to native " + str + " callback triggered.");
                return this.g.t();
            case "getCurrentPosition":
                Log.d("CBWebChromeClient", "JavaScript to native " + str + " callback triggered.");
                return this.g.v();
            case "getDefaultPosition":
                Log.d("CBWebChromeClient", "JavaScript to native " + str + " callback triggered.");
                return this.g.u();
            case "getOrientationProperties":
                Log.d("CBWebChromeClient", "JavaScript to native " + str + " callback triggered.");
                return this.g.p();
            case "setOrientationProperties":
                Log.d("CBWebChromeClient", "JavaScript to native " + str + " callback triggered.");
                i = 14;
                break;
            default:
                Log.e("CBWebChromeClient", "JavaScript to native " + str + " callback not recognized.");
                return "Function name not recognized.";
        }
        Log.d("CBWebChromeClient", "JavaScript to native " + str + " callback triggered.");
        this.h.post(new bf(this, this.g, i, str, jSONObject));
        return "Native function successfully called.";
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback callback) {
        if (view instanceof FrameLayout) {
            this.c = true;
            this.d = (FrameLayout) view;
            this.e = callback;
            this.a.setVisibility(4);
            this.b.addView(this.d, new ViewGroup.LayoutParams(-1, -1));
            this.b.setVisibility(0);
            if (this.f != null) {
                this.f.a(true);
            }
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, int requestedOrientation, WebChromeClient.CustomViewCallback callback) {
        onShowCustomView(view, callback);
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        if (this.c) {
            this.b.setVisibility(4);
            this.b.removeView(this.d);
            this.a.setVisibility(0);
            if (this.e != null && !this.e.getClass().getName().contains(".chromium.")) {
                this.e.onCustomViewHidden();
            }
            this.c = false;
            this.d = null;
            this.e = null;
            if (this.f != null) {
                this.f.a(false);
            }
        }
    }
}
