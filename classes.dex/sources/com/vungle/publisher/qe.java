package com.vungle.publisher;

import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class qe implements MembersInjector<py> {
    static final /* synthetic */ boolean a;
    private final Provider<qg> b;
    private final Provider<bw> c;

    static {
        a = !qe.class.desiredAssertionStatus();
    }

    public qe(Provider<qg> provider, Provider<bw> provider2) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
    }

    public static MembersInjector<py> a(Provider<qg> provider, Provider<bw> provider2) {
        return new qe(provider, provider2);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(py pyVar) {
        if (pyVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        pyVar.eventBus = this.b.get();
        pyVar.b = this.c.get();
    }
}
