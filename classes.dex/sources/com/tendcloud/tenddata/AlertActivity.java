package com.tendcloud.tenddata;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.tendcloud.tenddata.game.t;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AlertActivity extends Activity {
    public static final String a = "popup";
    public static final String b = "isinapp";
    public static final String c = "showduration";
    private WebView e;
    private long f;
    private String d = "AlertActivity";
    private boolean g = false;
    private JSONObject h = null;

    class a extends WebViewClient {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            try {
                AlertActivity.this.e.loadUrl("javascript:parseMessage('" + AlertActivity.this.h.toString() + "')");
            } catch (Throwable th) {
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str != null) {
                try {
                    if (str.startsWith("talkingdata://")) {
                        AlertActivity.this.a(str);
                        AlertActivity.this.finish();
                        return true;
                    }
                } catch (Throwable th) {
                }
            }
            return false;
        }
    }

    private RelativeLayout a() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        try {
            relativeLayout.setBackgroundColor(65535);
            relativeLayout.setGravity(17);
            relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-2, -2));
        } catch (Throwable th) {
        }
        return relativeLayout;
    }

    private RelativeLayout a(JSONObject jSONObject) {
        RelativeLayout relativeLayoutA = null;
        try {
            relativeLayoutA = a();
            this.e = new WebView(this);
            relativeLayoutA.addView(this.e, new RelativeLayout.LayoutParams(-1, -1));
            return relativeLayoutA;
        } catch (Throwable th) {
            return relativeLayoutA;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        Intent intent = new Intent(TalkingDataMessageReceiver.c);
        try {
            intent.putExtra("url", str);
            intent.putExtra(b, this.g);
            intent.setPackage(getPackageName());
            intent.putExtra(c, ((int) (System.currentTimeMillis() - this.f)) / 1000);
            intent.putExtra("msg", this.h.toString());
            intent.putExtra("appkey", t.b(this, "td_pefercen_profile", "appkey", (String) null));
            intent.putExtra("sign", this.h.getString("sign"));
        } catch (Throwable th) {
        }
        sendBroadcast(intent);
    }

    @SuppressLint({"JavascriptInterface"})
    private void b(String str) {
        try {
            WebSettings settings = this.e.getSettings();
            settings.setJavaScriptEnabled(true);
            settings.setDefaultTextEncodingName(AudienceNetworkActivity.WEBVIEW_ENCODING);
            settings.setCacheMode(1);
            this.e.setBackgroundColor(0);
            this.e.setWebViewClient(new a());
            this.e.loadUrl(str);
        } catch (Throwable th) {
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() != null) {
            String string = getIntent().getExtras().getString(a);
            this.g = getIntent().getExtras().getBoolean(b);
            if (string == null || string.equals("")) {
                return;
            }
            try {
                this.h = new JSONObject(string);
                this.f = System.currentTimeMillis();
                RelativeLayout relativeLayoutA = a(this.h);
                if (relativeLayoutA != null) {
                    setContentView(relativeLayoutA);
                    b(this.h.getString("url"));
                } else {
                    finish();
                }
            } catch (Throwable th) {
            }
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
    }
}
