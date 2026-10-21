package com.vungle.publisher;

import com.vungle.publisher.dw;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class dz implements MembersInjector<dw.a> {
    static final /* synthetic */ boolean a;
    private final Provider<dw> b;

    static {
        a = !dz.class.desiredAssertionStatus();
    }

    public dz(Provider<dw> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<dw.a> a(Provider<dw> provider) {
        return new dz(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(dw.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b;
    }
}
