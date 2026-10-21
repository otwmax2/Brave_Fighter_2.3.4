package com.vungle.publisher;

import com.vungle.publisher.ew;
import com.vungle.publisher.fq;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ft implements MembersInjector<fq.a> {
    static final /* synthetic */ boolean a;
    private final Provider<fq> b;
    private final Provider<ew.a> c;

    static {
        a = !ft.class.desiredAssertionStatus();
    }

    public ft(Provider<fq> provider, Provider<ew.a> provider2) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
    }

    public static MembersInjector<fq.a> a(Provider<fq> provider, Provider<ew.a> provider2) {
        return new ft(provider, provider2);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(fq.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b;
        aVar.b = this.c.get();
    }
}
