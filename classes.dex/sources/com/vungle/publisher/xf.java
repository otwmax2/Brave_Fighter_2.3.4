package com.vungle.publisher;

import com.vungle.publisher.cn;
import com.vungle.publisher.eb;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class xf implements MembersInjector<xd> {
    static final /* synthetic */ boolean a;
    private final Provider<cn.b> b;
    private final Provider<eb.b> c;

    static {
        a = !xf.class.desiredAssertionStatus();
    }

    public xf(Provider<cn.b> provider, Provider<eb.b> provider2) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
    }

    public static MembersInjector<xd> a(Provider<cn.b> provider, Provider<eb.b> provider2) {
        return new xf(provider, provider2);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(xd xdVar) {
        if (xdVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        xdVar.a = this.b.get();
        xdVar.b = this.c.get();
    }
}
