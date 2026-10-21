package com.facebook.ads.internal.adapters;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.WindowManager;
import com.facebook.ads.AdError;
import com.facebook.ads.AudienceNetworkActivity;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InterstitialAdActivity;
import com.facebook.ads.internal.settings.a;
import com.facebook.internal.AnalyticsEvents;
import java.util.EnumSet;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class m extends InterstitialAdapter {
    private static final ConcurrentMap<String, com.facebook.ads.internal.view.a> a = new ConcurrentHashMap();
    private String c;
    private long d;
    private Context e;
    private w f;
    private InterstitialAdapterListener g;
    private r i;
    private v k;
    private a.EnumC0018a l;
    private final String b = UUID.randomUUID().toString();
    private boolean h = false;
    private a j = a.UNSPECIFIED;

    public enum a {
        UNSPECIFIED,
        VERTICAL,
        HORIZONTAL;

        public static a a(int i) {
            return i == 0 ? UNSPECIFIED : i == 2 ? HORIZONTAL : VERTICAL;
        }
    }

    private int a() {
        int rotation = ((WindowManager) this.e.getSystemService("window")).getDefaultDisplay().getRotation();
        if (this.j == a.UNSPECIFIED) {
            return -1;
        }
        if (this.j == a.HORIZONTAL) {
            switch (rotation) {
                case 2:
                case 3:
                    return 8;
                default:
                    return 0;
            }
        }
        switch (rotation) {
            case 2:
                return 9;
            default:
                return 1;
        }
    }

    public static com.facebook.ads.internal.view.a a(String str) {
        return a.get(str);
    }

    public static void a(com.facebook.ads.internal.view.a aVar) {
        for (Map.Entry<String, com.facebook.ads.internal.view.a> entry : a.entrySet()) {
            if (entry.getValue() == aVar) {
                a.remove(entry.getKey());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(String str, com.facebook.ads.internal.view.a aVar) {
        a.put(str, aVar);
    }

    @Override // com.facebook.ads.internal.adapters.InterstitialAdapter
    public void loadInterstitialAd(final Context context, InterstitialAdapterListener interstitialAdapterListener, Map<String, Object> map, final com.facebook.ads.internal.m.c cVar, final EnumSet<CacheFlag> enumSet) {
        this.e = context;
        this.g = interstitialAdapterListener;
        this.c = (String) map.get("placementId");
        this.d = ((Long) map.get(AudienceNetworkActivity.REQUEST_TIME)).longValue();
        JSONObject jSONObject = (JSONObject) map.get("data");
        if (jSONObject.has("markup")) {
            this.l = a.EnumC0018a.INTERSTITIAL_WEB_VIEW;
            this.i = r.a(jSONObject);
            if (com.facebook.ads.internal.a.d.a(context, this.i, cVar)) {
                interstitialAdapterListener.onInterstitialError(this, AdError.NO_FILL);
                return;
            }
            this.f = new w(context, this.b, this, this.g);
            this.f.a();
            Map<String, String> mapF = this.i.f();
            if (mapF.containsKey("orientation")) {
                this.j = a.a(Integer.parseInt(mapF.get("orientation")));
            }
            this.h = true;
            if (this.g != null) {
                this.g.onInterstitialAdLoaded(this);
                return;
            }
            return;
        }
        if (jSONObject.has(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
            this.l = a.EnumC0018a.INTERSTITIAL_NATIVE_VIDEO;
            this.f = new w(context, this.b, this, this.g);
            this.f.a();
            final n nVar = new n();
            nVar.a(context, new com.facebook.ads.a.a() { // from class: com.facebook.ads.internal.adapters.m.1
                @Override // com.facebook.ads.a.a
                public void a(u uVar) {
                    m.this.h = true;
                    if (m.this.g == null) {
                        return;
                    }
                    m.this.g.onInterstitialAdLoaded(m.this);
                }

                @Override // com.facebook.ads.a.a
                public void a(u uVar, View view) {
                    m.this.j = nVar.k();
                    m.b(m.this.b, nVar);
                }

                @Override // com.facebook.ads.a.a
                public void a(u uVar, AdError adError) {
                    nVar.l();
                    m.this.g.onInterstitialError(m.this, adError);
                }

                @Override // com.facebook.ads.a.a
                public void b(u uVar) {
                    m.this.g.onInterstitialAdClicked(m.this, "", true);
                }

                @Override // com.facebook.ads.a.a
                public void c(u uVar) {
                    m.this.g.onInterstitialLoggingImpression(m.this);
                }

                @Override // com.facebook.ads.a.a
                public void d(u uVar) {
                }
            }, map, cVar, enumSet);
            return;
        }
        this.k = v.a(jSONObject, context);
        if (this.k.d().size() == 0) {
            this.g.onInterstitialError(this, AdError.NO_FILL);
        }
        this.f = new w(context, this.b, this, this.g);
        this.f.a();
        if (jSONObject.has("carousel")) {
            this.l = a.EnumC0018a.INTERSTITIAL_NATIVE_CAROUSEL;
            b(this.b, new com.facebook.ads.internal.view.j(context, cVar));
            com.facebook.ads.internal.d.b bVar = new com.facebook.ads.internal.d.b(context);
            bVar.a(this.k.c(), -1, -1);
            List<d> listD = this.k.d();
            for (int i = 0; i < listD.size(); i++) {
                bVar.a(listD.get(i).f(), listD.get(i).h(), listD.get(i).g());
            }
            bVar.a(new com.facebook.ads.internal.d.a() { // from class: com.facebook.ads.internal.adapters.m.2
                private void c() {
                    m.this.h = true;
                    m.this.g.onInterstitialAdLoaded(m.this);
                }

                @Override // com.facebook.ads.internal.d.a
                public void a() {
                    c();
                }

                @Override // com.facebook.ads.internal.d.a
                public void b() {
                    c();
                }
            });
            this.h = true;
            this.g.onInterstitialAdLoaded(this);
            return;
        }
        if (!jSONObject.has("video_url")) {
            this.l = a.EnumC0018a.INTERSTITIAL_NATIVE_IMAGE;
            com.facebook.ads.internal.d.b bVar2 = new com.facebook.ads.internal.d.b(context);
            bVar2.a(this.k.d().get(0).f(), this.k.d().get(0).h(), this.k.d().get(0).g());
            bVar2.a(this.k.c(), -1, -1);
            bVar2.a(new com.facebook.ads.internal.d.a() { // from class: com.facebook.ads.internal.adapters.m.4
                private void c() {
                    m.b(m.this.b, new com.facebook.ads.internal.view.k(context, m.this.k, cVar));
                    m.this.h = true;
                    m.this.g.onInterstitialAdLoaded(m.this);
                }

                @Override // com.facebook.ads.internal.d.a
                public void a() {
                    c();
                }

                @Override // com.facebook.ads.internal.d.a
                public void b() {
                    c();
                }
            });
            return;
        }
        this.l = a.EnumC0018a.INTERSTITIAL_NATIVE_VIDEO;
        final com.facebook.ads.internal.d.b bVar3 = new com.facebook.ads.internal.d.b(context);
        bVar3.a(this.k.d().get(0).f(), this.k.d().get(0).h(), this.k.d().get(0).g());
        bVar3.a(this.k.c(), -1, -1);
        if (enumSet.contains(CacheFlag.VIDEO)) {
            bVar3.a(this.k.d().get(0).i());
        }
        bVar3.a(new com.facebook.ads.internal.d.a() { // from class: com.facebook.ads.internal.adapters.m.3
            private void a(boolean z) {
                m.b(m.this.b, new com.facebook.ads.internal.view.l(context, cVar, m.this.k, z ? bVar3 : null));
                m.this.h = true;
                m.this.g.onInterstitialAdLoaded(m.this);
            }

            @Override // com.facebook.ads.internal.d.a
            public void a() {
                a(enumSet.contains(CacheFlag.VIDEO));
            }

            @Override // com.facebook.ads.internal.d.a
            public void b() {
                a(false);
            }
        });
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        if (this.f != null) {
            this.f.b();
        }
    }

    @Override // com.facebook.ads.internal.adapters.InterstitialAdapter
    public boolean show() {
        if (!this.h) {
            if (this.g != null) {
                this.g.onInterstitialError(this, AdError.INTERNAL_ERROR);
            }
            return false;
        }
        Intent intent = new Intent(this.e, (Class<?>) AudienceNetworkActivity.class);
        intent.putExtra(AudienceNetworkActivity.PREDEFINED_ORIENTATION_KEY, a());
        intent.putExtra(AudienceNetworkActivity.AUDIENCE_NETWORK_UNIQUE_ID_EXTRA, this.b);
        intent.putExtra("placementId", this.c);
        intent.putExtra(AudienceNetworkActivity.REQUEST_TIME, this.d);
        intent.putExtra(AudienceNetworkActivity.VIEW_TYPE, this.l);
        if (this.k != null) {
            intent.putExtra("ad_data_bundle", this.k);
        } else if (this.i != null) {
            this.i.a(intent);
        }
        intent.addFlags(268435456);
        try {
            this.e.startActivity(intent);
        } catch (ActivityNotFoundException e) {
            intent.setClass(this.e, InterstitialAdActivity.class);
            this.e.startActivity(intent);
        }
        return true;
    }
}
