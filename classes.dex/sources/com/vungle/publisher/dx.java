package com.vungle.publisher;

import dagger.internal.Factory;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public enum dx implements Factory<dw> {
    INSTANCE;

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public dw get() {
        return new dw();
    }

    public static Factory<dw> b() {
        return INSTANCE;
    }
}
