package com.vungle.publisher;

import dagger.internal.Factory;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public enum ca implements Factory<bz> {
    INSTANCE;

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public bz get() {
        return new bz();
    }

    public static Factory<bz> b() {
        return INSTANCE;
    }
}
