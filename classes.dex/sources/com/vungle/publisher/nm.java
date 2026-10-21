package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class nm implements Factory<nk> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<nk> b;

    static {
        a = !nm.class.desiredAssertionStatus();
    }

    public nm(MembersInjector<nk> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public nk get() {
        return (nk) MembersInjectors.injectMembers(this.b, new nk());
    }

    public static Factory<nk> a(MembersInjector<nk> membersInjector) {
        return new nm(membersInjector);
    }
}
