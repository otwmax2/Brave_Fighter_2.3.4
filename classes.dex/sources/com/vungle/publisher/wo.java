package com.vungle.publisher;

import com.vungle.publisher.m;
import com.vungle.publisher.wm;
import com.vungle.publisher.wp;
import com.vungle.publisher.wv;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class wo implements MembersInjector<wm.a> {
    static final /* synthetic */ boolean a;
    private final Provider<m.a> b;
    private final Provider<wp.a.C0172a> c;
    private final Provider<wv.a> d;

    static {
        a = !wo.class.desiredAssertionStatus();
    }

    public wo(Provider<m.a> provider, Provider<wp.a.C0172a> provider2, Provider<wv.a> provider3) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
        if (!a && provider2 == null) {
            throw new AssertionError();
        }
        this.c = provider2;
        if (!a && provider3 == null) {
            throw new AssertionError();
        }
        this.d = provider3;
    }

    public static MembersInjector<wm.a> a(Provider<m.a> provider, Provider<wp.a.C0172a> provider2, Provider<wv.a> provider3) {
        return new wo(provider, provider2, provider3);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(wm.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b.get();
        aVar.c = this.c.get();
        aVar.b = this.d.get();
    }
}
