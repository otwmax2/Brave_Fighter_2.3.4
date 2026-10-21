package com.vungle.publisher;

import com.vungle.publisher.nk;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class nq implements MembersInjector<nk.a.C0169a> {
    static final /* synthetic */ boolean a;
    private final Provider<nk.a> b;

    static {
        a = !nq.class.desiredAssertionStatus();
    }

    public nq(Provider<nk.a> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<nk.a.C0169a> a(Provider<nk.a> provider) {
        return new nq(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(nk.a.C0169a c0169a) {
        if (c0169a == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        c0169a.a = this.b.get();
    }
}
