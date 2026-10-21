package com.vungle.publisher;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class es implements Factory<er> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<er> b;

    static {
        a = !es.class.desiredAssertionStatus();
    }

    public es(MembersInjector<er> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public er get() {
        return (er) MembersInjectors.injectMembers(this.b, new er());
    }

    public static Factory<er> a(MembersInjector<er> membersInjector) {
        return new es(membersInjector);
    }
}
