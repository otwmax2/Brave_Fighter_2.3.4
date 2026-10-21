package com.vungle.publisher;

import android.content.Context;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class zh implements MembersInjector<zf> {
    static final /* synthetic */ boolean a;
    private final Provider<Context> b;
    private final Provider<com.vungle.publisher.env.o> c;

    static {
        a = !zh.class.desiredAssertionStatus();
    }

    public zh(Provider<Context> provider, Provider<com.vungle.publisher.env.o> provider2) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
    }

    public static MembersInjector<zf> a(Provider<Context> provider, Provider<com.vungle.publisher.env.o> provider2) {
        return new zh(provider, provider2);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(zf zfVar) {
        if (zfVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        zfVar.a = this.b.get();
        zfVar.b = this.c.get();
    }
}
