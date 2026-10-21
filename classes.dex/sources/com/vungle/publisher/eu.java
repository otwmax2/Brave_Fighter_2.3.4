package com.vungle.publisher;

import com.vungle.publisher.er;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class eu implements MembersInjector<er.a> {
    static final /* synthetic */ boolean a;
    private final Provider<er> b;

    static {
        a = !eu.class.desiredAssertionStatus();
    }

    public eu(Provider<er> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<er.a> a(Provider<er> provider) {
        return new eu(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(er.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b.get();
    }
}
