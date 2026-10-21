package com.moat.analytics.mobile.iro;

import android.app.Application;
import android.content.Context;
import android.support.annotation.Nullable;
import android.support.annotation.UiThread;
import com.moat.analytics.mobile.iro.b;
import com.moat.analytics.mobile.iro.t;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
final class j extends MoatAnalytics implements t.a {

    /* JADX INFO: renamed from: ʼ, reason: contains not printable characters */
    private String f337;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    @Nullable
    b f338;

    /* JADX INFO: renamed from: ˊॱ, reason: contains not printable characters */
    private MoatOptions f339;

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    WeakReference<Context> f340;

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    boolean f343 = false;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    boolean f341 = false;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    boolean f342 = false;

    /* JADX INFO: renamed from: ᐝ, reason: contains not printable characters */
    private boolean f344 = false;

    j() {
    }

    @Override // com.moat.analytics.mobile.iro.MoatAnalytics
    public final void start(Application application) {
        start(new MoatOptions(), application);
    }

    @Override // com.moat.analytics.mobile.iro.MoatAnalytics
    @UiThread
    public final void prepareNativeDisplayTracking(String str) {
        this.f337 = str;
        if (t.m340().f402 != t.c.f418) {
            try {
                m283();
            } catch (Exception e) {
                o.m311(e);
            }
        }
    }

    @UiThread
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private void m283() {
        if (this.f338 == null) {
            this.f338 = new b(a.m194(), b.a.f252);
            this.f338.m206(this.f337);
            b.m203(3, "Analytics", this, "Preparing native display tracking with partner code " + this.f337);
            b.m201("[SUCCESS] ", "Prepared for native display tracking with partner code " + this.f337);
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    final boolean m284() {
        return this.f344;
    }

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    final boolean m285() {
        return this.f339 != null && this.f339.disableLocationServices;
    }

    @Override // com.moat.analytics.mobile.iro.t.a
    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    public final void mo286() throws o {
        o.m308();
        k.m296();
        if (this.f337 != null) {
            try {
                m283();
            } catch (Exception e) {
                o.m311(e);
            }
        }
    }

    @Override // com.moat.analytics.mobile.iro.MoatAnalytics
    public final void start(MoatOptions moatOptions, Application application) {
        try {
            if (this.f344) {
                b.m203(3, "Analytics", this, "Moat SDK has already been started.");
                return;
            }
            this.f339 = moatOptions;
            t.m340().m349();
            this.f342 = moatOptions.disableLocationServices;
            if (application == null) {
                throw new o("Moat Analytics SDK didn't start, application was null");
            }
            if (moatOptions.loggingEnabled && p.m320(application.getApplicationContext())) {
                this.f343 = true;
            }
            this.f340 = new WeakReference<>(application.getApplicationContext());
            this.f344 = true;
            this.f341 = moatOptions.autoTrackGMAInterstitials;
            a.m192(application);
            t.m340().m350(this);
            if (!moatOptions.disableAdIdCollection) {
                p.m315(application);
            }
            b.m201("[SUCCESS] ", "Moat Analytics SDK Version 2.4.0 started");
        } catch (Exception e) {
            o.m311(e);
        }
    }
}
