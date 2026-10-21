package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ju implements Factory<jt> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<jt> b;

    static {
        a = !ju.class.desiredAssertionStatus();
    }

    public ju(MembersInjector<jt> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public jt get() {
        return (jt) MembersInjectors.injectMembers(this.b, new jt());
    }

    public static Factory<jt> a(MembersInjector<jt> membersInjector) {
        return new ju(membersInjector);
    }
}
