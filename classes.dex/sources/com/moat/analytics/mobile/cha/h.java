package com.moat.analytics.mobile.cha;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.LocalBroadcastManager;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
final class h {

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static final h f74 = new h();

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private ScheduledFuture<?> f75;

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private ScheduledFuture<?> f77;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private final ScheduledExecutorService f78 = Executors.newScheduledThreadPool(1);

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private final Map<j, String> f76 = new WeakHashMap();

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private final Map<d, String> f79 = new WeakHashMap();

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static h m65() {
        return f74;
    }

    private h() {
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final void m71(final Context context, j jVar) {
        if (jVar != null) {
            this.f76.put(jVar, "");
            if (this.f75 != null && !this.f75.isDone()) {
                return;
            }
            a.m15(3, "JSUpdateLooper", this, "Starting metadata reporting loop");
            this.f75 = this.f78.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.cha.h.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        LocalBroadcastManager.getInstance(context.getApplicationContext()).sendBroadcast(new Intent("UPDATE_METADATA"));
                        if (h.this.f76.isEmpty()) {
                            h.this.f75.cancel(true);
                        }
                    } catch (Exception e) {
                        o.m131(e);
                    }
                }
            }, 0L, 50L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    final void m70(j jVar) {
        if (jVar != null) {
            a.m15(3, "JSUpdateLooper", this, "removeSetupNeededBridge" + jVar.hashCode());
            this.f76.remove(jVar);
        }
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final void m72(final Context context, d dVar) {
        if (dVar != null) {
            a.m15(3, "JSUpdateLooper", this, "addActiveTracker" + dVar.hashCode());
            if (!this.f79.containsKey(dVar)) {
                this.f79.put(dVar, "");
                if (this.f77 != null && !this.f77.isDone()) {
                    return;
                }
                a.m15(3, "JSUpdateLooper", this, "Starting view update loop");
                this.f77 = this.f78.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.cha.h.2
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            LocalBroadcastManager.getInstance(context.getApplicationContext()).sendBroadcast(new Intent("UPDATE_VIEW_INFO"));
                            if (h.this.f79.isEmpty()) {
                                a.m15(3, "JSUpdateLooper", h.this, "No more active trackers");
                                h.this.f77.cancel(true);
                            }
                        } catch (Exception e) {
                            o.m131(e);
                        }
                    }
                }, 0L, t.m165().f179, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final void m73(d dVar) {
        if (dVar != null) {
            a.m15(3, "JSUpdateLooper", this, "removeActiveTracker" + dVar.hashCode());
            this.f79.remove(dVar);
        }
    }
}
