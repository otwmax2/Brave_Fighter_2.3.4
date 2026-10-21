package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class nu implements Factory<ns> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ns> b;

    static {
        a = !nu.class.desiredAssertionStatus();
    }

    public nu(MembersInjector<ns> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ns get() {
        return (ns) MembersInjectors.injectMembers(this.b, new ns());
    }

    public static Factory<ns> a(MembersInjector<ns> membersInjector) {
        return new nu(membersInjector);
    }
}
