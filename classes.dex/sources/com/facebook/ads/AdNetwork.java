package com.facebook.ads;

import com.facebook.ads.internal.n.c;

/* JADX INFO: loaded from: classes.dex */
public enum AdNetwork {
    AN(c.AN),
    ADMOB(c.ADMOB),
    FLURRY(c.FLURRY),
    INMOBI(c.INMOBI);

    private final c a;

    AdNetwork(c cVar) {
        this.a = cVar;
    }

    public static AdNetwork fromInternalAdNetwork(c cVar) {
        if (cVar == null) {
            return AN;
        }
        switch (cVar) {
        }
        return AN;
    }
}
