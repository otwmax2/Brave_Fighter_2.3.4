package com.vungle.publisher.inject;

import com.vungle.publisher.env.WrapperFramework;
import dagger.internal.Factory;
import dagger.internal.Preconditions;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class p implements Factory<WrapperFramework> {
    static final /* synthetic */ boolean a;
    private final a b;

    static {
        a = !p.class.desiredAssertionStatus();
    }

    public p(a aVar) {
        if (!a && aVar == null) {
            throw new AssertionError();
        }
        this.b = aVar;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public WrapperFramework get() {
        return (WrapperFramework) Preconditions.checkNotNull(this.b.f(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static Factory<WrapperFramework> a(a aVar) {
        return new p(aVar);
    }
}
