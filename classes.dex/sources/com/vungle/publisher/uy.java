package com.vungle.publisher;

import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class uy implements MembersInjector<uw> {
    static final /* synthetic */ boolean a;
    private final Provider<uj> b;

    static {
        a = !uy.class.desiredAssertionStatus();
    }

    public uy(Provider<uj> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<uw> a(Provider<uj> provider) {
        return new uy(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(uw uwVar) {
        if (uwVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        uwVar.a = this.b.get();
    }
}
