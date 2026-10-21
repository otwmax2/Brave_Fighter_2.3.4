package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class lq implements Factory<lp> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<lp> b;

    static {
        a = !lq.class.desiredAssertionStatus();
    }

    public lq(MembersInjector<lp> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public lp get() {
        return (lp) MembersInjectors.injectMembers(this.b, new lp());
    }

    public static Factory<lp> a(MembersInjector<lp> membersInjector) {
        return new lq(membersInjector);
    }
}
