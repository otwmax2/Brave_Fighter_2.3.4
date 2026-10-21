package com.vungle.publisher;

import dagger.internal.Factory;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public enum mu implements Factory<mq> {
    INSTANCE;

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public mq get() {
        return new mq();
    }

    public static Factory<mq> b() {
        return INSTANCE;
    }
}
