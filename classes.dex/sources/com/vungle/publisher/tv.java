package com.vungle.publisher;

import com.vungle.publisher.ts;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class tv implements MembersInjector<ts.a> {
    static final /* synthetic */ boolean a;
    private final Provider<ts> b;

    static {
        a = !tv.class.desiredAssertionStatus();
    }

    public tv(Provider<ts> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<ts.a> a(Provider<ts> provider) {
        return new tv(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(ts.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b;
    }
}
