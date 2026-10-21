package com.moat.analytics.mobile.iro;

import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.iro.NoOp;
import com.moat.analytics.mobile.iro.base.functional.Optional;
import com.moat.analytics.mobile.iro.s;
import java.lang.ref.WeakReference;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
final class n extends MoatFactory {
    n() throws o {
        if (!((j) j.getInstance()).m284()) {
            String str = "Failed to initialize MoatFactory, SDK was not started";
            b.m203(3, "Factory", this, str);
            b.m201("[ERROR] ", str);
            throw new o("Failed to initialize MoatFactory");
        }
    }

    @Override // com.moat.analytics.mobile.iro.MoatFactory
    public final WebAdTracker createWebAdTracker(@NonNull WebView webView) {
        try {
            final WeakReference weakReference = new WeakReference(webView);
            return (WebAdTracker) s.m331(new s.a<WebAdTracker>() { // from class: com.moat.analytics.mobile.iro.n.3
                @Override // com.moat.analytics.mobile.iro.s.a
                /* JADX INFO: renamed from: ˏ */
                public final Optional<WebAdTracker> mo190() {
                    WebView webView2 = (WebView) weakReference.get();
                    String str = "Attempting to create WebAdTracker for " + b.m205(webView2);
                    b.m203(3, "Factory", this, str);
                    b.m201("[INFO] ", str);
                    return Optional.of(new x(webView2));
                }
            }, WebAdTracker.class);
        } catch (Exception e) {
            o.m311(e);
            return new NoOp.b();
        }
    }

    @Override // com.moat.analytics.mobile.iro.MoatFactory
    public final WebAdTracker createWebAdTracker(@NonNull ViewGroup viewGroup) {
        try {
            final WeakReference weakReference = new WeakReference(viewGroup);
            return (WebAdTracker) s.m331(new s.a<WebAdTracker>() { // from class: com.moat.analytics.mobile.iro.n.4
                @Override // com.moat.analytics.mobile.iro.s.a
                /* JADX INFO: renamed from: ˏ */
                public final Optional<WebAdTracker> mo190() throws o {
                    ViewGroup viewGroup2 = (ViewGroup) weakReference.get();
                    String str = "Attempting to create WebAdTracker for adContainer " + b.m205(viewGroup2);
                    b.m203(3, "Factory", this, str);
                    b.m201("[INFO] ", str);
                    return Optional.of(new x(viewGroup2));
                }
            }, WebAdTracker.class);
        } catch (Exception e) {
            o.m311(e);
            return new NoOp.b();
        }
    }

    @Override // com.moat.analytics.mobile.iro.MoatFactory
    public final NativeDisplayTracker createNativeDisplayTracker(@NonNull View view, @NonNull final Map<String, String> map) {
        try {
            final WeakReference weakReference = new WeakReference(view);
            return (NativeDisplayTracker) s.m331(new s.a<NativeDisplayTracker>() { // from class: com.moat.analytics.mobile.iro.n.5
                @Override // com.moat.analytics.mobile.iro.s.a
                /* JADX INFO: renamed from: ˏ */
                public final Optional<NativeDisplayTracker> mo190() {
                    View view2 = (View) weakReference.get();
                    String str = "Attempting to create NativeDisplayTracker for " + b.m205(view2);
                    b.m203(3, "Factory", this, str);
                    b.m201("[INFO] ", str);
                    return Optional.of(new r(view2, map));
                }
            }, NativeDisplayTracker.class);
        } catch (Exception e) {
            o.m311(e);
            return new NoOp.a();
        }
    }

    @Override // com.moat.analytics.mobile.iro.MoatFactory
    public final NativeVideoTracker createNativeVideoTracker(final String str) {
        try {
            return (NativeVideoTracker) s.m331(new s.a<NativeVideoTracker>() { // from class: com.moat.analytics.mobile.iro.n.2
                @Override // com.moat.analytics.mobile.iro.s.a
                /* JADX INFO: renamed from: ˏ */
                public final Optional<NativeVideoTracker> mo190() {
                    b.m203(3, "Factory", this, "Attempting to create NativeVideoTracker");
                    b.m201("[INFO] ", "Attempting to create NativeVideoTracker");
                    return Optional.of(new q(str));
                }
            }, NativeVideoTracker.class);
        } catch (Exception e) {
            o.m311(e);
            return new NoOp.c();
        }
    }

    @Override // com.moat.analytics.mobile.iro.MoatFactory
    public final <T> T createCustomTracker(m<T> mVar) {
        try {
            return mVar.create();
        } catch (Exception e) {
            o.m311(e);
            return mVar.createNoOp();
        }
    }
}
