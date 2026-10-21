package com.vungle.publisher;

import com.vungle.publisher.gv;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class he implements MembersInjector<gv> {
    static final /* synthetic */ boolean a;
    private final Provider<ci> b;
    private final Provider<zl> c;
    private final Provider<gv.a> d;

    static {
        a = !he.class.desiredAssertionStatus();
    }

    public he(Provider<ci> provider, Provider<zl> provider2, Provider<gv.a> provider3) {
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

    public static MembersInjector<gv> a(Provider<ci> provider, Provider<zl> provider2, Provider<gv.a> provider3) {
        return new he(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(gv gvVar) {
        if (gvVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        gvVar.v = this.b.get();
        gvVar.r = this.c.get();
        gvVar.s = this.d.get();
    }
}
