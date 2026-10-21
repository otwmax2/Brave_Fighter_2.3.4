package com.vungle.publisher;

import com.vungle.publisher.li;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ll implements MembersInjector<li.a> {
    static final /* synthetic */ boolean a;
    private final Provider<li> b;

    static {
        a = !ll.class.desiredAssertionStatus();
    }

    public ll(Provider<li> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<li.a> a(Provider<li> provider) {
        return new ll(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(li.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b;
    }
}
