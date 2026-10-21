package com.vungle.publisher;

import com.vungle.publisher.yn;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class yq implements MembersInjector<yn.a> {
    static final /* synthetic */ boolean a;
    private final Provider<yn> b;

    static {
        a = !yq.class.desiredAssertionStatus();
    }

    public yq(Provider<yn> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<yn.a> a(Provider<yn> provider) {
        return new yq(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(yn.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b.get();
    }
}
