package com.vungle.publisher;

import dagger.internal.Factory;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public enum dt implements Factory<ds> {
    INSTANCE;

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ds get() {
        return new ds();
    }

    public static Factory<ds> b() {
        return INSTANCE;
    }
}
