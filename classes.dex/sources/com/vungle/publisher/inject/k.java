package com.vungle.publisher.inject;

import android.content.Context;
import dagger.internal.Factory;
import dagger.internal.Preconditions;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class k implements Factory<String> {
    static final /* synthetic */ boolean a;
    private final a b;
    private final Provider<Context> c;

    static {
        a = !k.class.desiredAssertionStatus();
    }

    public k(a aVar, Provider<Context> provider) {
        if (!a && aVar == null) {
            throw new AssertionError();
        }
        this.b = aVar;
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.c = provider;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String get() {
        return (String) Preconditions.checkNotNull(this.b.b(this.c.get()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static Factory<String> a(a aVar, Provider<Context> provider) {
        return new k(aVar, provider);
    }
}
