package com.vungle.publisher;

import com.vungle.publisher.er;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class et implements Factory<er.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<er.a> b;

    static {
        a = !et.class.desiredAssertionStatus();
    }

    public et(MembersInjector<er.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public er.a get() {
        return (er.a) MembersInjectors.injectMembers(this.b, new er.a());
    }

    public static Factory<er.a> a(MembersInjector<er.a> membersInjector) {
        return new et(membersInjector);
    }
}
