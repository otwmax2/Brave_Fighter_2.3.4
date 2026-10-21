package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class rs implements Factory<rr> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<rr> b;

    static {
        a = !rs.class.desiredAssertionStatus();
    }

    public rs(MembersInjector<rr> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public rr get() {
        return (rr) MembersInjectors.injectMembers(this.b, new rr());
    }

    public static Factory<rr> a(MembersInjector<rr> membersInjector) {
        return new rs(membersInjector);
    }
}
