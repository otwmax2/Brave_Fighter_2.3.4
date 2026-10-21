package com.vungle.publisher;

import dagger.internal.Factory;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public enum uk implements Factory<uj> {
    INSTANCE;

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public uj get() {
        return new uj();
    }

    public static Factory<uj> b() {
        return INSTANCE;
    }
}
