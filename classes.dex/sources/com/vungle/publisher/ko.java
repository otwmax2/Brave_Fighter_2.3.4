package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ko implements Factory<ki> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ki> b;

    static {
        a = !ko.class.desiredAssertionStatus();
    }

    public ko(MembersInjector<ki> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ki get() {
        return (ki) MembersInjectors.injectMembers(this.b, new ki());
    }

    public static Factory<ki> a(MembersInjector<ki> membersInjector) {
        return new ko(membersInjector);
    }
}
