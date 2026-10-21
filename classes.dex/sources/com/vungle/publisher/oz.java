package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class oz implements Factory<oy> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<oy> b;

    static {
        a = !oz.class.desiredAssertionStatus();
    }

    public oz(MembersInjector<oy> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public oy get() {
        return (oy) MembersInjectors.injectMembers(this.b, new oy());
    }

    public static Factory<oy> a(MembersInjector<oy> membersInjector) {
        return new oz(membersInjector);
    }
}
