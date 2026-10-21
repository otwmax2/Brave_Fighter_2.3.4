package com.vungle.publisher;

import com.vungle.publisher.jt;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class jw implements MembersInjector<jt.a> {
    static final /* synthetic */ boolean a;
    private final Provider<jt> b;

    static {
        a = !jw.class.desiredAssertionStatus();
    }

    public jw(Provider<jt> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<jt.a> a(Provider<jt> provider) {
        return new jw(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(jt.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b.get();
    }
}
