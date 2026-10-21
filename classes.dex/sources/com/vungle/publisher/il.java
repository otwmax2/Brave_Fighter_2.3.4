package com.vungle.publisher;

import com.vungle.publisher.hx;
import com.vungle.publisher.ic;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class il implements MembersInjector<ic> {
    static final /* synthetic */ boolean a;
    private final Provider<ci> b;
    private final Provider<zl> c;
    private final Provider<ic.a> d;
    private final Provider<hx.a> e;

    static {
        a = !il.class.desiredAssertionStatus();
    }

    public il(Provider<ci> provider, Provider<zl> provider2, Provider<ic.a> provider3, Provider<hx.a> provider4) {
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
        if (!a && provider4 == null) {
            throw new AssertionError();
        }
        this.e = provider4;
    }

    public static MembersInjector<ic> a(Provider<ci> provider, Provider<zl> provider2, Provider<ic.a> provider3, Provider<hx.a> provider4) {
        return new il(provider, provider2, provider3, provider4);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(ic icVar) {
        if (icVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        icVar.v = this.b.get();
        icVar.r = this.c.get();
        icVar.s = this.d.get();
        icVar.w = this.e.get();
    }
}
