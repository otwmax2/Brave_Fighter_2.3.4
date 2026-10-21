package com.vungle.publisher;

import com.vungle.publisher.m;
import com.vungle.publisher.wj;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class wl implements MembersInjector<wj.a> {
    static final /* synthetic */ boolean a;
    private final Provider<m.a> b;

    static {
        a = !wl.class.desiredAssertionStatus();
    }

    public wl(Provider<m.a> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<wj.a> a(Provider<m.a> provider) {
        return new wl(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(wj.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b.get();
    }
}
