package com.google.android.gms.games.internal.events;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class EventIncrementManager {
    private final AtomicReference<EventIncrementCache> WE = new AtomicReference<>();

    public void flush() {
        EventIncrementCache eventIncrementCache = this.WE.get();
        if (eventIncrementCache != null) {
            eventIncrementCache.flush();
        }
    }

    protected abstract EventIncrementCache zzbja();

    public void zzn(String str, int i) {
        EventIncrementCache eventIncrementCacheZzbja = this.WE.get();
        if (eventIncrementCacheZzbja == null) {
            eventIncrementCacheZzbja = zzbja();
            if (!this.WE.compareAndSet(null, eventIncrementCacheZzbja)) {
                eventIncrementCacheZzbja = this.WE.get();
            }
        }
        eventIncrementCacheZzbja.zzu(str, i);
    }
}
