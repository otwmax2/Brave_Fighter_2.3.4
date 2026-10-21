package com.vungle.publisher;

import com.vungle.publisher.m;
import dagger.internal.Factory;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public enum n implements Factory<m.a> {
    INSTANCE;

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public m.a get() {
        return new m.a();
    }

    public static Factory<m.a> b() {
        return INSTANCE;
    }
}
