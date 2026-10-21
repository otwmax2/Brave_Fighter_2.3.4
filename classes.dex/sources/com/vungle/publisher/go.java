package com.vungle.publisher;

import com.vungle.publisher.gl;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class go implements MembersInjector<gl.a> {
    static final /* synthetic */ boolean a;
    private final Provider<gl> b;

    static {
        a = !go.class.desiredAssertionStatus();
    }

    public go(Provider<gl> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<gl.a> a(Provider<gl> provider) {
        return new go(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(gl.a aVar) {
        if (aVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        aVar.a = this.b.get();
    }
}
