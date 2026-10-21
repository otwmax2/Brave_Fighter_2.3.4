package com.vungle.publisher;

import dagger.internal.Factory;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public enum zd implements Factory<zc> {
    INSTANCE;

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public zc get() {
        return new zc();
    }

    public static Factory<zc> b() {
        return INSTANCE;
    }
}
