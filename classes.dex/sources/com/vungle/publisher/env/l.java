package com.vungle.publisher.env;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class l implements Factory<k> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<k> b;

    static {
        a = !l.class.desiredAssertionStatus();
    }

    public l(MembersInjector<k> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public k get() {
        return (k) MembersInjectors.injectMembers(this.b, new k());
    }

    public static Factory<k> a(MembersInjector<k> membersInjector) {
        return new l(membersInjector);
    }
}
