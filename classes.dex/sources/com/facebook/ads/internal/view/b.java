package com.facebook.ads.internal.view;

import android.R;
import android.annotation.TargetApi;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.view.a;
import com.facebook.ads.internal.view.a.a;
import com.facebook.ads.internal.view.a.c;
import com.facebook.ads.internal.view.a.f;

/* JADX INFO: loaded from: classes.dex */
@TargetApi(19)
public class b implements a {
    private static final String a = b.class.getSimpleName();
    private final AudienceNetworkActivity b;
    private final com.facebook.ads.internal.view.a.a c;
    private final com.facebook.ads.internal.view.a.f d;
    private final com.facebook.ads.internal.view.a.b e;
    private final com.facebook.ads.internal.m.c f;
    private String h;
    private String i;
    private long j;
    private final AudienceNetworkActivity.BackButtonInterceptor g = new AudienceNetworkActivity.BackButtonInterceptor() { // from class: com.facebook.ads.internal.view.b.1
        @Override // com.facebook.ads.AudienceNetworkActivity.BackButtonInterceptor
        public boolean interceptBackButton() {
            if (!b.this.d.canGoBack()) {
                return false;
            }
            b.this.d.goBack();
            return true;
        }
    };
    private boolean k = true;
    private long l = -1;
    private boolean m = true;

    public b(final AudienceNetworkActivity audienceNetworkActivity, com.facebook.ads.internal.m.c cVar, a.InterfaceC0019a interfaceC0019a) {
        this.b = audienceNetworkActivity;
        this.f = cVar;
        int i = (int) (2.0f * com.facebook.ads.internal.q.a.v.b);
        this.c = new com.facebook.ads.internal.view.a.a(audienceNetworkActivity);
        this.c.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(10);
        this.c.setLayoutParams(layoutParams);
        this.c.setListener(new a.InterfaceC0020a() { // from class: com.facebook.ads.internal.view.b.2
            @Override // com.facebook.ads.internal.view.a.a.InterfaceC0020a
            public void a() {
                audienceNetworkActivity.finish();
            }
        });
        interfaceC0019a.a(this.c);
        this.d = new com.facebook.ads.internal.view.a.f(audienceNetworkActivity);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(3, this.c.getId());
        layoutParams2.addRule(12);
        this.d.setLayoutParams(layoutParams2);
        this.d.setListener(new f.a() { // from class: com.facebook.ads.internal.view.b.3
            @Override // com.facebook.ads.internal.view.a.f.a
            public void a(int i2) {
                if (b.this.k) {
                    b.this.e.setProgress(i2);
                }
            }

            @Override // com.facebook.ads.internal.view.a.f.a
            public void a(String str) {
                b.this.k = true;
                b.this.c.setUrl(str);
            }

            @Override // com.facebook.ads.internal.view.a.f.a
            public void b(String str) {
                b.this.c.setTitle(str);
            }

            @Override // com.facebook.ads.internal.view.a.f.a
            public void c(String str) {
                b.this.e.setProgress(100);
                b.this.k = false;
            }
        });
        interfaceC0019a.a(this.d);
        this.e = new com.facebook.ads.internal.view.a.b(audienceNetworkActivity, null, R.attr.progressBarStyleHorizontal);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, i);
        layoutParams3.addRule(3, this.c.getId());
        this.e.setLayoutParams(layoutParams3);
        this.e.setProgress(0);
        interfaceC0019a.a(this.e);
        audienceNetworkActivity.addBackButtonInterceptor(this.g);
    }

    @Override // com.facebook.ads.internal.view.a
    public void a(Intent intent, Bundle bundle, AudienceNetworkActivity audienceNetworkActivity) {
        if (this.l < 0) {
            this.l = System.currentTimeMillis();
        }
        if (bundle == null) {
            this.h = intent.getStringExtra(AudienceNetworkActivity.BROWSER_URL);
            this.i = intent.getStringExtra(AudienceNetworkActivity.CLIENT_TOKEN);
            this.j = intent.getLongExtra(AudienceNetworkActivity.HANDLER_TIME, -1L);
        } else {
            this.h = bundle.getString(AudienceNetworkActivity.BROWSER_URL);
            this.i = bundle.getString(AudienceNetworkActivity.CLIENT_TOKEN);
            this.j = bundle.getLong(AudienceNetworkActivity.HANDLER_TIME, -1L);
        }
        String str = this.h != null ? this.h : "about:blank";
        this.c.setUrl(str);
        this.d.loadUrl(str);
    }

    @Override // com.facebook.ads.internal.view.a
    public void a(Bundle bundle) {
        bundle.putString(AudienceNetworkActivity.BROWSER_URL, this.h);
    }

    @Override // com.facebook.ads.internal.view.a
    public void i() {
        this.d.onPause();
        if (this.m) {
            this.m = false;
            this.f.f(this.i, new c.a(this.d.getFirstUrl()).a(this.j).b(this.l).c(this.d.getResponseEndMs()).d(this.d.getDomContentLoadedMs()).e(this.d.getScrollReadyMs()).f(this.d.getLoadFinishMs()).g(System.currentTimeMillis()).a().a());
        }
    }

    @Override // com.facebook.ads.internal.view.a
    public void j() {
        this.d.onResume();
    }

    @Override // com.facebook.ads.internal.view.a
    public void onDestroy() {
        this.b.removeBackButtonInterceptor(this.g);
        com.facebook.ads.internal.q.c.b.a(this.d);
        this.d.destroy();
    }

    @Override // com.facebook.ads.internal.view.a
    public void setListener(a.InterfaceC0019a interfaceC0019a) {
    }
}
