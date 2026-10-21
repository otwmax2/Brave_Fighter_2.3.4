package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class yo implements Factory<yn> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<yn> b;

    static {
        a = !yo.class.desiredAssertionStatus();
    }

    public yo(MembersInjector<yn> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public yn get() {
        return (yn) MembersInjectors.injectMembers(this.b, new yn());
    }

    public static Factory<yn> a(MembersInjector<yn> membersInjector) {
        return new yo(membersInjector);
    }
}
