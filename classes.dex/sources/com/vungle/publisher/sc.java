package com.vungle.publisher;

import com.vungle.publisher.rz;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class sc implements MembersInjector<rz.a> {
    static final /* synthetic */ boolean a;
    private final Provider<rz> b;

    static {
        a = !sc.class.desiredAssertionStatus();
    }

    public sc(Provider<rz> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<rz.a> a(Provider<rz> provider) {
        return new sc(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(rz.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b;
    }
}
