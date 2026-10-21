package com.vungle.publisher;

import com.vungle.publisher.bw;
import com.vungle.publisher.env.r;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Provider;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class pj extends pi {
    VungleAdEventListener a;

    @Inject
    bw b;

    @Inject
    c c;

    @Inject
    r d;
    private int e;
    private boolean f;

    @Inject
    pj() {
    }

    public void onEvent(z adAvailabilityEvent) {
        String strA = adAvailabilityEvent.a();
        boolean zA = this.c.a(strA);
        Logger.d(Logger.EVENT_TAG, "Ad availability notification for placement " + strA + " with isAdAvailable = " + zA);
        a(pk.a(this, strA, zA));
    }

    /* synthetic */ void c(String str, boolean z) {
        this.a.onAdAvailabilityUpdate(str, z);
    }

    public void onEvent(bn notInitializedCancelLoadAdEvent) {
        String str = notInitializedCancelLoadAdEvent.a;
        Logger.d(Logger.EVENT_TAG, "Not initialized: Unable to load ad for placement " + str);
        a(pm.a(this, str));
    }

    /* synthetic */ void b(String str) {
        this.a.onAdAvailabilityUpdate(str, false);
    }

    public void onEvent(bl errorCancelLoadAdEvent) {
        String str = errorCancelLoadAdEvent.a;
        Logger.d(Logger.EVENT_TAG, "Unable to load ad for placement - " + str);
        a(pn.a(this, str));
    }

    /* synthetic */ void a(String str) {
        this.a.onAdAvailabilityUpdate(str, false);
    }

    public void onEvent(av<cn> startPlayAdEvent) {
        Logger.d(Logger.EVENT_TAG, "onAdStart() callback");
        this.e = 0;
        this.f = false;
        a(po.a(this, startPlayAdEvent));
    }

    /* synthetic */ void a(av avVar) {
        this.a.onAdStart(avVar.c());
    }

    public void onEvent(bv<cn> playAdSuccessEvent) {
        a(playAdSuccessEvent.c(), playAdSuccessEvent.a());
    }

    public void onEvent(ax event) {
        this.f = true;
    }

    public void onEvent(bi errorEndPlayEvent) {
        if (errorEndPlayEvent instanceof bs) {
            Logger.d(Logger.EVENT_TAG, "onAdEnd() - activity destroyed");
        } else {
            Logger.d(Logger.EVENT_TAG, "onAdEnd() - error during playback");
        }
        a(errorEndPlayEvent.c(), false);
    }

    void a(String str, boolean z) {
        Logger.d(Logger.EVENT_TAG, "onAdEnd(" + z + ") callback");
        a(pp.a(this, str, z));
    }

    /* synthetic */ void b(String str, boolean z) {
        this.a.onAdEnd(str, this.f, z);
    }

    public void onEvent(bm errorCancelPlayEvent) {
        Logger.d(Logger.EVENT_TAG, "onUnableToPlayAd(error) callback");
        a(pq.a(this, errorCancelPlayEvent));
    }

    /* synthetic */ void a(bm bmVar) {
        this.a.onUnableToPlayAd(bmVar.c(), "Error launching ad");
    }

    public void onEvent(bj alreadyPlayingCancelPlayEvent) {
        Logger.d(Logger.EVENT_TAG, "onUnableToPlayAd(already playing) callback");
        a(pr.a(this, alreadyPlayingCancelPlayEvent));
    }

    /* synthetic */ void a(bj bjVar) {
        this.a.onUnableToPlayAd(bjVar.a(), "Ad already playing");
    }

    public void onEvent(bo notInitializedCancelPlayEvent) {
        Logger.d(Logger.EVENT_TAG, "onUnableToPlayAd(not initialized) callback");
        a(ps.a(this, notInitializedCancelPlayEvent));
    }

    /* synthetic */ void a(bo boVar) {
        this.a.onUnableToPlayAd(boVar.c(), "Vungle Publisher SDK was not successfully initialized - please check the logs");
    }

    public void onEvent(bp throttledCancelPlayEvent) {
        Logger.d(Logger.EVENT_TAG, "onUnableToPlayAd(throttled) callback");
        a(pt.a(this, throttledCancelPlayEvent));
    }

    /* synthetic */ void a(bp bpVar) {
        this.a.onUnableToPlayAd(bpVar.c(), "Only " + bpVar.a() + " of minimum " + bpVar.d() + " seconds elapsed between ads");
    }

    public void onEvent(bq unavailableCancelPlayEvent) {
        Logger.d(Logger.EVENT_TAG, "onUnableToPlayAd(unavailable) callback");
        a(pl.a(this, unavailableCancelPlayEvent));
    }

    /* synthetic */ void a(bq bqVar) {
        this.a.onUnableToPlayAd(bqVar.c(), "No cached or streaming ad available");
    }

    public void onEvent(ai endPlayVideoEvent) {
        int iA = endPlayVideoEvent.a();
        if (iA > this.e) {
            Logger.d(Logger.EVENT_TAG, "new watched millis " + iA);
            this.e = iA;
        } else {
            Logger.d(Logger.EVENT_TAG, "shorter watched millis " + iA);
        }
    }

    private void a(Runnable runnable) {
        this.b.a(runnable, bw.b.clientEvent);
    }

    /* JADX INFO: compiled from: vungle */
    @Singleton
    public static class a {

        @Inject
        Provider<pj> a;

        @Inject
        a() {
        }

        public pj a(VungleAdEventListener vungleAdEventListener) {
            pj pjVar = this.a.get();
            pjVar.a = vungleAdEventListener;
            return pjVar;
        }
    }
}
