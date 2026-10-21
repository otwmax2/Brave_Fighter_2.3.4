package com.vungle.publisher;

import com.vungle.publisher.fq;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class fu implements MembersInjector<fq> {
    static final /* synthetic */ boolean a;
    private final Provider<fq.a> b;

    static {
        a = !fu.class.desiredAssertionStatus();
    }

    public fu(Provider<fq.a> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<fq> a(Provider<fq.a> provider) {
        return new fu(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(fq fqVar) {
        if (fqVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        fqVar.a = this.b.get();
    }
}
