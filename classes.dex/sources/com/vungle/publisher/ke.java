package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ke implements Factory<kd> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<kd> b;

    static {
        a = !ke.class.desiredAssertionStatus();
    }

    public ke(MembersInjector<kd> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public kd get() {
        return (kd) MembersInjectors.injectMembers(this.b, new kd());
    }

    public static Factory<kd> a(MembersInjector<kd> membersInjector) {
        return new ke(membersInjector);
    }
}
