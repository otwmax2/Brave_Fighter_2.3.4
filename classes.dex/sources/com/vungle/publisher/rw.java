package com.vungle.publisher;

import com.vungle.publisher.rv;
import dagger.internal.Factory;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public enum rw implements Factory<rv.a> {
    INSTANCE;

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public rv.a get() {
        return new rv.a();
    }

    public static Factory<rv.a> b() {
        return INSTANCE;
    }
}
