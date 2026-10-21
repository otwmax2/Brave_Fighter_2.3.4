package com.vungle.publisher;

import com.vungle.publisher.ns;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class nz implements MembersInjector<ns.a> {
    static final /* synthetic */ boolean a;
    private final Provider<qg> b;

    static {
        a = !nz.class.desiredAssertionStatus();
    }

    public nz(Provider<qg> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<ns.a> a(Provider<qg> provider) {
        return new nz(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(ns.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.eventBus = this.b.get();
    }
}
