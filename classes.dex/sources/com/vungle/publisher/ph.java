package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public abstract class ph implements qf {
    private final long a;

    protected ph() {
        this(System.currentTimeMillis());
    }

    protected ph(long j) {
        this.a = j;
    }

    @Override // com.vungle.publisher.qf
    public long e() {
        return this.a;
    }
}
