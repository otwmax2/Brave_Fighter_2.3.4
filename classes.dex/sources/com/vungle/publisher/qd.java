package com.vungle.publisher;

import com.vungle.publisher.py;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class qd implements MembersInjector<py.a> {
    static final /* synthetic */ boolean a;
    private final Provider<py> b;

    static {
        a = !qd.class.desiredAssertionStatus();
    }

    public qd(Provider<py> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<py.a> a(Provider<py> provider) {
        return new qd(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(py.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b;
    }
}
