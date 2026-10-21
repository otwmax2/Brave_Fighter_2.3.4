package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class lj implements Factory<li> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<li> b;

    static {
        a = !lj.class.desiredAssertionStatus();
    }

    public lj(MembersInjector<li> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public li get() {
        return (li) MembersInjectors.injectMembers(this.b, new li());
    }

    public static Factory<li> a(MembersInjector<li> membersInjector) {
        return new lj(membersInjector);
    }
}
