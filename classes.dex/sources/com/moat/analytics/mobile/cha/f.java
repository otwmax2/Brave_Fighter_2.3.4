package com.moat.analytics.mobile.cha;

import android.app.Application;
import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import com.moat.analytics.mobile.cha.a;
import com.moat.analytics.mobile.cha.t;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class f extends MoatAnalytics implements t.b {

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private String f56;

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private MoatOptions f57;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    WeakReference<Context> f58;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    @Nullable
    a f62;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    boolean f60 = false;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    boolean f61 = false;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    boolean f59 = false;

    /* JADX INFO: renamed from: ʻ, reason: contains not printable characters */
    private boolean f55 = false;

    f() {
    }

    @Override // com.moat.analytics.mobile.cha.MoatAnalytics
    public final void start(Application application) {
        start(new MoatOptions(), application);
    }

    @Override // com.moat.analytics.mobile.cha.MoatAnalytics
    @UiThread
    public final void prepareNativeDisplayTracking(String str) {
        this.f56 = str;
        if (t.m165().f183 != t.a.f195) {
            try {
                m51();
            } catch (Exception e) {
                o.m131(e);
            }
        }
    }

    @UiThread
    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private void m51() {
        if (this.f62 == null) {
            this.f62 = new a(c.m36(), a.d.f22);
            this.f62.m19(this.f56);
            a.m15(3, "Analytics", this, "Preparing native display tracking with partner code " + this.f56);
            a.m12("[SUCCESS] ", "Prepared for native display tracking with partner code " + this.f56);
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    final boolean m52() {
        return this.f55;
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final boolean m53() {
        return this.f57 != null && this.f57.disableLocationServices;
    }

    @Override // com.moat.analytics.mobile.cha.t.b
    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    public final void mo54() throws o {
        o.m132();
        n.m117();
        if (this.f56 != null) {
            try {
                m51();
            } catch (Exception e) {
                o.m131(e);
            }
        }
    }

    @Override // com.moat.analytics.mobile.cha.MoatAnalytics
    public final void start(MoatOptions moatOptions, Application application) {
        try {
            if (this.f55) {
                a.m15(3, "Analytics", this, "Moat SDK has already been started.");
                return;
            }
            this.f57 = moatOptions;
            t.m165().m171();
            this.f59 = moatOptions.disableLocationServices;
            if (application == null) {
                throw new o("Moat Analytics SDK didn't start, application was null");
            }
            if (moatOptions.loggingEnabled && r.m147(application.getApplicationContext())) {
                this.f60 = true;
            }
            this.f58 = new WeakReference<>(application.getApplicationContext());
            this.f55 = true;
            this.f61 = moatOptions.autoTrackGMAInterstitials;
            c.m38(application);
            t.m165().m170(this);
            if (!moatOptions.disableAdIdCollection) {
                r.m150(application);
            }
            a.m12("[SUCCESS] ", "Moat Analytics SDK Version 2.4.1 started");
        } catch (Exception e) {
            o.m131(e);
        }
    }
}
