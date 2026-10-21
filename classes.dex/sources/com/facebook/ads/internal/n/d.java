package com.facebook.ads.internal.n;

import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public enum d {
    NONE(0),
    ICON(1),
    IMAGE(2),
    VIDEO(3);

    public static final EnumSet<d> e = EnumSet.allOf(d.class);
    private final long f;

    d(long j) {
        this.f = j;
    }

    public long a() {
        return this.f;
    }
}
