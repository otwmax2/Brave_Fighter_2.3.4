package com.chartboost.sdk.impl;

import android.R;
import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Handler;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Window;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.CBUtility;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.e;
import com.facebook.ads.AudienceNetworkActivity;
import com.ironsource.sdk.constants.Constants;
import java.io.File;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class be extends com.chartboost.sdk.e {
    int A;
    int B;
    int C;
    int D;
    int E;
    int F;
    boolean G;
    int H;
    private final com.chartboost.sdk.Libraries.f I;
    private final ah J;
    private String K;
    private float L;
    private float M;
    private boolean N;
    private int O;
    final com.chartboost.sdk.Tracking.a j;
    final com.chartboost.sdk.d k;
    final SharedPreferences l;
    public String m;
    String n;
    protected int o;
    long p;
    long q;
    boolean r;
    int s;
    int t;
    int u;
    int v;
    int w;
    int x;
    int y;
    int z;

    public class b extends e.a {
        public bd c;
        public bc d;
        public RelativeLayout e;
        public RelativeLayout f;

        public b(Context context, String str) {
            super(context);
            setFocusable(false);
            com.chartboost.sdk.g gVarA = com.chartboost.sdk.g.a();
            this.e = (RelativeLayout) gVarA.a(new RelativeLayout(context));
            this.f = (RelativeLayout) gVarA.a(new RelativeLayout(context));
            this.c = (bd) gVarA.a(new bd(context));
            com.chartboost.sdk.h.a(context, this.c, be.this.l);
            this.c.setWebViewClient((WebViewClient) gVarA.a(new a()));
            this.d = (bc) gVarA.a(new bc(this.e, this.f, null, this.c, be.this, be.this.a));
            this.c.setWebChromeClient(this.d);
            if (s.a().a(19)) {
                bd bdVar = this.c;
                bd.setWebContentsDebuggingEnabled(true);
            }
            this.c.loadDataWithBaseURL(be.this.n, str, AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING, null);
            this.e.addView(this.c);
            this.c.getSettings().setSupportZoom(false);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            this.e.setLayoutParams(layoutParams);
            this.c.setLayoutParams(layoutParams);
            this.c.setBackgroundColor(0);
            this.f.setVisibility(8);
            this.f.setLayoutParams(layoutParams);
            addView(this.e);
            addView(this.f);
            be.this.p = System.currentTimeMillis();
            if (context instanceof Activity) {
                be.this.F = ((Activity) context).getRequestedOrientation();
            } else {
                be.this.F = -1;
            }
            o.a(this.c, be.this.e.p.s);
            be.this.a.postDelayed(new Runnable() { // from class: com.chartboost.sdk.impl.be.b.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!be.this.r) {
                        CBLogging.a("CBWebViewProtocol", "Webview seems to be taking more time loading the html content, so closing the view.");
                        be.this.a(CBError.CBImpressionError.WEB_VIEW_PAGE_LOAD_TIMEOUT);
                    }
                }
            }, 3000L);
        }

        @Override // com.chartboost.sdk.e.a
        protected void a(int i, int i2) {
        }
    }

    public be(com.chartboost.sdk.Model.c cVar, com.chartboost.sdk.Libraries.f fVar, ah ahVar, SharedPreferences sharedPreferences, com.chartboost.sdk.Tracking.a aVar, Handler handler, com.chartboost.sdk.c cVar2, com.chartboost.sdk.d dVar) {
        super(cVar, handler, cVar2);
        this.m = "UNKNOWN";
        this.K = null;
        this.n = null;
        this.o = 1;
        this.L = 0.0f;
        this.M = 0.0f;
        this.N = false;
        this.p = 0L;
        this.q = 0L;
        this.r = false;
        this.s = 0;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.w = 0;
        this.x = 0;
        this.y = 0;
        this.z = 0;
        this.A = 0;
        this.B = 0;
        this.C = 0;
        this.D = 0;
        this.E = 0;
        this.F = -1;
        this.G = true;
        this.H = -1;
        this.O = 0;
        this.I = fVar;
        this.J = ahVar;
        this.j = aVar;
        this.k = dVar;
        this.l = sharedPreferences;
    }

    @Override // com.chartboost.sdk.e
    protected e.a b(Context context) {
        return new b(context, this.K);
    }

    @Override // com.chartboost.sdk.e
    public boolean a(JSONObject jSONObject) {
        File file = this.I.d().a;
        if (file == null) {
            CBLogging.b("CBWebViewProtocol", "External Storage path is unavailable or media not mounted");
            a(CBError.CBImpressionError.ERROR_LOADING_WEB_VIEW);
            return false;
        }
        this.n = "file://" + file.getAbsolutePath() + "/";
        if (s.a().a(this.e.p.e)) {
            CBLogging.b("CBWebViewProtocol", "Invalid adId being passed in the response");
            a(CBError.CBImpressionError.ERROR_DISPLAYING_VIEW);
            return false;
        }
        String str = this.e.o;
        if (str == null) {
            CBLogging.b("CBWebViewProtocol", "No html data found in memory");
            a(CBError.CBImpressionError.ERROR_LOADING_WEB_VIEW);
            return false;
        }
        this.K = str;
        return true;
    }

    @Override // com.chartboost.sdk.e
    public void h() {
        super.h();
        r();
    }

    public void b(String str) {
        List<String> list;
        if (this.e.p.n != null && !TextUtils.isEmpty(str) && (list = this.e.p.n.get(str)) != null) {
            for (String str2 : list) {
                if (!str2.isEmpty()) {
                    this.J.a(new ad("GET", str2, 2, null));
                    CBLogging.a("CBWebViewProtocol", "###### Sending VAST Tracking Event: " + str2);
                }
            }
        }
    }

    public void c(String str) {
        this.j.a(this.e.a.a(this.e.p.b), this.e.m, this.e.o(), str);
    }

    public void d(String str) {
        String str2 = s.a().a(str) ? "Unknown Webview error" : str;
        this.j.a(this.e.a.a(this.e.p.b), this.e.m, this.e.o(), str2, true);
        CBLogging.b("CBWebViewProtocol", "Webview error occurred closing the webview" + str2);
        a(CBError.CBImpressionError.ERROR_LOADING_WEB_VIEW);
        h();
    }

    public void e(String str) {
        if (s.a().a(str)) {
            str = "Unknown Webview warning message";
        }
        this.j.b(this.e.a.a(this.e.p.b), this.e.m, this.e.o(), str);
        CBLogging.d("CBWebViewProtocol", "Webview warning occurred closing the webview" + str);
    }

    private class a extends WebViewClient {
        private a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView view, String url) {
            super.onPageFinished(view, url);
            be.this.r = true;
            be.this.q = System.currentTimeMillis();
            CBLogging.a("CBWebViewProtocol", "Total web view load response time " + ((be.this.q - be.this.p) / 1000));
            Context context = view.getContext();
            if (context != null) {
                be.this.c(context);
                be.this.d(context);
                be.this.o();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView view, int errorCode, String description, String failingUrl) {
            be.this.a(CBError.CBImpressionError.WEB_VIEW_CLIENT_RECEIVED_ERROR);
            be.this.r = true;
            be.this.k.d(be.this.e);
            CBLogging.a("CBWebViewProtocol", "Webview seems to have some issues loading html, onRecievedError callback triggered");
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String url) {
            return false;
        }
    }

    void o() {
        b bVarE = e();
        if (bVarE == null || !this.r) {
            this.B = this.x;
            this.C = this.y;
            this.D = this.z;
            this.E = this.A;
            return;
        }
        int[] iArr = new int[2];
        bVarE.getLocationOnScreen(iArr);
        int i = iArr[0];
        int i2 = iArr[1] - this.w;
        int width = bVarE.getWidth();
        int height = bVarE.getHeight();
        this.x = i;
        this.y = i2;
        this.z = i + width;
        this.A = height + i2;
        this.B = this.x;
        this.C = this.y;
        this.D = this.z;
        this.E = this.A;
    }

    public String p() {
        return com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a("allowOrientationChange", Boolean.valueOf(this.G)), com.chartboost.sdk.Libraries.e.a("forceOrientation", a(this.H))).toString();
    }

    public String a(int i) {
        switch (i) {
            case -1:
                return Constants.ParametersKeys.ORIENTATION_NONE;
            case 0:
                return Constants.ParametersKeys.ORIENTATION_LANDSCAPE;
            case 1:
                return Constants.ParametersKeys.ORIENTATION_PORTRAIT;
            default:
                return "error";
        }
    }

    public int f(String str) {
        if (str.equals(Constants.ParametersKeys.ORIENTATION_PORTRAIT)) {
            return 1;
        }
        if (str.equals(Constants.ParametersKeys.ORIENTATION_LANDSCAPE)) {
            return 0;
        }
        return -1;
    }

    public void c(JSONObject jSONObject) {
        this.G = jSONObject.optBoolean("allowOrientationChange", this.G);
        this.H = f(jSONObject.optString("forceOrientation", a(this.H)));
        q();
    }

    void q() {
        int i = 1;
        Activity activityB = this.b.b();
        if (activityB != null && !CBUtility.b(activityB)) {
            if (this.H != 1) {
                if (this.H == 0) {
                    i = 0;
                } else if (this.G) {
                    i = -1;
                } else {
                    if (!(activityB.getResources().getConfiguration().orientation == 1)) {
                        i = 0;
                    }
                }
            }
            activityB.setRequestedOrientation(i);
        }
    }

    void r() {
        Activity activityB = this.b.b();
        if (activityB != null && !CBUtility.b(activityB)) {
            if (activityB.getRequestedOrientation() != this.F) {
                activityB.setRequestedOrientation(this.F);
            }
            this.G = true;
            this.H = -1;
        }
    }

    void c(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        this.s = displayMetrics.widthPixels;
        this.t = displayMetrics.heightPixels;
    }

    void d(Context context) {
        if (context instanceof Activity) {
            Window window = ((Activity) context).getWindow();
            Rect rect = new Rect();
            window.getDecorView().getWindowVisibleDisplayFrame(rect);
            this.w = a(window);
            if (this.s == 0 || this.t == 0) {
                c(context);
            }
            int iWidth = rect.width();
            int i = this.t - this.w;
            if (iWidth != this.u || i != this.v) {
                this.u = iWidth;
                this.v = i;
            }
        }
    }

    int a(Window window) {
        return window.findViewById(R.id.content).getTop();
    }

    public String s() {
        return com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a("width", Integer.valueOf(this.u)), com.chartboost.sdk.Libraries.e.a("height", Integer.valueOf(this.v))).toString();
    }

    public String t() {
        return com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a("width", Integer.valueOf(this.s)), com.chartboost.sdk.Libraries.e.a("height", Integer.valueOf(this.t))).toString();
    }

    public String u() {
        o();
        return com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a("x", Integer.valueOf(this.x)), com.chartboost.sdk.Libraries.e.a("y", Integer.valueOf(this.y)), com.chartboost.sdk.Libraries.e.a("width", Integer.valueOf(this.z)), com.chartboost.sdk.Libraries.e.a("height", Integer.valueOf(this.A))).toString();
    }

    public String v() {
        o();
        return com.chartboost.sdk.Libraries.e.a(com.chartboost.sdk.Libraries.e.a("x", Integer.valueOf(this.B)), com.chartboost.sdk.Libraries.e.a("y", Integer.valueOf(this.C)), com.chartboost.sdk.Libraries.e.a("width", Integer.valueOf(this.D)), com.chartboost.sdk.Libraries.e.a("height", Integer.valueOf(this.E))).toString();
    }

    @Override // com.chartboost.sdk.e
    public boolean l() {
        if (this.O != 2 || this.e.a.a != 1) {
            d();
            h();
        }
        return true;
    }

    @Override // com.chartboost.sdk.e
    public void m() {
        super.m();
        final b bVarE = e();
        if (bVarE != null && bVarE.c != null) {
            this.a.post(new Runnable() { // from class: com.chartboost.sdk.impl.be.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (bVarE != null && bVarE.c != null) {
                            CBLogging.a("CBWebViewProtocol", "Calling native to javascript: javascript:Chartboost.EventHandler.handleNativeEvent(\"onForeground\", \"\")");
                            bVarE.c.loadUrl("javascript:Chartboost.EventHandler.handleNativeEvent(\"onForeground\", \"\")");
                        }
                    } catch (Exception e) {
                        com.chartboost.sdk.Tracking.a.a(be.class, "onResume Runnable.run", e);
                    }
                }
            });
            this.j.d(this.m, this.e.o());
        }
    }

    @Override // com.chartboost.sdk.e
    public void n() {
        super.n();
        final b bVarE = e();
        if (bVarE != null && bVarE.c != null) {
            this.a.post(new Runnable() { // from class: com.chartboost.sdk.impl.be.2
                @Override // java.lang.Runnable
                public void run() {
                    if (bVarE != null && bVarE.c != null) {
                        CBLogging.a("CBWebViewProtocol", "Calling native to javascript: javascript:Chartboost.EventHandler.handleNativeEvent(\"onBackground\", \"\")");
                        bVarE.c.loadUrl("javascript:Chartboost.EventHandler.handleNativeEvent(\"onBackground\", \"\")");
                    }
                }
            });
            this.j.e(this.m, this.e.o());
        }
    }

    public void w() {
        if (this.o <= 1) {
            this.e.e();
            this.o++;
        }
    }

    @Override // com.chartboost.sdk.e
    public void d() {
        o.d();
        b bVarE = e();
        if (bVarE != null) {
            if (bVarE.c != null) {
                CBLogging.a("CBWebViewProtocol", "Destroying the webview object and cleaning up the references");
                bVarE.c.destroy();
                bVarE.c = null;
            }
            if (bVarE.d != null) {
                bVarE.d = null;
            }
            if (bVarE.e != null) {
                bVarE.e = null;
            }
            if (bVarE.f != null) {
                bVarE.f = null;
            }
        }
        super.d();
    }

    public void x() {
        this.j.c(this.m, this.e.o());
    }

    public void b(int i) {
        this.O = i;
    }

    @Override // com.chartboost.sdk.e
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public b e() {
        return (b) super.e();
    }

    public void a(float f) {
        this.M = f;
    }

    public void b(float f) {
        this.L = f;
    }

    @Override // com.chartboost.sdk.e
    public float j() {
        return this.L;
    }

    @Override // com.chartboost.sdk.e
    public float k() {
        return this.M;
    }

    public void z() {
        if (this.e.l == 2 && !this.N) {
            this.j.d("", this.e.o());
            this.e.p();
            this.N = true;
            o.c();
        }
    }
}
