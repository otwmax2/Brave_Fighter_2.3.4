package com.google.android.gms.games.internal.events;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public abstract class EventIncrementCache {
    private boolean WA;
    private int WC;
    private Handler Wz;
    final Object Wy = new Object();
    private HashMap<String, AtomicInteger> WB = new HashMap<>();

    public EventIncrementCache(Looper looper, int i) {
        this.Wz = new Handler(looper);
        this.WC = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzbjs() {
        synchronized (this.Wy) {
            this.WA = false;
            flush();
        }
    }

    public void flush() {
        synchronized (this.Wy) {
            for (Map.Entry<String, AtomicInteger> entry : this.WB.entrySet()) {
                zzq(entry.getKey(), entry.getValue().get());
            }
            this.WB.clear();
        }
    }

    protected abstract void zzq(String str, int i);

    public void zzu(String str, int i) {
        synchronized (this.Wy) {
            if (!this.WA) {
                this.WA = true;
                this.Wz.postDelayed(new Runnable() { // from class: com.google.android.gms.games.internal.events.EventIncrementCache.1
                    @Override // java.lang.Runnable
                    public void run() {
                        EventIncrementCache.this.zzbjs();
                    }
                }, this.WC);
            }
            AtomicInteger atomicInteger = this.WB.get(str);
            if (atomicInteger == null) {
                atomicInteger = new AtomicInteger();
                this.WB.put(str, atomicInteger);
            }
            atomicInteger.addAndGet(i);
        }
    }
}
