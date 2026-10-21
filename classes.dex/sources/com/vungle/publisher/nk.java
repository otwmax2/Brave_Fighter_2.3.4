package com.vungle.publisher;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.WindowInsets;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class nk extends ni<dq> {

    @Inject
    a.C0169a q;

    @Inject
    nk() {
    }

    @Override // com.vungle.publisher.ni, com.vungle.publisher.mg
    public void a(VungleAdActivity vungleAdActivity, dq dqVar, String str, p pVar, Bundle bundle) {
        super.a(vungleAdActivity, dqVar, str, pVar, bundle);
        Logger.d(Logger.AD_TAG, "create mraid ad");
        if (Build.VERSION.SDK_INT >= 24) {
            e();
        }
    }

    @Override // com.vungle.publisher.mg
    protected me<?> a() {
        return this.q.a(this);
    }

    @Override // com.vungle.publisher.ni, com.vungle.publisher.mg
    protected yj<?> b() {
        return this.n.a((dq) this.a);
    }

    @RequiresApi(24)
    private void e() {
        View view = this.m.get();
        if (view != null) {
            view.setOnApplyWindowInsetsListener(nl.a(this, view));
        }
    }

    /* synthetic */ WindowInsets a(View view, View view2, WindowInsets windowInsets) {
        int stableInsetBottom;
        int stableInsetTop;
        int stableInsetLeft;
        int stableInsetRight = 0;
        try {
            if (this.l.get() != null && this.l.get().isInMultiWindowMode() && windowInsets.hasStableInsets()) {
                stableInsetLeft = windowInsets.getStableInsetLeft();
                stableInsetTop = windowInsets.getStableInsetTop();
                stableInsetRight = windowInsets.getStableInsetRight();
                stableInsetBottom = windowInsets.getStableInsetBottom();
            } else {
                stableInsetBottom = 0;
                stableInsetTop = 0;
                stableInsetLeft = 0;
            }
            view.getRootView().setPadding(stableInsetLeft, stableInsetTop, stableInsetRight, stableInsetBottom);
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "Exception setting root view padding to avoid system controls overlap", e);
        }
        return windowInsets;
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a extends me<nk> {
        private boolean b;

        @Override // com.vungle.publisher.me
        public /* bridge */ /* synthetic */ void onEvent(aq aqVar) {
            super.onEvent(aqVar);
        }

        @Override // com.vungle.publisher.me
        public /* bridge */ /* synthetic */ void onEvent(bg bgVar) {
            super.onEvent(bgVar);
        }

        @Inject
        a() {
        }

        public void onEvent(sj event) {
            Logger.v(Logger.EVENT_TAG, "mraidAd.onClose()");
            this.eventBus.a(new si(rx.mraidClose));
            ((nk) this.a).a(true, this.b);
        }

        public void onEvent(so event) {
            ((nk) this.a).a(event.a());
        }

        public void onEvent(sk event) {
            this.eventBus.a(new si(rx.mraidOpen));
            this.b = true;
        }

        public void onEvent(sl event) {
            ((nk) this.a).a(false, this.b);
        }

        public void onEvent(sr event) {
            try {
                ry ryVarA = event.a();
                boolean zB = event.b();
                if (ryVarA == ry.NONE) {
                    if (zB) {
                        ((nk) this.a).a(4);
                    } else {
                        a();
                    }
                } else {
                    Logger.v(Logger.EVENT_TAG, "force mraid orientation: " + ryVarA);
                    ((nk) this.a).a(ryVarA.a());
                }
            } catch (Exception e) {
                Logger.e(Logger.EVENT_TAG, "error setting mraid orientation", e);
            }
        }

        void a() {
            if (Build.VERSION.SDK_INT >= 18) {
                ((nk) this.a).a(14);
            } else {
                ((nk) this.a).a(5);
            }
        }

        /* JADX INFO: renamed from: com.vungle.publisher.nk$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: vungle */
        @Singleton
        public static class C0169a {

            @Inject
            a a;

            @Inject
            C0169a() {
            }

            public a a(nk nkVar) {
                this.a.a = nkVar;
                this.a.b = false;
                return this.a;
            }
        }
    }
}
