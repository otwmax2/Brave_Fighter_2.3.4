package com.vungle.publisher;

import android.content.Context;
import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.Size;
import android.support.v4.media.session.PlaybackStateCompat;
import com.vungle.publisher.env.r;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.mj;
import com.vungle.publisher.py;
import java.util.Arrays;
import java.util.logging.Level;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class VunglePubBase {
    public static final String VERSION = com.vungle.publisher.env.w.c + "5.3.2";

    @Inject
    c a;

    @Inject
    InitializationEventListener b;

    @Inject
    py.a c;

    @Inject
    qo d;

    @Inject
    ci e;

    @Inject
    protected com.vungle.publisher.env.i f;

    @Inject
    qg g;

    @Inject
    AdConfig h;

    @Inject
    u i;

    @Inject
    com.vungle.publisher.env.o j;

    @Inject
    r k;

    @Inject
    mj.a l;

    @Inject
    com.vungle.publisher.log.g m;
    private boolean n;

    protected VunglePubBase() {
    }

    protected void init(@NonNull Context context, @NonNull String vungleAppId, @Size(min = PlaybackStateCompat.ACTION_STOP) @NonNull String[] placementReferenceIds, @Nullable VungleInitListener initListener) {
        try {
            Logger.d(Logger.VUNGLE_TAG, "init SDK requested with placements: " + zk.a(placementReferenceIds));
            if (this.n && this.k.a.get()) {
                Logger.d(Logger.VUNGLE_TAG, "already initialized");
                this.m.a.log(Level.FINE, "already initialized");
                setInitListener(initListener);
                this.g.a(new qk());
            } else if (this.n && this.k.b.get()) {
                Logger.d(Logger.VUNGLE_TAG, "initialization already in progress, ignoring this request");
                this.m.a.log(Level.FINE, "initialization already in progress, ignoring this request");
            } else {
                a(context, vungleAppId);
                this.m.a();
                setInitListener(initListener);
                if (!a()) {
                    a("device does not meet minimum Android API level for Vungle SDK", (Exception) null);
                    this.m.a.log(Level.SEVERE, "device does not meet minimum Android API level for Vungle SDK");
                } else if (placementReferenceIds == null || placementReferenceIds.length < 1) {
                    a("need one or more placement reference IDs for initialization, got none", (Exception) null);
                    this.m.a.log(Level.SEVERE, "need one or more placement reference IDs for initialization, got none");
                } else if (!zj.b(context)) {
                    a("initialization failed due to required permissions missing", (Exception) null);
                    this.m.a.log(Level.SEVERE, "initialization failed due to required permissions missing");
                } else {
                    this.m.a.log(Level.INFO, VERSION + " init(" + vungleAppId + ")");
                    this.d.b();
                    this.j.b(Arrays.asList(placementReferenceIds));
                    this.b.register();
                    this.j.b(Arrays.asList(placementReferenceIds));
                    a(context);
                }
            }
        } catch (Exception e) {
            a("initialization failed with an exception", e);
        }
    }

    public void setInitListener(VungleInitListener initListener) {
        if (initListener == null) {
            Logger.d(Logger.EVENT_TAG, "ignoring set null init listener");
        } else {
            Logger.d(Logger.EVENT_TAG, "adding init listener " + initListener);
            this.c.a(initListener).register();
        }
    }

    private void a(String str, Exception exc) {
        Logger.e(Logger.VUNGLE_TAG, str, exc);
        if (this.n) {
            this.g.a(new qj(new Throwable(str, exc)));
        }
    }

    private void a(Context context) {
        this.e.a();
        this.f.n();
        this.l.a(context);
    }

    protected boolean a() {
        if (Build.VERSION.SDK_INT >= 14) {
            return true;
        }
        Logger.w(Logger.DEVICE_TAG, "Device Android API level " + Build.VERSION.SDK_INT + " does not meet required minimum 14");
        return false;
    }

    protected void a(Context context, String str) {
        if (Injector.getInstance().d()) {
            Logger.d(Logger.VUNGLE_TAG, "already injected");
            return;
        }
        Injector.getInstance().a(context, str);
        Injector.c().a(this);
        Logger.d(Logger.VUNGLE_TAG, "injection successful");
        this.n = true;
    }

    protected void addEventListeners(VungleAdEventListener... eventListeners) {
        try {
            if (this.n) {
                this.j.a(eventListeners);
            } else {
                Logger.d(Logger.VUNGLE_TAG, "Error in addEventListeners(): VunglePub not injected/initialized");
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error adding eventListeners", e);
        }
    }

    protected void clearAndSetEventListeners(VungleAdEventListener... eventListeners) {
        try {
            if (this.n) {
                this.j.c(eventListeners);
            } else {
                Logger.d(Logger.VUNGLE_TAG, "Error in clearAndSetEventListeners(): VunglePub not injected/initialized");
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error setting event listeners", e);
        }
    }

    protected void clearEventListeners() {
        try {
            if (this.n) {
                this.j.a();
            } else {
                Logger.d(Logger.VUNGLE_TAG, "Error in clearEventListener(): VunglePub not injected/initialized");
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error clearing event listeners", e);
        }
    }

    protected void removeEventListeners(VungleAdEventListener... eventListeners) {
        try {
            if (this.n) {
                this.j.b(eventListeners);
            } else {
                Logger.d(Logger.VUNGLE_TAG, "Error in removeEventListeners(): VunglePub not injected/initialized");
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error removing eventListeners", e);
        }
    }

    protected AdConfig getGlobalAdConfig() {
        AdConfig adConfig = null;
        try {
            if (this.n) {
                adConfig = this.h;
            } else {
                Logger.e(Logger.VUNGLE_TAG, "error in getGlobalAdConfig() - VunglePub not injected");
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error getting globalAdConfig", e);
        }
        return adConfig;
    }

    public void onResume() {
        try {
            if (this.n && this.k.a.get()) {
                this.k.c();
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error onResume()", e);
        }
    }

    public void onPause() {
        try {
            if (this.n && this.k.a.get()) {
                this.k.h();
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error onPause()", e);
        }
    }

    public boolean isInitialized() {
        return this.n && this.k.a.get();
    }

    public boolean isAdPlayable(@NonNull String placementReferenceId) {
        boolean zB = false;
        try {
            Logger.d(Logger.VUNGLE_TAG, "isAdPlayable called for placement: " + placementReferenceId);
            if (this.n && this.k.a.get()) {
                zB = this.a.b(placementReferenceId);
            } else {
                Logger.w(Logger.VUNGLE_TAG, "Wait until successful initialization before calling isAdPlayable()");
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error returning ad playable", e);
        }
        return zB;
    }

    protected void loadAd(@NonNull String placementReferenceId) {
        try {
            Logger.d(Logger.AD_TAG, "VunglePub.loadAd() called for placement: " + placementReferenceId);
            if (this.n) {
                if (this.k.a.get()) {
                    this.a.e(placementReferenceId);
                } else {
                    Logger.w(Logger.VUNGLE_TAG, "Wait until successful initialization before calling loadAd()");
                    this.g.a(new bn(placementReferenceId));
                }
            } else {
                Logger.e(Logger.VUNGLE_TAG, "Call init() before loadAd()");
            }
        } catch (Exception e) {
            Logger.e(Logger.VUNGLE_TAG, "error in loadAd", e);
            if (this.n) {
                this.g.a(new bl(placementReferenceId));
            }
        }
    }

    protected void playAd(@NonNull String placementReferenceId, @Nullable AdConfig adConfig) {
        try {
            Logger.d(Logger.AD_TAG, "playAd() called for placement: " + placementReferenceId);
            if (this.n) {
                if (this.k.a.get()) {
                    this.a.a(placementReferenceId, this.i.a(this.h, adConfig));
                } else {
                    this.g.a(new bo(null, placementReferenceId));
                }
            } else {
                Logger.e(Logger.AD_TAG, "Call init() before playAd()");
            }
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error playing ad", e);
            if (this.n) {
                this.g.a(new bm(null, placementReferenceId));
            }
        }
    }

    protected boolean closeFlexViewAd(String placementReferenceId) {
        return this.a.f(placementReferenceId);
    }
}
