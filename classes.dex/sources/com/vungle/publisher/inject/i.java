package com.vungle.publisher.inject;

import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class i implements Factory<Class> {
    static final /* synthetic */ boolean a;
    private final a b;

    static {
        a = !i.class.desiredAssertionStatus();
    }

    public i(a aVar) {
        if (!a && aVar == null) {
            throw new AssertionError();
        }
        this.b = aVar;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Class get() {
        return (Class) Preconditions.checkNotNull(this.b.d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static Factory<Class> a(a aVar) {
        return new i(aVar);
    }
}
