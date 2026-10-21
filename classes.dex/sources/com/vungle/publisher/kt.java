package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class kt implements Factory<ks> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<ks> b;

    static {
        a = !kt.class.desiredAssertionStatus();
    }

    public kt(MembersInjector<ks> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public ks get() {
        return (ks) MembersInjectors.injectMembers(this.b, new ks());
    }

    public static Factory<ks> a(MembersInjector<ks> membersInjector) {
        return new kt(membersInjector);
    }
}
