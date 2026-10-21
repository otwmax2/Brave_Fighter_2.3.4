package com.vungle.publisher;

import com.vungle.publisher.hs;
import com.vungle.publisher.im;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ip implements MembersInjector<im.a> {
    static final /* synthetic */ boolean a;
    private final Provider<im> b;
    private final Provider<hs.a> c;

    static {
        a = !ip.class.desiredAssertionStatus();
    }

    public ip(Provider<im> provider, Provider<hs.a> provider2) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
    }

    public static MembersInjector<im.a> a(Provider<im> provider, Provider<hs.a> provider2) {
        return new ip(provider, provider2);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(im.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b;
        aVar.b = this.c.get();
    }
}
