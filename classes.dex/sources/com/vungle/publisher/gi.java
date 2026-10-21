package com.vungle.publisher;

import com.vungle.publisher.env.r;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class gi implements MembersInjector<ge> {
    static final /* synthetic */ boolean a;
    private final Provider<com.vungle.publisher.env.i> b;
    private final Provider<r> c;

    static {
        a = !gi.class.desiredAssertionStatus();
    }

    public gi(Provider<com.vungle.publisher.env.i> provider, Provider<r> provider2) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
    }

    public static MembersInjector<ge> a(Provider<com.vungle.publisher.env.i> provider, Provider<r> provider2) {
        return new gi(provider, provider2);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(ge geVar) {
        if (geVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        geVar.d = this.b.get();
        geVar.e = this.c.get();
    }
}
