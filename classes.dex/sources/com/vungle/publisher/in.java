package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class in implements Factory<im> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<im> b;

    static {
        a = !in.class.desiredAssertionStatus();
    }

    public in(MembersInjector<im> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public im get() {
        return (im) MembersInjectors.injectMembers(this.b, new im());
    }

    public static Factory<im> a(MembersInjector<im> membersInjector) {
        return new in(membersInjector);
    }
}
