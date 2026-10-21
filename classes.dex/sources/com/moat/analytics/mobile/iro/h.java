package com.moat.analytics.mobile.iro;

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

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static final h f318 = new h();

    /* JADX INFO: renamed from: ʽ, reason: contains not printable characters */
    private ScheduledFuture<?> f319;

    /* JADX INFO: renamed from: ˏ, reason: contains not printable characters */
    private ScheduledFuture<?> f322;

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private final ScheduledExecutorService f320 = Executors.newScheduledThreadPool(1);

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private final Map<f, String> f321 = new WeakHashMap();

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private final Map<c, String> f323 = new WeakHashMap();

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static h m265() {
        return f318;
    }

    private h() {
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    final void m270(final Context context, f fVar) {
        if (fVar != null) {
            this.f321.put(fVar, "");
            if (this.f319 != null && !this.f319.isDone()) {
                return;
            }
            b.m203(3, "JSUpdateLooper", this, "Starting metadata reporting loop");
            this.f319 = this.f320.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.iro.h.1
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        LocalBroadcastManager.getInstance(context.getApplicationContext()).sendBroadcast(new Intent("UPDATE_METADATA"));
                        if (h.this.f321.isEmpty()) {
                            h.this.f319.cancel(true);
                        }
                    } catch (Exception e) {
                        o.m311(e);
                    }
                }
            }, 0L, 50L, TimeUnit.MILLISECONDS);
        }
    }

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    final void m271(f fVar) {
        if (fVar != null) {
            b.m203(3, "JSUpdateLooper", this, "removeSetupNeededBridge" + fVar.hashCode());
            this.f321.remove(fVar);
        }
    }

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    final void m269(final Context context, c cVar) {
        if (cVar != null) {
            b.m203(3, "JSUpdateLooper", this, "addActiveTracker" + cVar.hashCode());
            if (!this.f323.containsKey(cVar)) {
                this.f323.put(cVar, "");
                if (this.f322 != null && !this.f322.isDone()) {
                    return;
                }
                b.m203(3, "JSUpdateLooper", this, "Starting view update loop");
                this.f322 = this.f320.scheduleWithFixedDelay(new Runnable() { // from class: com.moat.analytics.mobile.iro.h.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            LocalBroadcastManager.getInstance(context.getApplicationContext()).sendBroadcast(new Intent("UPDATE_VIEW_INFO"));
                            if (h.this.f323.isEmpty()) {
                                b.m203(3, "JSUpdateLooper", h.this, "No more active trackers");
                                h.this.f322.cancel(true);
                            }
                        } catch (Exception e) {
                            o.m311(e);
                        }
                    }
                }, 0L, t.m340().f407, TimeUnit.MILLISECONDS);
            }
        }
    }

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    final void m272(c cVar) {
        if (cVar != null) {
            b.m203(3, "JSUpdateLooper", this, "removeActiveTracker" + cVar.hashCode());
            this.f323.remove(cVar);
        }
    }
}
