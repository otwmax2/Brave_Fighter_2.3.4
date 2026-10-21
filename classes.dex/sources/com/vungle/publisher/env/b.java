package com.vungle.publisher.env;

import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class b implements Factory<a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<a> b;

    static {
        a = !b.class.desiredAssertionStatus();
    }

    public b(MembersInjector<a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a get() {
        return (a) MembersInjectors.injectMembers(this.b, new a());
    }

    public static Factory<a> a(MembersInjector<a> membersInjector) {
        return new b(membersInjector);
    }
}
