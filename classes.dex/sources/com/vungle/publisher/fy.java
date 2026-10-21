package com.vungle.publisher;

import com.vungle.publisher.el;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class fy implements MembersInjector<el> {
    static final /* synthetic */ boolean a;
    private final Provider<ci> b;
    private final Provider<qg> c;
    private final Provider<el.a> d;

    static {
        a = !fy.class.desiredAssertionStatus();
    }

    public fy(Provider<ci> provider, Provider<qg> provider2, Provider<el.a> provider3) {
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

    public static MembersInjector<el> a(Provider<ci> provider, Provider<qg> provider2, Provider<el.a> provider3) {
        return new fy(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(el elVar) {
        if (elVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        elVar.v = this.b.get();
        elVar.F = this.c.get();
        elVar.z = this.d.get();
    }
}
