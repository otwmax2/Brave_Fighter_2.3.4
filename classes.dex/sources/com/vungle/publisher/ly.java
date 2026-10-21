package com.vungle.publisher;

import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ly implements MembersInjector<lw> {
    static final /* synthetic */ boolean a;
    private final Provider<qg> b;

    static {
        a = !ly.class.desiredAssertionStatus();
    }

    public ly(Provider<qg> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<lw> a(Provider<qg> provider) {
        return new ly(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(lw lwVar) {
        if (lwVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        lwVar.a = this.b.get();
    }
}
