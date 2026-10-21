package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class cp implements Factory<co> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<co> b;

    static {
        a = !cp.class.desiredAssertionStatus();
    }

    public cp(MembersInjector<co> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public co get() {
        return (co) MembersInjectors.injectMembers(this.b, new co());
    }

    public static Factory<co> a(MembersInjector<co> membersInjector) {
        return new cp(membersInjector);
    }
}
