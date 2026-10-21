package com.vungle.publisher;

import com.vungle.publisher.df;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class dj implements MembersInjector<df> {
    static final /* synthetic */ boolean a;
    private final Provider<ci> b;
    private final Provider<df.a> c;

    static {
        a = !dj.class.desiredAssertionStatus();
    }

    public dj(Provider<ci> provider, Provider<df.a> provider2) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
    }

    public static MembersInjector<df> a(Provider<ci> provider, Provider<df.a> provider2) {
        return new dj(provider, provider2);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(df dfVar) {
        if (dfVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        dfVar.v = this.b.get();
        dfVar.d = this.c.get();
    }
}
