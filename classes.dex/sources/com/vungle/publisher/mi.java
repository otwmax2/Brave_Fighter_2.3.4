package com.vungle.publisher;

import com.vungle.publisher.mg;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class mi implements MembersInjector<mg.a> {
    static final /* synthetic */ boolean a;
    private final Provider<oy> b;
    private final Provider<nk> c;
    private final Provider<ns> d;

    static {
        a = !mi.class.desiredAssertionStatus();
    }

    public mi(Provider<oy> provider, Provider<nk> provider2, Provider<ns> provider3) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
        if (!a && provider3 == null) {
            throw new AssertionError();
        }
        this.d = provider3;
    }

    public static MembersInjector<mg.a> a(Provider<oy> provider, Provider<nk> provider2, Provider<ns> provider3) {
        return new mi(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(mg.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b;
        aVar.b = this.c;
        aVar.c = this.d;
    }
}
