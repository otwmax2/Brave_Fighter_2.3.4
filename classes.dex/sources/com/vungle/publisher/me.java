package com.vungle.publisher;

import com.vungle.publisher.mg;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
abstract class me<A extends mg<?>> extends pi {
    protected A a;

    me() {
    }

    public void onEvent(bg event) {
        this.a.a(false, false);
    }

    public void onEvent(aq event) {
        this.a.b(event.a());
    }
}
