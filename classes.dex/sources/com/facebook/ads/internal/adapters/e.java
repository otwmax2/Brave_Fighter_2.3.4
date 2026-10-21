package com.facebook.ads.internal.adapters;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.facebook.ads.internal.n.e;
import com.facebook.ads.internal.protocol.AdErrorType;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeAppInstallAdView;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeContentAdView;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class e extends ab implements x {
    private static final String a = e.class.getSimpleName();
    private View b;
    private NativeAd c;
    private ac d;
    private NativeAdView e;
    private View f;
    private boolean g;
    private Uri h;
    private Uri i;
    private String j;
    private String k;
    private String l;
    private String m;

    private void a(View view) {
        ViewGroup viewGroup;
        if (view == null || (viewGroup = (ViewGroup) view.getParent()) == null) {
            return;
        }
        viewGroup.removeView(view);
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String A() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public List<com.facebook.ads.internal.n.e> B() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public int C() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public int D() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public com.facebook.ads.internal.n.c E() {
        return com.facebook.ads.internal.n.c.ADMOB;
    }

    @Override // com.facebook.ads.internal.adapters.x
    public g F() {
        return g.ADMOB;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public void a(int i) {
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public void a(final Context context, ac acVar, com.facebook.ads.internal.m.c cVar, Map<String, Object> map, e.d dVar) {
        com.facebook.ads.internal.q.a.d.a(context, y.a(F()) + " Loading");
        JSONObject jSONObject = (JSONObject) map.get("data");
        String strOptString = jSONObject.optString("ad_unit_id");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("creative_types");
        boolean z = false;
        boolean z2 = false;
        if (jSONArrayOptJSONArray != null) {
            int length = jSONArrayOptJSONArray.length();
            for (int i = 0; i < length; i++) {
                try {
                    String string = jSONArrayOptJSONArray.getString(i);
                    if (string != null) {
                        switch (string) {
                            case "app_install":
                                z = true;
                                break;
                            case "page_post":
                                z2 = true;
                                break;
                        }
                    }
                } catch (JSONException e) {
                    com.facebook.ads.internal.q.a.d.a(context, y.a(F()) + " AN server error");
                    acVar.a(this, com.facebook.ads.internal.protocol.a.a(AdErrorType.SERVER_ERROR, "Server Error"));
                    return;
                }
            }
        }
        if (TextUtils.isEmpty(strOptString) || !(z || z2)) {
            com.facebook.ads.internal.q.a.d.a(context, y.a(F()) + " AN server error");
            acVar.a(this, com.facebook.ads.internal.protocol.a.a(AdErrorType.SERVER_ERROR, "Server Error"));
            return;
        }
        this.d = acVar;
        AdLoader.Builder builder = new AdLoader.Builder(context, strOptString);
        if (z) {
            builder.forAppInstallAd(new NativeAppInstallAd.OnAppInstallAdLoadedListener() { // from class: com.facebook.ads.internal.adapters.e.1
                @Override // com.google.android.gms.ads.formats.NativeAppInstallAd.OnAppInstallAdLoadedListener
                public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
                    e.this.c = nativeAppInstallAd;
                    e.this.g = true;
                    e.this.j = nativeAppInstallAd.getHeadline() != null ? nativeAppInstallAd.getHeadline().toString() : null;
                    e.this.k = nativeAppInstallAd.getBody() != null ? nativeAppInstallAd.getBody().toString() : null;
                    e.this.m = nativeAppInstallAd.getStore() != null ? nativeAppInstallAd.getStore().toString() : null;
                    e.this.l = nativeAppInstallAd.getCallToAction() != null ? nativeAppInstallAd.getCallToAction().toString() : null;
                    List<NativeAd.Image> images = nativeAppInstallAd.getImages();
                    e.this.h = (images == null || images.size() <= 0) ? null : images.get(0).getUri();
                    e.this.i = nativeAppInstallAd.getIcon() != null ? nativeAppInstallAd.getIcon().getUri() : null;
                    if (e.this.d != null) {
                        com.facebook.ads.internal.q.a.d.a(context, y.a(e.this.F()) + " Loaded");
                        e.this.d.a(e.this);
                    }
                }
            });
        }
        if (z2) {
            builder.forContentAd(new NativeContentAd.OnContentAdLoadedListener() { // from class: com.facebook.ads.internal.adapters.e.2
                @Override // com.google.android.gms.ads.formats.NativeContentAd.OnContentAdLoadedListener
                public void onContentAdLoaded(NativeContentAd nativeContentAd) {
                    e.this.c = nativeContentAd;
                    e.this.g = true;
                    e.this.j = nativeContentAd.getHeadline() != null ? nativeContentAd.getHeadline().toString() : null;
                    e.this.k = nativeContentAd.getBody() != null ? nativeContentAd.getBody().toString() : null;
                    e.this.m = nativeContentAd.getAdvertiser() != null ? nativeContentAd.getAdvertiser().toString() : null;
                    e.this.l = nativeContentAd.getCallToAction() != null ? nativeContentAd.getCallToAction().toString() : null;
                    List<NativeAd.Image> images = nativeContentAd.getImages();
                    e.this.h = (images == null || images.size() <= 0) ? null : images.get(0).getUri();
                    e.this.i = nativeContentAd.getLogo() != null ? nativeContentAd.getLogo().getUri() : null;
                    if (e.this.d != null) {
                        com.facebook.ads.internal.q.a.d.a(context, y.a(e.this.F()) + " Loaded");
                        e.this.d.a(e.this);
                    }
                }
            });
        }
        builder.withAdListener(new AdListener() { // from class: com.facebook.ads.internal.adapters.e.3
            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i2) {
                com.facebook.ads.internal.q.a.d.a(context, y.a(e.this.F()) + " Failed with error code: " + i2);
                if (e.this.d != null) {
                    e.this.d.a(e.this, new com.facebook.ads.internal.protocol.a(AdErrorType.MEDIATION_ERROR.getErrorCode(), "AdMob error code: " + i2));
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                if (e.this.d != null) {
                    e.this.d.c(e.this);
                }
            }
        }).withNativeAdOptions(new NativeAdOptions.Builder().setReturnUrlsForImageAssets(true).build()).build().loadAd(new AdRequest.Builder().build());
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public void a(View view, List<View> list) {
        this.b = view;
        if (!c_() || view == null) {
            return;
        }
        ViewGroup viewGroup = null;
        int iIndexOfChild = -1;
        do {
            int i = iIndexOfChild;
            ViewGroup viewGroup2 = viewGroup;
            ViewGroup viewGroup3 = (ViewGroup) view.getParent();
            if (viewGroup3 == null) {
                Log.e(a, "View must have valid parent for AdMob registration, skipping registration. Impressions and clicks will not be logged.");
                return;
            }
            if (viewGroup3 instanceof NativeAdView) {
                ViewGroup viewGroup4 = (ViewGroup) viewGroup3.getParent();
                if (viewGroup4 == null) {
                    Log.e(a, "View must have valid parent for AdMob registration, skipping registration. Impressions and clicks will not be logged.");
                    return;
                }
                int iIndexOfChild2 = viewGroup4.indexOfChild(viewGroup3);
                viewGroup3.removeView(view);
                viewGroup4.removeView(viewGroup3);
                viewGroup4.addView(view, iIndexOfChild2);
                iIndexOfChild = i;
                viewGroup = viewGroup2;
            } else {
                viewGroup = viewGroup3;
                iIndexOfChild = viewGroup3.indexOfChild(view);
            }
        } while (viewGroup == null);
        NativeAdView nativeContentAdView = this.c instanceof NativeContentAd ? new NativeContentAdView(view.getContext()) : new NativeAppInstallAdView(view.getContext());
        if (view instanceof ViewGroup) {
            nativeContentAdView.setLayoutParams(view.getLayoutParams());
        }
        a(view);
        nativeContentAdView.addView(view);
        viewGroup.removeView(nativeContentAdView);
        viewGroup.addView(nativeContentAdView, iIndexOfChild);
        this.e = nativeContentAdView;
        this.e.setNativeAd(this.c);
        this.f = new View(view.getContext());
        this.e.addView(this.f);
        this.f.setVisibility(8);
        if (this.e instanceof NativeContentAdView) {
            ((NativeContentAdView) this.e).setCallToActionView(this.f);
        } else if (this.e instanceof NativeAppInstallAdView) {
            ((NativeAppInstallAdView) this.e).setCallToActionView(this.f);
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.facebook.ads.internal.adapters.e.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                e.this.f.performClick();
            }
        };
        Iterator<View> it = list.iterator();
        while (it.hasNext()) {
            it.next().setOnClickListener(onClickListener);
        }
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public void a(ac acVar) {
        this.d = acVar;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public void a(Map<String, String> map) {
        if (!c_() || this.d == null) {
            return;
        }
        this.d.b(this);
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public void b(Map<String, String> map) {
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public void b_() {
        ViewGroup viewGroup;
        a(this.f);
        this.f = null;
        if (this.b != null) {
            ViewGroup viewGroup2 = (ViewGroup) this.b.getParent();
            if (((viewGroup2 instanceof NativeContentAdView) || (viewGroup2 instanceof NativeAppInstallAdView)) && (viewGroup = (ViewGroup) viewGroup2.getParent()) != null) {
                int iIndexOfChild = viewGroup.indexOfChild(viewGroup2);
                a(this.b);
                a(viewGroup2);
                viewGroup.addView(this.b, iIndexOfChild);
            }
            this.b = null;
        }
        this.e = null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String c() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public boolean c_() {
        return this.g && this.c != null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public boolean d() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public boolean e() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public boolean f() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public boolean g() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public boolean h() {
        return false;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public int i() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public int j() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public int k() {
        return 0;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public com.facebook.ads.internal.n.f l() {
        if (!c_() || this.i == null) {
            return null;
        }
        return new com.facebook.ads.internal.n.f(this.i.toString(), 50, 50);
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public com.facebook.ads.internal.n.f m() {
        if (!c_() || this.h == null) {
            return null;
        }
        return new com.facebook.ads.internal.n.f(this.h.toString(), 1200, IronSourceError.BANNER_INIT_FAILED);
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public com.facebook.ads.internal.n.h n() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String o() {
        return this.j;
    }

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public void onDestroy() {
        b_();
        this.d = null;
        this.c = null;
        this.g = false;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String p() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String q() {
        return this.k;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String r() {
        return this.l;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String s() {
        return this.m;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public com.facebook.ads.internal.n.g t() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public com.facebook.ads.internal.n.f u() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String v() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String w() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String x() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public String y() {
        return null;
    }

    @Override // com.facebook.ads.internal.adapters.ab
    public com.facebook.ads.internal.n.j z() {
        return com.facebook.ads.internal.n.j.DEFAULT;
    }
}
