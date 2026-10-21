package com.vungle.publisher;

import dagger.internal.Factory;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public enum zm implements Factory<zl> {
    INSTANCE;

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public zl get() {
        return new zl();
    }

    public static Factory<zl> b() {
        return INSTANCE;
    }
}
