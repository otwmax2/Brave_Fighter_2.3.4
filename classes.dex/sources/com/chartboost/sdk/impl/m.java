package com.chartboost.sdk.impl;

import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.impl.aj;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class m implements aj.a {
    private final l a;
    private final com.chartboost.sdk.Libraries.f b;
    private final ah c;
    private final ap d;
    private final com.chartboost.sdk.Tracking.a e;
    private final AtomicReference<com.chartboost.sdk.Model.e> f;
    private int g = 1;
    private int h = 0;
    private long i = 0;
    private aj j = null;
    private AtomicInteger k = null;

    public m(l lVar, com.chartboost.sdk.Libraries.f fVar, ah ahVar, ap apVar, com.chartboost.sdk.Tracking.a aVar, AtomicReference<com.chartboost.sdk.Model.e> atomicReference) {
        this.a = lVar;
        this.b = fVar;
        this.c = ahVar;
        this.d = apVar;
        this.e = aVar;
        this.f = atomicReference;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0047 A[Catch: Exception -> 0x005c, all -> 0x0078, TryCatch #0 {Exception -> 0x005c, blocks: (B:4:0x0004, B:6:0x001c, B:8:0x0020, B:13:0x0029, B:15:0x002e, B:17:0x0036, B:18:0x0043, B:20:0x0047, B:22:0x0054, B:33:0x007b, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x00cf, B:40:0x00d8, B:42:0x00dc, B:43:0x0117, B:10:0x0024), top: B:45:0x0004, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x008c A[Catch: Exception -> 0x005c, all -> 0x0078, TryCatch #0 {Exception -> 0x005c, blocks: (B:4:0x0004, B:6:0x001c, B:8:0x0020, B:13:0x0029, B:15:0x002e, B:17:0x0036, B:18:0x0043, B:20:0x0047, B:22:0x0054, B:33:0x007b, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x00cf, B:40:0x00d8, B:42:0x00dc, B:43:0x0117, B:10:0x0024), top: B:45:0x0004, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0090 A[Catch: Exception -> 0x005c, all -> 0x0078, TryCatch #0 {Exception -> 0x005c, blocks: (B:4:0x0004, B:6:0x001c, B:8:0x0020, B:13:0x0029, B:15:0x002e, B:17:0x0036, B:18:0x0043, B:20:0x0047, B:22:0x0054, B:33:0x007b, B:34:0x008c, B:36:0x0090, B:38:0x0094, B:39:0x00cf, B:40:0x00d8, B:42:0x00dc, B:43:0x0117, B:10:0x0024), top: B:45:0x0004, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void a() {
        /*
            Method dump skipped, instruction units count: 288
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chartboost.sdk.impl.m.a():void");
    }

    private void a(com.chartboost.sdk.Model.e eVar) {
        boolean z = eVar.y;
        if ((this.h == 1 && !(!z && eVar.e)) || (this.h == 2 && !z)) {
            CBLogging.a("Prefetcher", "Change state to IDLE");
            this.g = 1;
            this.h = 0;
            this.i = 0L;
            this.j = null;
            AtomicInteger atomicInteger = this.k;
            this.k = null;
            if (atomicInteger != null) {
                this.a.a(atomicInteger);
            }
        }
    }

    public synchronized void b() {
        if (this.g == 2) {
            CBLogging.a("Prefetcher", "Change state to COOLDOWN");
            this.g = 4;
            this.j = null;
        } else if (this.g == 3) {
            CBLogging.a("Prefetcher", "Change state to COOLDOWN");
            this.g = 4;
            AtomicInteger atomicInteger = this.k;
            this.k = null;
            if (atomicInteger != null) {
                this.a.a(atomicInteger);
            }
        }
    }

    @Override // com.chartboost.sdk.impl.aj.a
    public synchronized void a(aj ajVar, JSONObject jSONObject) {
        try {
            if (this.g == 2 && ajVar == this.j) {
                CBLogging.a("Prefetcher", "Change state to DOWNLOAD_ASSETS");
                this.g = 3;
                this.j = null;
                this.k = new AtomicInteger();
                if (jSONObject != null) {
                    CBLogging.a("Prefetcher", "Got Asset list for Prefetch from server :)" + jSONObject);
                    if (this.h == 1) {
                        this.a.a(3, com.chartboost.sdk.Model.b.a(jSONObject), this.k, null);
                    } else if (this.h == 2) {
                        this.a.a(3, com.chartboost.sdk.Model.b.a(jSONObject, this.f.get().v), this.k, null);
                    }
                }
            }
        } catch (Exception e) {
            com.chartboost.sdk.Tracking.a.a(getClass(), "onSuccess", e);
        }
    }

    @Override // com.chartboost.sdk.impl.aj.a
    public synchronized void a(aj ajVar, CBError cBError) {
        if (this.g == 2 && ajVar == this.j) {
            this.j = null;
            CBLogging.a("Prefetcher", "Change state to COOLDOWN");
            this.g = 4;
        }
    }
}
