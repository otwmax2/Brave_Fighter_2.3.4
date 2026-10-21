package com.vungle.publisher;

import com.vungle.publisher.oy;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class pd implements MembersInjector<oy.a.C0171a> {
    static final /* synthetic */ boolean a;
    private final Provider<oy.a> b;

    static {
        a = !pd.class.desiredAssertionStatus();
    }

    public pd(Provider<oy.a> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<oy.a.C0171a> a(Provider<oy.a> provider) {
        return new pd(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(oy.a.C0171a c0171a) {
        if (c0171a == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        c0171a.a = this.b.get();
    }
}
