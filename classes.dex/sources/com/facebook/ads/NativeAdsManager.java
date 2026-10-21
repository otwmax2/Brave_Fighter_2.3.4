package com.facebook.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import com.facebook.ads.NativeAd;
import com.facebook.ads.internal.a;
import com.facebook.ads.internal.adapters.ab;
import com.facebook.ads.internal.d.b;
import com.facebook.ads.internal.protocol.d;
import com.facebook.ads.internal.protocol.f;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class NativeAdsManager {
    private static final String a = NativeAdsManager.class.getSimpleName();
    private static final d b = d.ADS;
    private final Context c;
    private final String d;
    private final int e;
    private final List<NativeAd> f;
    private int g;
    private Listener h;
    private a i;
    private boolean j;
    private boolean k;

    public interface Listener {
        void onAdError(AdError adError);

        void onAdsLoaded();
    }

    public NativeAdsManager(Context context, String str, int i) {
        if (context == null) {
            throw new IllegalArgumentException("context can not be null");
        }
        this.c = context;
        this.d = str;
        this.e = Math.max(i, 0);
        this.f = new ArrayList(i);
        this.g = -1;
        this.k = false;
        this.j = false;
        try {
            CookieManager.getInstance();
            if (Build.VERSION.SDK_INT < 21) {
                CookieSyncManager.createInstance(context);
            }
        } catch (Exception e) {
            Log.w(a, "Failed to initialize CookieManager.", e);
        }
    }

    public void disableAutoRefresh() {
        this.j = true;
        if (this.i != null) {
            this.i.c();
        }
    }

    public int getUniqueNativeAdCount() {
        return this.f.size();
    }

    public boolean isLoaded() {
        return this.k;
    }

    public void loadAds() {
        loadAds(EnumSet.of(NativeAd.MediaCacheFlag.NONE));
    }

    public void loadAds(final EnumSet<NativeAd.MediaCacheFlag> enumSet) {
        f fVar = f.NATIVE_UNKNOWN;
        int i = this.e;
        if (this.i != null) {
            this.i.b();
        }
        this.i = new a(this.c, this.d, fVar, null, b, i, enumSet);
        if (this.j) {
            this.i.c();
        }
        this.i.a(new a.InterfaceC0008a() { // from class: com.facebook.ads.NativeAdsManager.1
            @Override // com.facebook.ads.internal.a.InterfaceC0008a
            public void a(com.facebook.ads.internal.protocol.a aVar) {
                if (NativeAdsManager.this.h != null) {
                    NativeAdsManager.this.h.onAdError(AdError.getAdErrorFromWrapper(aVar));
                }
            }

            @Override // com.facebook.ads.internal.a.InterfaceC0008a
            public void a(final List<ab> list) {
                b bVar = new b(NativeAdsManager.this.c);
                for (ab abVar : list) {
                    if (enumSet.contains(NativeAd.MediaCacheFlag.ICON) && abVar.l() != null) {
                        bVar.a(abVar.l().a(), abVar.l().c(), abVar.l().b());
                    }
                    if (enumSet.contains(NativeAd.MediaCacheFlag.IMAGE) && abVar.m() != null) {
                        bVar.a(abVar.m().a(), abVar.m().c(), abVar.m().b());
                    }
                    if (enumSet.contains(NativeAd.MediaCacheFlag.VIDEO) && !TextUtils.isEmpty(abVar.x())) {
                        bVar.a(abVar.x());
                    }
                }
                bVar.a(new com.facebook.ads.internal.d.a() { // from class: com.facebook.ads.NativeAdsManager.1.1
                    private void c() {
                        NativeAdsManager.this.k = true;
                        NativeAdsManager.this.f.clear();
                        NativeAdsManager.this.g = 0;
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            NativeAdsManager.this.f.add(new NativeAd(NativeAdsManager.this.c, (ab) it.next(), null));
                        }
                        if (NativeAdsManager.this.h != null) {
                            NativeAdsManager.this.h.onAdsLoaded();
                        }
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
            }
        });
        this.i.a();
    }

    public NativeAd nextNativeAd() {
        if (this.f.size() == 0) {
            return null;
        }
        int i = this.g;
        this.g = i + 1;
        NativeAd nativeAd = this.f.get(i % this.f.size());
        return i >= this.f.size() ? new NativeAd(nativeAd) : nativeAd;
    }

    public void setListener(Listener listener) {
        this.h = listener;
    }
}
