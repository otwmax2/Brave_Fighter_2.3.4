package com.vungle.publisher;

import com.vungle.publisher.ys;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class yv implements MembersInjector<ys.a> {
    static final /* synthetic */ boolean a;
    private final Provider<ys> b;

    static {
        a = !yv.class.desiredAssertionStatus();
    }

    public yv(Provider<ys> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<ys.a> a(Provider<ys> provider) {
        return new yv(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(ys.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b.get();
    }
}
