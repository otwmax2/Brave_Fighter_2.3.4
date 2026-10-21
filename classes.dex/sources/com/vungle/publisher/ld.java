package com.vungle.publisher;

import com.vungle.publisher.lb;
import dagger.MembersInjector;
import dagger.internal.Factory;
import dagger.internal.MembersInjectors;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class ld implements Factory<lb.a> {
    static final /* synthetic */ boolean a;
    private final MembersInjector<lb.a> b;

    static {
        a = !ld.class.desiredAssertionStatus();
    }

    public ld(MembersInjector<lb.a> membersInjector) {
        if (!a && membersInjector == null) {
            throw new AssertionError();
        }
        this.b = membersInjector;
    }

    @Override // javax.inject.Provider
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public lb.a get() {
        return (lb.a) MembersInjectors.injectMembers(this.b, new lb.a());
    }

    public static Factory<lb.a> a(MembersInjector<lb.a> membersInjector) {
        return new ld(membersInjector);
    }
}
