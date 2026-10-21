package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.net.Uri;
import android.support.annotation.Nullable;
import android.util.Log;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.internal.j.a;
import com.facebook.ads.internal.view.b.a;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class k extends BannerAdapter {
    private static final String a = k.class.getSimpleName();

    @Nullable
    private a.b b;

    @Nullable
    private com.facebook.ads.internal.view.b.a c;
    private s d;
    private BannerAdapterListener e;
    private Map<String, Object> f;

    @Nullable
    private com.facebook.ads.internal.m.c g;
    private Context h;
    private long i;
    private a.EnumC0013a j;

    private void a(com.facebook.ads.internal.h.d dVar) {
        this.i = 0L;
        this.j = null;
        final r rVarA = r.a((JSONObject) this.f.get("data"));
        if (com.facebook.ads.internal.a.d.a(this.h, rVarA, this.g)) {
            this.e.onBannerError(this, AdError.NO_FILL);
            return;
        }
        this.b = new a.b() { // from class: com.facebook.ads.internal.adapters.k.1
            @Override // com.facebook.ads.internal.view.b.a.b
            public void a() {
                k.this.d.b();
            }

            @Override // com.facebook.ads.internal.view.b.a.b
            public void a(int i) {
                if (i != 0 || k.this.i <= 0 || k.this.j == null) {
                    return;
                }
                com.facebook.ads.internal.j.b.a(com.facebook.ads.internal.j.a.a(k.this.i, k.this.j, rVarA.g()));
                k.this.i = 0L;
                k.this.j = null;
            }

            @Override // com.facebook.ads.internal.view.b.a.b
            public void a(String str, Map<String, String> map) {
                Uri uri = Uri.parse(str);
                if ("fbad".equals(uri.getScheme()) && com.facebook.ads.internal.a.b.a(uri.getAuthority()) && k.this.e != null) {
                    k.this.e.onBannerAdClicked(k.this);
                }
                com.facebook.ads.internal.a.a aVarA = com.facebook.ads.internal.a.b.a(k.this.h, k.this.g, rVarA.c(), uri, map);
                if (aVarA != null) {
                    try {
                        k.this.j = aVarA.a();
                        k.this.i = System.currentTimeMillis();
                        aVarA.b();
                    } catch (Exception e) {
                        Log.e(k.a, "Error executing action", e);
                    }
                }
            }

            @Override // com.facebook.ads.internal.view.b.a.b
            public void b() {
                if (k.this.d != null) {
                    k.this.d.a();
                }
            }
        };
        this.c = new com.facebook.ads.internal.view.b.a(this.h, new WeakReference(this.b), dVar.f());
        this.c.a(dVar.h(), dVar.i());
        this.d = new s(this.h, this.g, this.c, this.c.getViewabilityChecker(), new c() { // from class: com.facebook.ads.internal.adapters.k.2
            @Override // com.facebook.ads.internal.adapters.c
            public void a() {
                if (k.this.e != null) {
                    k.this.e.onBannerLoggingImpression(k.this);
                }
            }
        });
        this.d.a(rVarA);
        this.c.loadDataWithBaseURL(com.facebook.ads.internal.q.c.b.a(), rVarA.d(), AudienceNetworkActivity.WEBVIEW_MIME_TYPE, AudienceNetworkActivity.WEBVIEW_ENCODING, null);
        if (this.e != null) {
            this.e.onBannerAdLoaded(this, this.c);
        }
    }

    @Override // com.facebook.ads.internal.adapters.BannerAdapter
    public void loadBannerAd(Context context, com.facebook.ads.internal.m.c cVar, com.facebook.ads.internal.protocol.e eVar, BannerAdapterListener bannerAdapterListener, Map<String, Object> map) {
        this.h = context;
        this.g = cVar;
        this.e = bannerAdapterListener;
        this.f = map;
        a((com.facebook.ads.internal.h.d) this.f.get("definition"));
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        if (this.c != null) {
            com.facebook.ads.internal.q.c.b.a(this.c);
            this.c.destroy();
            this.c = null;
            this.b = null;
        }
    }
}
