package com.vungle.publisher;

import com.vungle.publisher.lb;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class le implements MembersInjector<lb.a> {
    static final /* synthetic */ boolean a;
    private final Provider<lb> b;

    static {
        a = !le.class.desiredAssertionStatus();
    }

    public le(Provider<lb> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<lb.a> a(Provider<lb> provider) {
        return new le(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(lb.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b;
    }
}
