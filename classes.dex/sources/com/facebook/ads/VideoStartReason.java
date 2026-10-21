package com.facebook.ads;

import com.facebook.ads.internal.view.e.a.a;

/* JADX INFO: loaded from: classes.dex */
public enum VideoStartReason {
    NOT_STARTED(a.NOT_STARTED),
    USER_STARTED(a.USER_STARTED),
    AUTO_STARTED(a.AUTO_STARTED);

    private final a a;

    VideoStartReason(a aVar) {
        this.a = aVar;
    }

    a a() {
        return this.a;
    }
}
