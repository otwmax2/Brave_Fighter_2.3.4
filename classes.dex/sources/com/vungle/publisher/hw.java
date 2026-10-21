package com.vungle.publisher;

import com.vungle.publisher.hs;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class hw implements MembersInjector<hs> {
    static final /* synthetic */ boolean a;
    private final Provider<ci> b;
    private final Provider<hs.a> c;

    static {
        a = !hw.class.desiredAssertionStatus();
    }

    public hw(Provider<ci> provider, Provider<hs.a> provider2) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
    }

    public static MembersInjector<hs> a(Provider<ci> provider, Provider<hs.a> provider2) {
        return new hw(provider, provider2);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(hs hsVar) {
        if (hsVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        hsVar.v = this.b.get();
        hsVar.d = this.c.get();
    }
}
