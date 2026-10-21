package com.vungle.publisher;

import com.vungle.publisher.ks;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class kw implements MembersInjector<ks> {
    static final /* synthetic */ boolean a;
    private final Provider<ks.a> b;

    static {
        a = !kw.class.desiredAssertionStatus();
    }

    public kw(Provider<ks.a> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<ks> a(Provider<ks.a> provider) {
        return new kw(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(ks ksVar) {
        if (ksVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        ksVar.a = this.b.get();
    }
}
