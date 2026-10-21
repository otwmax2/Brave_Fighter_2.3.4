package com.vungle.publisher;

import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class zs {
    private final AtomicInteger a = new AtomicInteger();

    public int a(int i, int i2) {
        int i3;
        int iA;
        do {
            i3 = this.a.get();
            iA = za.a(i3, i, i2);
        } while (!this.a.compareAndSet(i3, iA));
        return iA;
    }
}
