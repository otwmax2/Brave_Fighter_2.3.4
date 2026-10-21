package com.vungle.publisher;

import com.vungle.publisher.ns;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ny implements MembersInjector<ns.a.C0170a> {
    static final /* synthetic */ boolean a;
    private final Provider<ns.a> b;

    static {
        a = !ny.class.desiredAssertionStatus();
    }

    public ny(Provider<ns.a> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<ns.a.C0170a> a(Provider<ns.a> provider) {
        return new ny(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(ns.a.C0170a c0170a) {
        if (c0170a == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        c0170a.a = this.b.get();
    }
}
