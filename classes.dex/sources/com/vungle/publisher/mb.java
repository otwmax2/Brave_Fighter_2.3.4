package com.vungle.publisher;

import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class mb implements MembersInjector<lz> {
    static final /* synthetic */ boolean a;
    private final Provider<qg> b;
    private final Provider<mc> c;

    static {
        a = !mb.class.desiredAssertionStatus();
    }

    public mb(Provider<qg> provider, Provider<mc> provider2) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
    }

    public static MembersInjector<lz> a(Provider<qg> provider, Provider<mc> provider2) {
        return new mb(provider, provider2);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(lz lzVar) {
        if (lzVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        lzVar.a = this.b.get();
        lzVar.b = this.c.get();
    }
}
