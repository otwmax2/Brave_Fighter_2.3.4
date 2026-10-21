package com.vungle.publisher;

import com.vungle.publisher.m;
import com.vungle.publisher.wd;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class wf implements MembersInjector<wd.a> {
    static final /* synthetic */ boolean a;
    private final Provider<m.a> b;

    static {
        a = !wf.class.desiredAssertionStatus();
    }

    public wf(Provider<m.a> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<wd.a> a(Provider<m.a> provider) {
        return new wf(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(wd.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b.get();
    }
}
