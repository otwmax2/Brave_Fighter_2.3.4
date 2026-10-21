package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class uc implements Factory<ub> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ub> b;

    static {
        a = !uc.class.desiredAssertionStatus();
    }

    public uc(MembersInjector<ub> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ub get() {
        return (ub) MembersInjectors.injectMembers(this.b, new ub());
    }

    public static Factory<ub> a(MembersInjector<ub> membersInjector) {
        return new uc(membersInjector);
    }
}
